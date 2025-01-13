

// TODO, try SANER Measure Profile for the Measure Profile these are using - https://build.fhir.org/ig/HL7/fhir-saner/StructureDefinition-PublicHealthMeasure.html

Instance: hosp-location-example-bed-capacity
InstanceOf: QICoreLocation
Title: "Location - Entire Hospital"
Description: "Hospital-wide"
Usage: #inline
* identifier.system = "http://www.example.org/location"
* identifier.value = "123"
* status = #active
* name = "XYZ Hospital"
* type = SAFRHealthareCapacityCS#HOSP "Hospital"

Instance: ipf-location-example-bed-capacity
InstanceOf: QICoreLocation
Title: "Location - Inpatient Psychiatric"
Description: "Inpatient Psych (IPF)"
Usage: #inline
* identifier.system = "http://www.example.org/location"
* identifier.value = "456"
* status = #active
* name = "Inpatient Psych at XYZ Hospital"
* type = SAFRHealthareCapacityCS#IPF "Inpatient Psychiatric"

Instance: chld-location-example-bed-capacity
InstanceOf: QICoreLocation
Title: "Location - Children's or Pediatrics Dept."
Description: "Pediatric (CHLD)"
Usage: #inline
* identifier.system = "http://www.example.org/location"
* identifier.value = "789"
* status = #active
* name = "Children's/Pediatrics at XYZ Hospital"
* type = SAFRHealthareCapacityCS#CHLD "Children's or Pediatric"


Instance: bed-capacity-measurereport-example-hosp
InstanceOf: DEQMIndividualMeasureReportProfile
Title: "MeasureReport - Hospital Bed Capacity Individual Measure Report"
Description: "Example MeasureReport - Hospital Bed Capacity Individual Measure Report"
Usage: #example

// * contained.resourceType = "Location"
// * contained.id = "hosp-location-example-bed-capacity"
// * contained.identifier.system = "http://www.example.org/location"
// * contained.identifier.value = "123"
// * contained.name = "XYZ Hospital"
// * contained.type = SAFRHealthareCapacityCS#HOSP "Hospital"
* extension[location].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-dataLocation"
* extension[location].valueReference = Reference(hosp-location-example-bed-capacity)
// TODO, determine if this is actually necessary. DEQM Invariant deqm-3 seems to be incorrectly written
* extension[1].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = $measure-scoring#cohort "Cohort"
* contained[0] = hosp-location-example-bed-capacity
* status = #complete
* type = #individual
* measure = "http://hl7.org/fhir/us-safr/Measure/BedCapacityMeasure"
//* measure = Canonical(BedCapacityMeasure)
// Uncomment the line below when DEQM is updated to allow non-patient subjects in individual reports
// * subject = Reference(hosp-location-example-bed-capacity)
* subject.identifier.system = "http://www.example.org/location"
* subject.identifier.value = "123"
* date = "2023-08-28T07:01:07.563Z"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2023-08-28T07:01:07.563Z"
* period.end = "2023-08-28T19:01:07.561Z"
//* group.code = SAFRHealthareCapacityCS#BedCapacityReporting
* group[0].code = SAFRHealthareCapacityCS#AllBedsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 177
* group[+].code = SAFRHealthareCapacityCS#AllBedsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRHealthareCapacityCS#AdultTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 177
* group[+].code = SAFRHealthareCapacityCS#AdultTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRHealthareCapacityCS#AdultICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 32
* group[+].code = SAFRHealthareCapacityCS#AdultICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCS#AdultICULOCOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 32
* group[+].code = SAFRHealthareCapacityCS#AdultNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3
* group[+].code = SAFRHealthareCapacityCS#AdultNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultPCUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#AdultPCUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[+].code = SAFRHealthareCapacityCS#AdultMTMSOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3
* group[+].code = SAFRHealthareCapacityCS#AdultMTMSUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#AdultObsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultObsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsICULOCOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsPCUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 110
* group[+].code = SAFRHealthareCapacityCS#PedsPCUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsMTMSOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[+].code = SAFRHealthareCapacityCS#PedsMTMSUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsObsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsObsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 11
* group[+].code = SAFRHealthareCapacityCS#SpecialtyTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#SpecialtyTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#SpecialtyNonCribOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#SpecialtyNonCribUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#OBOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#OBUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#NICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU4Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU4Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU3PlusOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCS#NICU3PlusUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCS#NICU3Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU3Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU2Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU2Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU1Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU1Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NurseryOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NurseryUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#AdultPsychOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#AdultPsychUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsPsychOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsPsychUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#RehabOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#RehabUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#BurnOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCS#BurnUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NegativePressureOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCS#NegativePressureUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHealthareCapacityCS#AdultEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCS#AdultEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCS#PedsEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHealthareCapacityCS#TotalEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 412
* group[+].code = SAFRHealthareCapacityCS#TotalEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1921

Instance: bed-capacity-measurereport-example-ipf
InstanceOf: DEQMIndividualMeasureReportProfile
Title: "MeasureReport - Inpatient Psychiatric Facility Bed Capacity Individual Measure Report"
Description: "Example MeasureReport - Inpatient Psychiatric Facility Bed Capacity Individual Measure Report"
Usage: #example

