
// NHSN Bed Capacity MeasureReport Instance
// Based on the NHSNBedCapacityMeasureReport profile
Instance: BedCapacityMeasureReport
InstanceOf: DEQMSummaryMeasureReportProfile
Title: "Hospital Bed Capacity Report Example for March 5, 2025"
Description: "Example MeasureReport for NHSN bed capacity monitoring showing ICU, ED, and Pediatric bed capacity"
Usage: #example
// Basic metadata
* status = $measure-report-status#complete
* type = $measure-report-type#summary
* measure = Canonical(BedCapacityMeasure|1.0.0-ballot)
* date = "2025-03-05T08:15:00-05:00"
// Reporting period
* period.start = "2025-03-05T00:00:00-05:00"
* period.end = "2025-03-05T23:59:59-05:00"
// Reporter and subject
* reporter.reference = "urn:uuid:4c83e586-1277-4132-9b4e-3d1c14d38981" //Reference(MemorialHospitalOrganization)
* reporter.display = "Memorial Hospital"
//* subject = Reference(MemorialHospitalFacility)
//* subject.display = "Memorial Hospital Facility"

* extension[scoring].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[scoring].valueCodeableConcept = $measure-scoring#continuous-variable "Continuous Variable"

* extension[location].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-dataLocation"
* extension[location].valueReference.reference = "urn:uuid:4c83e586-1277-4132-9b4e-3d1c14d38983" //Reference(MemorialHospitalFacility)

// NHSN extensions
/*
* extension[+].url = "http://hl7.org/fhir/us/safr/StructureDefinition/reporting-frequency"
* extension[=].valueCodeableConcept = http://unitsofmeasure.org#d "day"
* extension[+].url = "http://hl7.org/fhir/us/safr/StructureDefinition/emergency-activation"
* extension[=].valueBoolean = false
* extension[+].url = "http://hl7.org/fhir/us/nhsn-bed-measures/StructureDefinition/reporting-timestamp"
* extension[=].valueDateTime = "2025-03-05T08:00:00-05:00"
*/
/*
TODO, will need output with summary

* extension[+].url = "http://hl7.org/fhir/us/nhsn-bed-measures/StructureDefinition/facility-bed-summary"
* extension[=].extension[totalBeds].url = "totalBeds"
* extension[=].extension[totalBeds].valueInteger = 102
* extension[=].extension[occupiedBeds].url = "occupiedBeds"
* extension[=].extension[occupiedBeds].valueInteger = 76
* extension[=].extension[availableBeds].url = "availableBeds"
* extension[=].extension[availableBeds].valueInteger = 26
* extension[=].extension[overallOccupancyRate].url = "overallOccupancyRate"
* extension[=].extension[overallOccupancyRate].valueDecimal = 74.5

*/
* improvementNotation = $MeasureImprovementNotation#increase "Increased score indicates improvement"


///////////// Group AllBeds /////////////
* group[+].id = "AllBeds-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AllBeds "All Beds Census"
* group[=].measureScore.value = 97.25274725274726
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "AllBeds-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 182
* group[=].population[+].id = "AllBeds-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 182
* group[=].population[+].id = "AllBeds-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 177
* group[=].stratifier[0].id = "AllBeds-bed-status-stratifier"
* group[=].stratifier[0].code.text = "AllBeds Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "AllBedsOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 177
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "AllBedsUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 5

///////////// Group AdultTotal /////////////
* group[+].id = "AdultTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultTotal "Adult Total Census"
* group[=].measureScore.value = 97.25274725274726
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "AdultTotal-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 182
* group[=].population[+].id = "AdultTotal-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 182
* group[=].population[+].id = "AdultTotal-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 177
* group[=].stratifier[0].id = "AdultTotal-bed-status-stratifier"
* group[=].stratifier[0].code.text = "AdultTotal Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "AdultTotalOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 177
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "AdultTotalUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 5

