Profile: SafrMeasureReportBundle
Parent: Bundle
Id: us-safr-measurereport-bundle
Title: "US SAFR Measure Report Bundle"
Description: "This profile defines a valid Submission Bundle to NHSN with all resources contained within. The Bundle is comprised of entry slices representing the data 
submitting organization, submitting device, individual MeasureReports."
* obeys bundle-no-modifier-extensions and bundle-contain-all-measurereport-references
* . ^short = "A Bundle contains a collection of Resources."
* type = #collection (exactly)
* entry ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #open
  * ^short = "An entry in the Bundle; will have a resource or information"
  * ^slicing.description = ""
  * ^slicing.ordered = false
* entry contains
    submitting-organization 1..* and
    submitting-device 0..* and
    measurereport 1..*
* entry[submitting-organization]
  * ^short = "The Submitting Organization: the organization that is the source of the data"
  * resource 1..
  * resource only USSafrSubmittingOrganization
    * ^short = "Bundle entry for submitting organization"
* entry[submitting-device]
  * ^short = "The Submitting Device: the device that is the source of the data"
  * resource 1..
  * resource only CRMISoftwareSystemDevice|1.0.0
    * ^type[0].profile[0] = Canonical(CRMISoftwareSystemDevice|1.0.0)
    * ^short = "Bundle entry for submitting device"
* entry[measurereport]
  * ^short = "Measure Report: each MeasureReport refers to one Patient and one measure included in the Measure Report List"
  * resource 1..
  * resource only DEQMSummaryMeasureReportProfile // or DEQMIndividualMeasureReportProfile
    * ^short = "Bundle entry for a Measure Report"

