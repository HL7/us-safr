

// TODO, try SANER Measure Profile for the Measure Profile these are using - https://build.fhir.org/ig/HL7/fhir-saner/StructureDefinition-PublicHealthMeasure.html
/*

Instance: bed-capacity-measurereport-bundle-example1
InstanceOf: SafrMeasureReportBundle
Title: "Bundle - Hospital Bed Capacity MeasureReport Bundle Example 1"
Description: "This Bundle resource is an example of an Bed Capacity MeasureReport Bundle for the US SAFR IG. This example includes MeasureReport from two different Individual MeasureReports representing two different kinds of location."
Usage: #example
* type = #collection
* entry[submitting-organization][+].fullUrl = "http://example.org/fhir/Organization/organization-example-submitting-organization"
* entry[submitting-organization][=].resource = organization-example-submitting-organization

* entry[submitting-device][+].fullUrl = "http://example.org/fhir/Device/cqf-tooling"
* entry[submitting-device][=].resource = cqf-tooling

* entry[measurereport][+].fullUrl = "http://example.org/fhir/MeasureReport/bed-capacity-measurereport-example-hosp"
* entry[measurereport][=].resource = bed-capacity-measurereport-example-hosp

* entry[measurereport][+].fullUrl = "http://example.org/fhir/MeasureReport/bed-capacity-measurereport-example-ipf"
* entry[measurereport][=].resource = bed-capacity-measurereport-example-ipf



*/
Instance: hosp-location-example-bed-capacity
InstanceOf: QICoreLocation|6.0.0
Title: "Location - Entire Hospital"
Description: "Hospital-wide"
Usage: #inline
* meta.profile[+] = "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-location|6.0.0"
* identifier.system = "http://www.example.org/location"
* identifier.value = "123"
* status = #active
* name = "XYZ Hospital"
* type = SAFRHealthareCapacityCSExample#HOSP "Hospital"

Instance: ipf-location-example-bed-capacity
InstanceOf: QICoreLocation|6.0.0
Title: "Location - Inpatient Psychiatric"
Description: "Inpatient Psych (IPF)"
Usage: #inline
* meta.profile[+] = "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-location|6.0.0"
* identifier.system = "http://www.example.org/location"
* identifier.value = "456"
* status = #active
* name = "Inpatient Psych at XYZ Hospital"
* type = SAFRHealthareCapacityCSExample#IPF "Inpatient Psychiatric"

Instance: chld-location-example-bed-capacity
InstanceOf: QICoreLocation|6.0.0
Title: "Location - Children's or Pediatrics Dept."
Description: "Pediatric (CHLD)"
Usage: #inline
* meta.profile[+] = "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-location|6.0.0"
* identifier.system = "http://www.example.org/location"
* identifier.value = "789"
* status = #active
* name = "Children's/Pediatrics at XYZ Hospital"
* type = SAFRHealthareCapacityCSExample#CHLD "Children's or Pediatric"