///////////// Group AdultICU /////////////
* group[+].id = "AdultICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultICU "Adult ICU Census"
* group[=].measureScore.value = 94.11764705882352
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "AdultICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 34
* group[=].population[+].id = "AdultICU-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 34
* group[=].population[+].id = "AdultICU-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 32
* group[=].stratifier[0].id = "AdultICU-bed-status-stratifier"
* group[=].stratifier[0].code.text = "AdultICU Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "AdultICUOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 32
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "AdultICUUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 2

///////////// Group AdultICULOC /////////////
* group[+].id = "AdultICULOC-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultICULOC "Adult ICU-LOC Census"
* group[=].measureScore.value = 91.42857142857143
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "AdultICULOC-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 35
* group[=].population[+].id = "AdultICULOC-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 35
* group[=].population[+].id = "AdultICULOC-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 32
* group[=].stratifier[0].id = "AdultICULOC-bed-status-stratifier"
* group[=].stratifier[0].code.text = "AdultICULOC Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "AdultICULOCOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 32
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "AdultICULOCUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 3

///////////// Group AdultNonICU /////////////
* group[+].id = "AdultNonICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultNonICU "Adult Non- ICU Census"
* group[=].measureScore.value = 84.76821192052981
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "AdultNonICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 302
* group[=].population[+].id = "AdultNonICU-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 302
* group[=].population[+].id = "AdultNonICU-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 256
* group[=].stratifier[0].id = "AdultNonICU-bed-status-stratifier"
* group[=].stratifier[0].code.text = "AdultNonICU Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "AdultNonICUOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 256
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "AdultNonICUUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 46

///////////// Group AdultPCU /////////////
* group[+].id = "AdultPCU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultPCU "Adult PCU Census"
* group[=].measureScore.value = 0.0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "AdultPCU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "AdultPCU-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "AdultPCU-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "AdultPCU-bed-status-stratifier"
* group[=].stratifier[0].code.text = "AdultPCU Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "AdultPCUOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "AdultPCUUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 145

///////////// Group AdultMTMS /////////////
* group[+].id = "AdultMTMS-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultMTMS "Adult MT/MS Census"
* group[=].measureScore.value = 100.0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "AdultMTMS-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3
* group[=].population[+].id = "AdultMTMS-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 3
* group[=].population[+].id = "AdultMTMS-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 3
* group[=].stratifier[0].id = "AdultMTMS-bed-status-stratifier"
* group[=].stratifier[0].code.text = "AdultMTMS Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "AdultMTMSOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 3
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "AdultMTMSUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group AdultObs /////////////
* group[+].id = "AdultObs-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultObs "Adult OBS Census"
* group[=].measureScore.value = 68.96551724137932
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "AdultObs-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "AdultObs-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "AdultObs-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 100
* group[=].stratifier[0].id = "AdultObs-bed-status-stratifier"
* group[=].stratifier[0].code.text = "AdultObs Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "AdultObsOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 100
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "AdultObsUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 45

