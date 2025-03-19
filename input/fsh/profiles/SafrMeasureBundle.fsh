Profile: USSafrMeasureBundle
Parent: Bundle
Id: us-safr-measure-bundle
Title: "US SAFR Measure Bundle"
Description: "This profile defines a Bundle provided by the MeasureServer containing a Measure resource and enables the inclusion of all related resources (ValueSet, Library, etc.)."
* obeys bundle-no-modifier-extensions and bundle-contain-all-measurereport-references
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = ""
* entry ^slicing.ordered = false
* entry contains
    measure 1..1
* entry[measure] ^short = "The Measure resource"
  * resource 1..
  * resource only CQFMContinuousVariableMeasure|4.0.0
  * ^short = "Bundle entry for the Measure resource"