/*

Instance: bed-capacity-measurereport-example-hosp
InstanceOf: DEQMSummaryMeasureReportProfile
Title: "MeasureReport - Hospital Bed Capacity Example 2"
Description: "Example MeasureReport - Hospital Bed Capacity Individual Measure Report"
Usage: #example

// * contained.resourceType = "Location"
// * contained.id = "hosp-location-example-bed-capacity"
// * contained.identifier.system = "http://www.example.org/location"
// * contained.identifier.value = "123"
// * contained.name = "XYZ Hospital"
// * contained.type = SAFRHealthareCapacityCSExample#HOSP "Hospital"
* extension[location].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-dataLocation"
* extension[location].valueReference = Reference(hosp-location-example-bed-capacity)
// TODO, determine if this is actually necessary. DEQM Invariant deqm-3 seems to be incorrectly written
* extension[1].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = $measure-scoring#cohort "Cohort"
* contained[0] = hosp-location-example-bed-capacity
* status = #complete
* type = #summary
* measure = Canonical(BedCapacityMeasure)
//* measure = Canonical(BedCapacityMeasure)
// Uncomment the line below when DEQM is updated to allow non-patient subjects in individual reports
// * subject = Reference(hosp-location-example-bed-capacity)
//* subject.identifier.system = "http://www.example.org/location"
//* subject.identifier.value = "123"
* date = "2023-08-28T07:01:07.563Z"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2023-08-28T07:01:07.563Z"
* period.end = "2023-08-28T19:01:07.561Z"
//* group.code = SAFRHealthareCapacityCSExample#BedCapacityReporting
* group[0].code = SAFRHealthareCapacityCSExample#AllBedsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 177
* group[+].code = SAFRHealthareCapacityCSExample#AllBedsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRHealthareCapacityCSExample#AdultTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 177
* group[+].code = SAFRHealthareCapacityCSExample#AdultTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRHealthareCapacityCSExample#AdultICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 32
* group[+].code = SAFRHealthareCapacityCSExample#AdultICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCSExample#AdultICULOCOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 32
* group[+].code = SAFRHealthareCapacityCSExample#AdultNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3
* group[+].code = SAFRHealthareCapacityCSExample#AdultNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultPCUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#AdultPCUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[+].code = SAFRHealthareCapacityCSExample#AdultMTMSOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3
* group[+].code = SAFRHealthareCapacityCSExample#AdultMTMSUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#AdultObsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultObsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsICULOCOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsPCUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 110
* group[+].code = SAFRHealthareCapacityCSExample#PedsPCUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsMTMSOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[+].code = SAFRHealthareCapacityCSExample#PedsMTMSUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsObsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsObsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 11
* group[+].code = SAFRHealthareCapacityCSExample#SpecialtyTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#SpecialtyTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#SpecialtyNonCribOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#SpecialtyNonCribUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#OBOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#OBUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#NICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU4Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU4Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU3PlusOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCSExample#NICU3PlusUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCSExample#NICU3Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU3Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU2Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU2Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU1Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU1Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NurseryOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NurseryUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#AdultPsychOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#AdultPsychUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsPsychOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsPsychUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#RehabOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#RehabUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#BurnOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCSExample#BurnUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NegativePressureOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCSExample#NegativePressureUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHealthareCapacityCSExample#AdultEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCSExample#AdultEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCSExample#PedsEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHealthareCapacityCSExample#TotalEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 412
* group[+].code = SAFRHealthareCapacityCSExample#TotalEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1921

Instance: bed-capacity-measurereport-example-ipf
InstanceOf: DEQMIndividualMeasureReportProfile
Title: "MeasureReport - Hospital Bed Capacity Example 3"
Description: "Example MeasureReport - Inpatient Psychiatric Facility Bed Capacity Individual Measure Report"
Usage: #example

* extension[location].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-dataLocation"
* extension[location].valueReference = Reference(ipf-location-example-bed-capacity)
* extension[1].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = $measure-scoring#cohort "Cohort"
* contained[0] = ipf-location-example-bed-capacity
* status = #complete
* type = #individual
* measure = Canonical(BedCapacityMeasure)
// Uncomment the line below when DEQM is updated to allow non-patient subjects in individual reports
// * subject = Reference(hosp-location-example-bed-capacity)
* subject.identifier.system = "http://www.example.org/location"
* subject.identifier.value = "123"
* date = "2023-08-28T07:01:07.563Z"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2023-08-28T07:01:07.563Z"
* period.end = "2023-08-28T19:01:07.562Z"
* group[0].code = SAFRHealthareCapacityCSExample#AllBedsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCSExample#AllBedsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCSExample#AdultTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCSExample#AdultICULOCOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 32
* group[+].code = SAFRHealthareCapacityCSExample#AdultNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultPCUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultPCUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultMTMSOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultMTMSUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultObsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultObsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsICULOCOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsPCUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 110
* group[+].code = SAFRHealthareCapacityCSExample#PedsPCUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsMTMSOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[+].code = SAFRHealthareCapacityCSExample#PedsMTMSUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsObsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsObsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 11
* group[+].code = SAFRHealthareCapacityCSExample#SpecialtyTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCSExample#SpecialtyTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCSExample#SpecialtyNonCribOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCSExample#SpecialtyNonCribUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCSExample#OBOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#OBUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#NICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU4Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU4Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU3PlusOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCSExample#NICU3PlusUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCSExample#NICU3Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU3Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU2Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU2Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU1Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU1Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NurseryOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NurseryUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#AdultPsychOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCSExample#AdultPsychUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCSExample#PedsPsychOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsPsychUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#RehabOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#RehabUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#BurnOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCSExample#BurnUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NegativePressureOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHealthareCapacityCSExample#NegativePressureUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHealthareCapacityCSExample#AdultEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 29
* group[+].code = SAFRHealthareCapacityCSExample#AdultEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCSExample#PedsEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHealthareCapacityCSExample#TotalEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 29
* group[+].code = SAFRHealthareCapacityCSExample#TotalEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

Instance: bed-capacity-measurereport-example-chld
InstanceOf: DEQMIndividualMeasureReportProfile
Title: "MeasureReport - Hospital Bed Capacity Example 1"
Description: "Example MeasureReport - Children's Hospital Bed Capacity Individual Measure Report"
Usage: #example

* extension[location].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-dataLocation"
* extension[location].valueReference = Reference(chld-location-example-bed-capacity)
* extension[1].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = $measure-scoring#cohort "Cohort"
* contained[0] = chld-location-example-bed-capacity
* status = #complete
* type = #individual
* measure = Canonical(BedCapacityMeasure)
// Uncomment the line below when DEQM is updated to allow non-patient subjects in individual reports
// * subject = Reference(hosp-location-example-bed-capacity)
* subject.identifier.system = "http://www.example.org/location"
* subject.identifier.value = "123"
* date = "2023-08-28T07:01:07.563Z"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2023-08-28T07:01:07.563Z"
* period.end = "2023-08-28T19:01:07.562Z"
* group[0].code = SAFRHealthareCapacityCSExample#AllBedsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 104
* group[+].code = SAFRHealthareCapacityCSExample#AllBedsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 86
* group[+].code = SAFRHealthareCapacityCSExample#AdultTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCSExample#AdultICULOCOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 32
* group[+].code = SAFRHealthareCapacityCSExample#AdultNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultPCUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultPCUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultMTMSOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultMTMSUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultObsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#AdultObsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 56
* group[+].code = SAFRHealthareCapacityCSExample#PedsTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 53
* group[+].code = SAFRHealthareCapacityCSExample#PedsICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 12
* group[+].code = SAFRHealthareCapacityCSExample#PedsICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 12
* group[+].code = SAFRHealthareCapacityCSExample#PedsICULOCOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 12
* group[+].code = SAFRHealthareCapacityCSExample#PedsNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 44
* group[+].code = SAFRHealthareCapacityCSExample#PedsNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 41
* group[+].code = SAFRHealthareCapacityCSExample#PedsPCUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsPCUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsMTMSOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsMTMSUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 41
* group[+].code = SAFRHealthareCapacityCSExample#PedsObsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#PedsObsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 11
* group[+].code = SAFRHealthareCapacityCSExample#SpecialtyTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCSExample#SpecialtyTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCSExample#SpecialtyNonCribOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCSExample#SpecialtyNonCribUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCSExample#OBOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#OBUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCSExample#NICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU4Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU4Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU3PlusOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCSExample#NICU3PlusUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCSExample#NICU3Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU3Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU2Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU2Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU1Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NICU1Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NurseryOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NurseryUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#AdultPsychOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCSExample#AdultPsychUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCSExample#PedsPsychOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsPsychUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#RehabOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#RehabUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeActiveNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#SurgeInactiveNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#BurnOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCSExample#BurnUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#NegativePressureOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 9
* group[+].code = SAFRHealthareCapacityCSExample#NegativePressureUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHealthareCapacityCSExample#AdultEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 29
* group[+].code = SAFRHealthareCapacityCSExample#AdultEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#PedsEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRHealthareCapacityCSExample#PedsEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#TotalEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCSExample#TotalEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

/*
Examples where the measure items are placed in a single group with multiple populations

*/