///////////// Group PedsTotal /////////////
* group[+].id = "PedsTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsTotal "Peds Total Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "PedsTotal-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsTotal-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsTotal-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "PedsTotal-bed-status-stratifier"
* group[=].stratifier[0].code.text = "PedsTotal Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "PedsTotalOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "PedsTotalUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group PedsICU /////////////
* group[+].id = "PedsICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsICU "Peds ICU Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "PedsICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsICU-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsICU-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "PedsICU-bed-status-stratifier"
* group[=].stratifier[0].code.text = "PedsICU Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "PedsICUOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "PedsICUUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group PedsICULOC /////////////
* group[+].id = "PedsICULOC-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsICULOC "Peds ICU- LOC Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "PedsICULOC-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsICULOC-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsICULOC-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "PedsICULOC-bed-status-stratifier"
* group[=].stratifier[0].code.text = "PedsICULOC Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "PedsICULOCOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "PedsICULOCUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group PedsNonICU /////////////
* group[+].id = "PedsNonICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsNonICU "Peds Non- ICU Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "PedsNonICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsNonICU-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsNonICU-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "PedsNonICU-bed-status-stratifier"
* group[=].stratifier[0].code.text = "PedsNonICU Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "PedsNonICUOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "PedsNonICUUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group PedsPCU /////////////
* group[+].id = "PedsPCU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsPCU "Peds PCU Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "PedsPCU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsPCU-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsPCU-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "PedsPCU-bed-status-stratifier"
* group[=].stratifier[0].code.text = "PedsPCU Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "PedsPCUOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "PedsPCUUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group PedsMTMS /////////////
* group[+].id = "PedsMTMS-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsMTMS "Peds MT/MS Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "PedsMTMS-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsMTMS-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsMTMS-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "PedsMTMS-bed-status-stratifier"
* group[=].stratifier[0].code.text = "PedsMTMS Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "PedsMTMSOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "PedsMTMSUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group PedsObs /////////////
* group[+].id = "PedsObs-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsObs "Peds OBS Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "PedsObs-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsObs-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 145
* group[=].population[+].id = "PedsObs-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "PedsObs-bed-status-stratifier"
* group[=].stratifier[0].code.text = "PedsObs Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "PedsObsOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "PedsObsUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group SpecialtyTotal /////////////
* group[+].id = "SpecialtyTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SpecialtyTotal "Specialty Total Census"
* group[=].measureScore.value = 66.66666666666666
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "SpecialtyTotal-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "SpecialtyTotal-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "SpecialtyTotal-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 24
* group[=].stratifier[0].id = "SpecialtyTotal-bed-status-stratifier"
* group[=].stratifier[0].code.text = "SpecialtyTotal Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "SpecialtyTotalOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 24
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "SpecialtyTotalUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 12

///////////// Group SpecialtyNonCrib /////////////
* group[+].id = "SpecialtyNonCrib-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SpecialtyNonCrib "Specialty (Non-Crib) Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "SpecialtyNonCrib-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "SpecialtyNonCrib-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "SpecialtyNonCrib-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "SpecialtyNonCrib-bed-status-stratifier"
* group[=].stratifier[0].code.text = "SpecialtyNonCrib Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "SpecialtyNonCribOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "SpecialtyNonCribUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group OB /////////////
* group[+].id = "OB-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#OB "Specialty OB Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "OB-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "OB-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "OB-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "OB-bed-status-stratifier"
* group[=].stratifier[0].code.text = "OB Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "OBOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "OBUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group NICU /////////////
* group[+].id = "NICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU "Specialty NICU Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "NICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "NICU-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "NICU-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "NICU-bed-status-stratifier"
* group[=].stratifier[0].code.text = "NICU Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "NICUOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "NICUUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group NICU4 /////////////
* group[+].id = "NICU4-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU4 "Specialty NICU 4 Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "NICU4-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "NICU4-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "NICU4-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "NICU4-bed-status-stratifier"
* group[=].stratifier[0].code.text = "NICU4 Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "NICU4Occupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "NICU4Unoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group NICU3 /////////////
* group[+].id = "NICU3-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU3 "Specialty NICU 3 Occupied"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "NICU3-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "NICU3-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "NICU3-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "NICU3-bed-status-stratifier"
* group[=].stratifier[0].code.text = "NICU3 Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "NICU3Occupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "NICU3Unoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group NICU3Plus /////////////
* group[+].id = "NICU3Plus-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU3Plus "Specialty NICU 3 Plus Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "NICU3Plus-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "NICU3Plus-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "NICU3Plus-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "NICU3Plus-bed-status-stratifier"
* group[=].stratifier[0].code.text = "NICU3Plus Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "NICU3PlusOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "NICU3PlusUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group NICU2 /////////////
* group[+].id = "NICU2-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU2 "Specialty NICU 2 Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "NICU2-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "NICU2-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "NICU2-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "NICU2-bed-status-stratifier"
* group[=].stratifier[0].code.text = "NICU2 Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "NICU2Occupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "NICU2Unoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group Nursery /////////////
* group[+].id = "Nursery-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#Nursery "Specialty Nursery Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "Nursery-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "Nursery-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "Nursery-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "Nursery-bed-status-stratifier"
* group[=].stratifier[0].code.text = "Nursery Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "NurseryOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "NurseryUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group NICU1 /////////////
* group[+].id = "NICU1-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU1 "Specialty NICU 1 Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "NICU1-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "NICU1-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 36
* group[=].population[+].id = "NICU1-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "NICU1-bed-status-stratifier"
* group[=].stratifier[0].code.text = "NICU1 Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "NICU1Occupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "NICU1Unoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group AdultPsych /////////////
* group[+].id = "AdultPsych-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultPsych "Specialty Adult Psych Census"
* group[=].measureScore.value = 10.0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "AdultPsych-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 20
* group[=].population[+].id = "AdultPsych-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 20
* group[=].population[+].id = "AdultPsych-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 2
* group[=].stratifier[0].id = "AdultPsych-bed-status-stratifier"
* group[=].stratifier[0].code.text = "AdultPsych Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "AdultPsychOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 2
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "AdultPsychUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 18

