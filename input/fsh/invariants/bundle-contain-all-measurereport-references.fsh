Invariant: bundle-contain-all-measurereport-references
Description: "All referenced resources SHALL be contained within the Bundle. 
If this fails, use the following FHIRPath expression to discover missing resources: 
Bundle.entry.resource.descendants().reference.where($this.startsWith('#').not()).where((%resource.entry.fullUrl.join('|')&'|').contains(($this&'|')).not())"
Expression: "Bundle.entry.resource.descendants().reference.where($this.startsWith('#').not()).all((%resource.entry.fullUrl.join('|')&'|').contains(($this&'|')))"
Severity: #error