* extension[location].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-dataLocation"
* extension[location].valueReference = Reference(ipf-location-example-bed-capacity)
* extension[1].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = $measure-scoring#cohort "Cohort"
* contained[0] = ipf-location-example-bed-capacity
* status = #complete
* type = #individual
* measure = "http://hl7.org/fhir/us-safr/Measure/BedCapacityMeasure"
// Uncomment the line below when DEQM is updated to allow non-patient subjects in individual reports
// * subject = Reference(hosp-location-example-bed-capacity)
* subject.identifier.system = "http://www.example.org/location"
* subject.identifier.value = "123"
* date = "2023-08-28T07:01:07.563Z"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2023-08-28T07:01:07.563Z"
* period.end = "2023-08-28T19:01:07.562Z"
* group[0].code = SAFRHealthareCapacityCS#AllBedsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCS#AllBedsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCS#AdultTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCS#AdultICULOCOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 32
* group[+].code = SAFRHealthareCapacityCS#AdultNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultPCUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultPCUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultMTMSOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultMTMSUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultObsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultObsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsICULOCOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsPCUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 110
* group[+].code = SAFRHealthareCapacityCS#PedsPCUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsMTMSOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[+].code = SAFRHealthareCapacityCS#PedsMTMSUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsObsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsObsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 11
* group[+].code = SAFRHealthareCapacityCS#SpecialtyTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCS#SpecialtyTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCS#SpecialtyNonCribOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCS#SpecialtyNonCribUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCS#OBOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#OBUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#NICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU4Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU4Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU3PlusOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCS#NICU3PlusUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCS#NICU3Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU3Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU2Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU2Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU1Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU1Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NurseryOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NurseryUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#AdultPsychOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCS#AdultPsychUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCS#PedsPsychOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsPsychUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#RehabOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#RehabUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#BurnOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCS#BurnUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NegativePressureOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHealthareCapacityCS#NegativePressureUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHealthareCapacityCS#AdultEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 29
* group[+].code = SAFRHealthareCapacityCS#AdultEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCS#PedsEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHealthareCapacityCS#TotalEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 29
* group[+].code = SAFRHealthareCapacityCS#TotalEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

Instance: bed-capacity-measurereport-example-chld
InstanceOf: DEQMIndividualMeasureReportProfile
Title: "MeasureReport - Children's Hospital Bed Capacity Individual Measure Report"
Description: "Example MeasureReport - Children's Hospital Bed Capacity Individual Measure Report"
Usage: #example

* extension[location].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-dataLocation"
* extension[location].valueReference = Reference(chld-location-example-bed-capacity)
* extension[1].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = $measure-scoring#cohort "Cohort"
* contained[0] = chld-location-example-bed-capacity
* status = #complete
* type = #individual
* measure = "http://hl7.org/fhir/us-safr/Measure/BedCapacityMeasure"
// Uncomment the line below when DEQM is updated to allow non-patient subjects in individual reports
// * subject = Reference(hosp-location-example-bed-capacity)
* subject.identifier.system = "http://www.example.org/location"
* subject.identifier.value = "123"
* date = "2023-08-28T07:01:07.563Z"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2023-08-28T07:01:07.563Z"
* period.end = "2023-08-28T19:01:07.562Z"
* group[0].code = SAFRHealthareCapacityCS#AllBedsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 104
* group[+].code = SAFRHealthareCapacityCS#AllBedsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 86
* group[+].code = SAFRHealthareCapacityCS#AdultTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCS#AdultICULOCOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 32
* group[+].code = SAFRHealthareCapacityCS#AdultNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultPCUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultPCUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultMTMSOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultMTMSUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultObsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#AdultObsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 56
* group[+].code = SAFRHealthareCapacityCS#PedsTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 53
* group[+].code = SAFRHealthareCapacityCS#PedsICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 12
* group[+].code = SAFRHealthareCapacityCS#PedsICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 12
* group[+].code = SAFRHealthareCapacityCS#PedsICULOCOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 12
* group[+].code = SAFRHealthareCapacityCS#PedsNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 44
* group[+].code = SAFRHealthareCapacityCS#PedsNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 41
* group[+].code = SAFRHealthareCapacityCS#PedsPCUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsPCUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsMTMSOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsMTMSUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 41
* group[+].code = SAFRHealthareCapacityCS#PedsObsOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#PedsObsUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 11
* group[+].code = SAFRHealthareCapacityCS#SpecialtyTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCS#SpecialtyTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCS#SpecialtyNonCribOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCS#SpecialtyNonCribUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCS#OBOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#OBUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* group[=].population[=].count.extension.valueCode = #not-applicable
* group[+].code = SAFRHealthareCapacityCS#NICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU4Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU4Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU3PlusOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCS#NICU3PlusUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHealthareCapacityCS#NICU3Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU3Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU2Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU2Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU1Occupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NICU1Unoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NurseryOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NurseryUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#AdultPsychOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 91
* group[+].code = SAFRHealthareCapacityCS#AdultPsychUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 16
* group[+].code = SAFRHealthareCapacityCS#PedsPsychOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsPsychUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#RehabOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#RehabUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveTotalOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveTotalUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeActiveNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveNonICUOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#SurgeInactiveNonICUUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#BurnOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 18
* group[+].code = SAFRHealthareCapacityCS#BurnUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#NegativePressureOccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 9
* group[+].code = SAFRHealthareCapacityCS#NegativePressureUnoccupied
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHealthareCapacityCS#AdultEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 29
* group[+].code = SAFRHealthareCapacityCS#AdultEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#PedsEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRHealthareCapacityCS#PedsEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#TotalEDCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
* group[+].code = SAFRHealthareCapacityCS#TotalEDAdmittedCensus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

/*
Examples where the measure items are placed in a single group with multiple populations

*/