///////////// Group PedsPsych /////////////
* group[+].id = "PedsPsych-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsPsych "Specialty Peds Psych Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "PedsPsych-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 20
* group[=].population[+].id = "PedsPsych-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 20
* group[=].population[+].id = "PedsPsych-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "PedsPsych-bed-status-stratifier"
* group[=].stratifier[0].code.text = "PedsPsych Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "PedsPsychOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "PedsPsychUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group Rehab /////////////
* group[+].id = "Rehab-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#Rehab "Specialty Rehab Census"
* group[=].measureScore.value = 50.0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "Rehab-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[=].population[+].id = "Rehab-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 30
* group[=].population[+].id = "Rehab-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 15
* group[=].stratifier[0].id = "Rehab-bed-status-stratifier"
* group[=].stratifier[0].code.text = "Rehab Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "RehabOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 15
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "RehabUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 15

///////////// Group SurgeActiveTotal /////////////
* group[+].id = "SurgeActiveTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeActiveTotal "Surge Total Active Census"
* group[=].measureScore.value = 50.0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "SurgeActiveTotal-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 20
* group[=].population[+].id = "SurgeActiveTotal-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 20
* group[=].population[+].id = "SurgeActiveTotal-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 10
* group[=].stratifier[0].id = "SurgeActiveTotal-bed-status-stratifier"
* group[=].stratifier[0].code.text = "SurgeActiveTotal Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "SurgeActiveTotalOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 10
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "SurgeActiveTotalUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 10

///////////// Group SurgeInactiveTotal /////////////
* group[+].id = "SurgeInactiveTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeInactiveTotal "Surge Total Inactive Occupied"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "SurgeInactiveTotal-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 20
* group[=].population[+].id = "SurgeInactiveTotal-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 20
* group[=].population[+].id = "SurgeInactiveTotal-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "SurgeInactiveTotal-bed-status-stratifier"
* group[=].stratifier[0].code.text = "SurgeInactiveTotal Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "SurgeInactiveTotalOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "SurgeInactiveTotalUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group SurgeActiveICU /////////////
* group[+].id = "SurgeActiveICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeActiveICU "Surge ICU Active Census"
* group[=].measureScore.value = 20.0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "SurgeActiveICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10
* group[=].population[+].id = "SurgeActiveICU-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 10
* group[=].population[+].id = "SurgeActiveICU-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 2
* group[=].stratifier[0].id = "SurgeActiveICU-bed-status-stratifier"
* group[=].stratifier[0].code.text = "SurgeActiveICU Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "SurgeActiveICUOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 2
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "SurgeActiveICUUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 8

///////////// Group SurgeInactiveICU /////////////
* group[+].id = "SurgeInactiveICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeInactiveICU "Surge ICU Inactive Occupied"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "SurgeInactiveICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10
* group[=].population[+].id = "SurgeInactiveICU-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 10
* group[=].population[+].id = "SurgeInactiveICU-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "SurgeInactiveICU-bed-status-stratifier"
* group[=].stratifier[0].code.text = "SurgeInactiveICU Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "SurgeInactiveICUOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "SurgeInactiveICUUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group SurgeActiveNonICU /////////////
* group[+].id = "SurgeActiveNonICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeActiveNonICU "Surge Non- ICU Active Census"
* group[=].measureScore.value = 40.0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "SurgeActiveNonICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10
* group[=].population[+].id = "SurgeActiveNonICU-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 10
* group[=].population[+].id = "SurgeActiveNonICU-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 4
* group[=].stratifier[0].id = "SurgeActiveNonICU-bed-status-stratifier"
* group[=].stratifier[0].code.text = "SurgeActiveNonICU Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "SurgeActiveNonICUOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 4
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "SurgeActiveNonICUUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 6

