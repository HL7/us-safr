
// NHSN Bed Capacity MeasureReport Instance
// Based on the NHSNBedCapacityMeasureReport profile
Instance: BedCapacityMeasureReport
InstanceOf: DEQMIndividualMeasureReportProfile
Title: "MeasureReport - Bed Capacity MeasureReport Example"
Description: "Example MeasureReport for NHSN bed capacity monitoring showing ICU, ED, and Pediatric bed capacity"
Usage: #example
// Basic metadata
* status = $measure-report-status#complete
* type = $measure-report-type#individual
* measure = "http://hl7.org/fhir/us/safr/Measure/BedCapacityMeasure|1.0.0-ballot"
//* measure = Canonical(BedCapacityMeasure|1.0.0-ballot)
* date = "2025-03-05T08:15:00-05:00"
// Reporting period
* period.start = "2025-03-05T00:00:00-05:00"
* period.end = "2025-03-05T23:59:59-05:00"
// Reporter and subject
* reporter.reference = "urn:uuid:4c83e586-1277-4132-9b4e-3d1c14d38981" //Reference(MemorialHospitalOrganization)
* reporter.display = "Memorial Hospital"
//* subject = Reference(MemorialHospitalFacility)
* subject.reference = "urn:uuid:4c83e586-1277-4132-9b4e-3d1c14d38983"
* subject.display = "Memorial Hospital Facility"

* extension[scoring].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[scoring].valueCodeableConcept = $measure-scoring#continuous-variable "Continuous Variable"

* extension[location].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-dataLocation"
* extension[location].valueReference.reference = "urn:uuid:4c83e586-1277-4132-9b4e-3d1c14d38983" //Reference(MemorialHospitalFacility)


* improvementNotation = $MeasureImprovementNotation#increase "Increased score indicates improvement"


///////////// Group Beds /////////////
/*

* group[+].id = "AllBeds-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#AllBeds "All Beds"
* group[=].population[+].id = "Beds-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 182
* group[=].population[+].id = "Beds-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 182
* group[=].population[+].id = "Beds-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 5
* group[=].stratifier[0].id = "Beds-status-stratifier"
* group[=].stratifier[0].code.text = "All Unoccupied Beds Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "AllBedsOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 177
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "AllBedsUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 5

*/


///////////// Group AllBedsOccupied /////////////
* group[+].id = "AllBedsOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AllBedsOccupied "All Beds Census"
* group[=].population[+].id = "AllBedsOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 177

///////////// Group AllBedsUnoccupied /////////////
* group[+].id = "AllBedsUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AllBedsUnoccupied "All Beds Unoccupied"
* group[=].population[+].id = "AllBedsUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5

///////////// Group AdultTotalOccupied /////////////
* group[+].id = "AdultTotalOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultTotalOccupied "Adult Total Census"
* group[=].population[+].id = "AdultTotalOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 177

///////////// Group AdultTotalUnoccupied /////////////
* group[+].id = "AdultTotalUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultTotalUnoccupied "Adult Total Unoccupied"
* group[=].population[+].id = "AdultTotalUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5

///////////// Group AdultICUOccupied /////////////
* group[+].id = "AdultICUOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultICUOccupied "Adult ICU Census"
* group[=].population[+].id = "AdultICUOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 32

///////////// Group AdultICUUnoccupied /////////////
* group[+].id = "AdultICUUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultICUUnoccupied "Adult ICU Unoccupied"
* group[=].population[+].id = "AdultICUUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2




///////////// Group AdultICULOCOccupied /////////////
* group[+].id = "AdultICULOCOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultICULOCOccupied "Adult ICU Unoccupied"
* group[=].population[+].id = "AdultICULOCOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 32



///////////// Group AdultICULOCOccupied /////////////
* group[+].id = "AdultICULOCOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultICULOCOccupied "Adult ICU-LOC Occupied Beds Status"
* group[=].population[+].id = "AdultICULOCOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 32



