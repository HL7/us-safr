#!/usr/bin/env python3
"""
Generate Group lines for each concept.code in a FHIR CodeSystem JSON.

Usage examples:
  python gen_bed_capacity_groups.py --input ./CodeSystem-us-safr-bed-capacity-example-codes.json --sort none --verbose
  python gen_bed_capacity_groups.py --input https://example.org/CodeSystem.json --sort asc

Notes:
- Preserves the traversal order of codes when --sort none (assumes no duplicate codes in the JSON).
- Adds an Initial Population block per group, as requested.
- Detects and warns if the fetched content looks like HTML instead of JSON.
"""

import argparse
import json
import sys
from urllib.parse import urlparse


def fetch_text(src: str) -> str:
    """Return text from a URL or local file. Falls back to urllib if 'requests' is absent."""
    parsed = urlparse(src)
    if parsed.scheme in ("http", "https"):
        try:
            import requests  # type: ignore
            resp = requests.get(src, timeout=30)
            resp.raise_for_status()
            return resp.text
        except Exception:
            import urllib.request
            with urllib.request.urlopen(src, timeout=30) as r:  # nosec - user-controlled URL by design
                return r.read().decode("utf-8", errors="replace")
    else:
        with open(src, "r", encoding="utf-8") as f:
            return f.read()


def extract_codes_in_order(concepts):
    """Recursively collect concept.code values in traversal order. Assumes no duplicates."""
    ordered = []
    if not isinstance(concepts, list):
        return ordered
    for c in concepts:
        if isinstance(c, dict):
            code = c.get("code")
            if isinstance(code, str):
                code = code.strip()
                if code:
                    ordered.append(code)
            if isinstance(c.get("concept"), list):
                ordered.extend(extract_codes_in_order(c["concept"]))
    return ordered


def main():
    parser = argparse.ArgumentParser(
        description="Generate Group lines from a FHIR CodeSystem JSON (concept.code)."
    )
    parser.add_argument(
        "--input",
        required=True,
        help="Path or URL to the CodeSystem JSON",
    )
    parser.add_argument(
        "--sort",
        choices=["asc", "none"],
        default="asc",
        help="Sort output codes alphabetically (default: asc). Use 'none' to preserve traversal order.",
    )
    parser.add_argument(
        "--verbose",
        action="store_true",
        help="Print debug information to stderr.",
    )
    parser.add_argument(
        "--base-url",
        default="http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes",
        help="Override the base CodeSystem URL used in group[=].code (#CODE is appended).",
    )
    parser.add_argument(
        "--header-style",
        choices=["plain", "angle"],
        default="plain",
        help="Header format: 'plain' -> ///////////// Group CODE ///////////// (default); 'angle' -> ///////////// Group <<<CODE>>>/////////////",
    )
    parser.add_argument(
        "--with-pop",
        choices=["true", "false"],
        default="true",
        help="Emit the Initial Population block (default: true).",
    )

    args = parser.parse_args()
    with_pop = args.with_pop.lower() == "true"

    # Fetch & parse
    try:
        raw = fetch_text(args.input)
        if args.verbose:
            print(f"[info] fetched from: {args.input}", file=sys.stderr)
            print(f"[info] content length: {len(raw)} chars", file=sys.stderr)
        looks_like_html = "<html" in raw.lower() or raw.lstrip().startswith("<")
        if looks_like_html:
            print(
                "[error] The fetched content looks like HTML (not JSON). Save the raw JSON locally or use a raw JSON endpoint.",
                file=sys.stderr,
            )
            sys.exit(1)
        data = json.loads(raw)
    except Exception as e:
        print(f"[error] Failed to read/parse JSON from '{args.input}': {e}", file=sys.stderr)
        sys.exit(1)

    concepts = data.get("concept")
    if not isinstance(concepts, list):
        print("[error] No 'concept' array found in the JSON (is this a FHIR CodeSystem resource?)", file=sys.stderr)
        sys.exit(2)

    codes = extract_codes_in_order(concepts)
    if not codes:
        print("[error] Found zero 'concept.code' entries.", file=sys.stderr)
        sys.exit(3)

    if args.sort == "asc":
        codes.sort(key=lambda s: s.lower())

    if args.verbose:
        print(f"[info] codes found: {len(codes)}", file=sys.stderr)

    # Emit
    for code in codes:
        if args.header_style == "angle":
            print(f"///////////// Group <<<{code}>>>/////////////")
        else:
            print(f"///////////// Group {code} /////////////")
        print(f'* group[+].id = "{code}-bed-capacity-group"')
        print(f"* group[=].code = {args.base_url}#{code}")
        if with_pop:
            print(f'* group[=].population[+].id = "{code}-initial-population"')
            print('* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"')
            print("* group[=].population[=].count = 0")
        print()


if __name__ == "__main__":
    main()