///////////// Group SurgeInactiveNonICU /////////////
* group[+].id = "SurgeInactiveNonICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeInactiveNonICU "Surge Non- ICU Inactive Occupied"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "SurgeInactiveNonICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10
* group[=].population[+].id = "SurgeInactiveNonICU-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 10
* group[=].population[+].id = "SurgeInactiveNonICU-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "SurgeInactiveNonICU-bed-status-stratifier"
* group[=].stratifier[0].code.text = "SurgeInactiveNonICU Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "SurgeInactiveNonICUOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "SurgeInactiveNonICUUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group Burn /////////////
* group[+].id = "Burn-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#Burn "Burn Bed Census"
* group[=].measureScore.value = 10.0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "Burn-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10
* group[=].population[+].id = "Burn-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 10
* group[=].population[+].id = "Burn-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 1
* group[=].stratifier[0].id = "Burn-bed-status-stratifier"
* group[=].stratifier[0].code.text = "Burn Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "BurnOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 1
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "BurnUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 9

///////////// Group NegativePressure /////////////
* group[+].id = "NegativePressure-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NegativePressure "Neg Pressure Bed Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "NegativePressure-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10
* group[=].population[+].id = "NegativePressure-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 10
* group[=].population[+].id = "NegativePressure-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "NegativePressure-bed-status-stratifier"
* group[=].stratifier[0].code.text = "NegativePressure Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "NegativePressureOccupied"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "NegativePressureUnoccupied"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group AdultED /////////////
* group[+].id = "AdultED-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultED "Adult ED Total Census"
* group[=].measureScore.value = 33.33333333333333
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "AdultED-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[=].population[+].id = "AdultED-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 30
* group[=].population[+].id = "AdultED-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 10
* group[=].stratifier[0].id = "AdultED-bed-status-stratifier"
* group[=].stratifier[0].code.text = "AdultED Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "AdultEDCensus"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 10
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "AdultEDAdmittedCensus"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 20

///////////// Group PedsED /////////////
* group[+].id = "PedsED-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsED "Peds ED Census"
* group[=].measureScore.value = 0
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "PedsED-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[=].population[+].id = "PedsED-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 30
* group[=].population[+].id = "PedsED-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 0
* group[=].stratifier[0].id = "PedsED-bed-status-stratifier"
* group[=].stratifier[0].code.text = "PedsED Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "PedsEDCensus"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 0
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "PedsEDAdmittedCensus"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 0

///////////// Group TotalED /////////////
* group[+].id = "TotalED-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#TotalED "Total ED Census"
* group[=].measureScore.value = 33.33333333333333
* group[=].measureScore.unit = "%"
* group[=].measureScore.code = #%
* group[=].measureScore.system = "http://unitsofmeasure.org"
* group[=].population[+].id = "TotalED-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[=].population[+].id = "TotalED-measure-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].population[=].count = 30
* group[=].population[+].id = "TotalED-measure-observation" 
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-observation "Measure Observation"
* group[=].population[=].count = 10
* group[=].stratifier[0].id = "TotalED-bed-status-stratifier"
* group[=].stratifier[0].code.text = "TotalED Bed Status"
* group[=].stratifier[0].stratum[0].value.text = "Occupied"
* group[=].stratifier[0].stratum[0].population[0].id = "TotalEDCensus"
* group[=].stratifier[0].stratum[0].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[0].population[0].count = 10
* group[=].stratifier[0].stratum[1].value.text = "Available"
* group[=].stratifier[0].stratum[1].population[0].id = "TotalEDAdmittedCensus"
* group[=].stratifier[0].stratum[1].population[0].code = http://terminology.hl7.org/CodeSystem/measure-population#measure-population "Measure Population"
* group[=].stratifier[0].stratum[1].population[0].count = 20

