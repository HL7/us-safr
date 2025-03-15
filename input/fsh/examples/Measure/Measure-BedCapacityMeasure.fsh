Instance: BedCapacityMeasure-bundle-example1
InstanceOf: SafrMeasureBundle
Title: "Bed Capacity Measure Bundle Example 1"
Description: "This Bundle resource is an example of a Bed Capacity Measure Bundle for the US SAFR IG."
Usage: #example
* type = #collection
* entry[measure][+].fullUrl = "http://example.org/fhir/Measure/BedCapacityMeasure"
* entry[measure][=].resource = BedCapacityMeasure


Instance: BedCapacityMeasure
InstanceOf: CQFMContinuousVariableMeasure
Title: "Hospital Multi-Bed Type Capacity Measure Example"
Description: "Example of a bed capacity measure for ICU, ED, and Pediatric beds for NHSN reporting"
Usage: #example

* extension[+].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis"
* extension[=].valueCode = #boolean

* url = Canonical(BedCapacityMeasure)
* version = "1.0.0"
* name = "BedCapacityMeasure"
* title = "Hospital Multi-Bed Type Capacity Measure"
* status = #active
* experimental = false
* date = "2025-03-05"
* publisher = "National Healthcare Safety Network (NHSN)"
* description = "This measure tracks hospital bed capacity including occupied and unoccupied beds across ICU, ED, and Pediatric bed types for emergency response coordination."
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#task "Workflow Task"
* useContext.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER "emergency"
* purpose = "To provide situational awareness, support capacity planning, and enable load balancing during normal operations and emergencies."
// Measure-specific elements
* scoring = $measure-scoring#continuous-variable
* type = http://terminology.hl7.org/CodeSystem/measure-type#structure "Structure"
* improvementNotation = http://terminology.hl7.org/CodeSystem/measure-improvement-notation#increase "Increased score indicates improvement"
* riskAdjustment = "No risk adjustment applied"
* rateAggregation = "Aggregate by facility and bed type"
// Library reference for the CQL library containing the logic
//* library = "http://hl7.org/fhir/us/safr/Library/BedCapacityLibrary"
* library = Canonical(BedCapacityLibrary)
// Extensions - using the correct SAFR URLs
//* extension[reportingFrequency].url = $reporting-frequency
//* extension[reportingFrequency].valueCodeableConcept = $ucum#d "per day"
//* extension[emergencyActivation].url = $emergency-activation
//* extension[emergencyActivation].valueBoolean = false
// Add scoring unit using cqfm-scoringUnit extension
* extension[+].url = $cqfm-scoringUnit
* extension[=].valueCodeableConcept = $ucum#{Number} "{Number}"


///////////// Group AllBeds /////////////
* group[+].id = "AllBeds-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AllBeds "All Beds Census"  // TODO Replace with a Group Display
* group[=].description = "All Beds Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "AllBeds-initial-population"
* group[=].population[initialPopulation].description = "All All Beds Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AllBedsInitialPopulation"
* group[=].population[measurePopulation].id = "AllBeds-measure-population"
* group[=].population[measurePopulation].description = "Total number of All Beds Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAllBedsBeds"
* group[=].population[measureObservation].id = "AllBeds-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAllBedsBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AllBeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AllBeds-bed-status-stratifier"
* group[=].stratifier[=].code.text = "AllBeds Bed Status"
* group[=].stratifier[=].description = "Stratifies AllBeds beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AllBedsBedStatusStratifier"

///////////// Group AdultTotal /////////////
* group[+].id = "AdultTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultTotal "Adult Total Census"  // TODO Replace with a Group Display
* group[=].description = "Adult Total Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "AdultTotal-initial-population"
* group[=].population[initialPopulation].description = "All Adult Total Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultTotalInitialPopulation"
* group[=].population[measurePopulation].id = "AdultTotal-measure-population"
* group[=].population[measurePopulation].description = "Total number of Adult Total Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultTotalBeds"
* group[=].population[measureObservation].id = "AdultTotal-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultTotalBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultTotal-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultTotal-bed-status-stratifier"
* group[=].stratifier[=].code.text = "AdultTotal Bed Status"
* group[=].stratifier[=].description = "Stratifies AdultTotal beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultTotalBedStatusStratifier"

///////////// Group AdultICU /////////////
* group[+].id = "AdultICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultICU "Adult ICU Census"  // TODO Replace with a Group Display
* group[=].description = "Adult ICU Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "AdultICU-initial-population"
* group[=].population[initialPopulation].description = "All Adult ICU Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultICUInitialPopulation"
* group[=].population[measurePopulation].id = "AdultICU-measure-population"
* group[=].population[measurePopulation].description = "Total number of Adult ICU Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultICUBeds"
* group[=].population[measureObservation].id = "AdultICU-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultICU-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultICU-bed-status-stratifier"
* group[=].stratifier[=].code.text = "AdultICU Bed Status"
* group[=].stratifier[=].description = "Stratifies AdultICU beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultICUBedStatusStratifier"

///////////// Group AdultICULOC /////////////
* group[+].id = "AdultICULOC-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultICULOC "Adult ICU-LOC Census"  // TODO Replace with a Group Display
* group[=].description = "Adult ICU-LOC Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "AdultICULOC-initial-population"
* group[=].population[initialPopulation].description = "All Adult ICU-LOC Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultICULOCInitialPopulation"
* group[=].population[measurePopulation].id = "AdultICULOC-measure-population"
* group[=].population[measurePopulation].description = "Total number of Adult ICU-LOC Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultICULOCBeds"
* group[=].population[measureObservation].id = "AdultICULOC-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultICULOCBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultICULOC-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultICULOC-bed-status-stratifier"
* group[=].stratifier[=].code.text = "AdultICULOC Bed Status"
* group[=].stratifier[=].description = "Stratifies AdultICULOC beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultICULOCBedStatusStratifier"

///////////// Group AdultNonICU /////////////
* group[+].id = "AdultNonICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultNonICU "Adult Non- ICU Census"  // TODO Replace with a Group Display
* group[=].description = "Adult Non- ICU Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "AdultNonICU-initial-population"
* group[=].population[initialPopulation].description = "All Adult Non- ICU Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultNonICUInitialPopulation"
* group[=].population[measurePopulation].id = "AdultNonICU-measure-population"
* group[=].population[measurePopulation].description = "Total number of Adult Non- ICU Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultNonICUBeds"
* group[=].population[measureObservation].id = "AdultNonICU-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultNonICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultNonICU-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultNonICU-bed-status-stratifier"
* group[=].stratifier[=].code.text = "AdultNonICU Bed Status"
* group[=].stratifier[=].description = "Stratifies AdultNonICU beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultNonICUBedStatusStratifier"

///////////// Group AdultPCU /////////////
* group[+].id = "AdultPCU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultPCU "Adult PCU Census"  // TODO Replace with a Group Display
* group[=].description = "Adult PCU Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "AdultPCU-initial-population"
* group[=].population[initialPopulation].description = "All Adult PCU Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultPCUInitialPopulation"
* group[=].population[measurePopulation].id = "AdultPCU-measure-population"
* group[=].population[measurePopulation].description = "Total number of Adult PCU Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultPCUBeds"
* group[=].population[measureObservation].id = "AdultPCU-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultPCUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultPCU-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultPCU-bed-status-stratifier"
* group[=].stratifier[=].code.text = "AdultPCU Bed Status"
* group[=].stratifier[=].description = "Stratifies AdultPCU beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultPCUBedStatusStratifier"

///////////// Group AdultMTMS /////////////
* group[+].id = "AdultMTMS-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultMTMS "Adult MT/MS Census"  // TODO Replace with a Group Display
* group[=].description = "Adult MT/MS Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "AdultMTMS-initial-population"
* group[=].population[initialPopulation].description = "All Adult MT/MS Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultMTMSInitialPopulation"
* group[=].population[measurePopulation].id = "AdultMTMS-measure-population"
* group[=].population[measurePopulation].description = "Total number of Adult MT/MS Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultMTMSBeds"
* group[=].population[measureObservation].id = "AdultMTMS-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultMTMSBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultMTMS-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultMTMS-bed-status-stratifier"
* group[=].stratifier[=].code.text = "AdultMTMS Bed Status"
* group[=].stratifier[=].description = "Stratifies AdultMTMS beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultMTMSBedStatusStratifier"

///////////// Group AdultObs /////////////
* group[+].id = "AdultObs-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultObs "Adult OBS Census"  // TODO Replace with a Group Display
* group[=].description = "Adult OBS Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "AdultObs-initial-population"
* group[=].population[initialPopulation].description = "All Adult OBS Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultObsInitialPopulation"
* group[=].population[measurePopulation].id = "AdultObs-measure-population"
* group[=].population[measurePopulation].description = "Total number of Adult OBS Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultObsBeds"
* group[=].population[measureObservation].id = "AdultObs-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultObsBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultObs-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultObs-bed-status-stratifier"
* group[=].stratifier[=].code.text = "AdultObs Bed Status"
* group[=].stratifier[=].description = "Stratifies AdultObs beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultObsBedStatusStratifier"

///////////// Group PedsTotal /////////////
* group[+].id = "PedsTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsTotal "Peds Total Census"  // TODO Replace with a Group Display
* group[=].description = "Peds Total Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "PedsTotal-initial-population"
* group[=].population[initialPopulation].description = "All Peds Total Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsTotalInitialPopulation"
* group[=].population[measurePopulation].id = "PedsTotal-measure-population"
* group[=].population[measurePopulation].description = "Total number of Peds Total Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsTotalBeds"
* group[=].population[measureObservation].id = "PedsTotal-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsTotalBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsTotal-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsTotal-bed-status-stratifier"
* group[=].stratifier[=].code.text = "PedsTotal Bed Status"
* group[=].stratifier[=].description = "Stratifies PedsTotal beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsTotalBedStatusStratifier"

///////////// Group PedsICU /////////////
* group[+].id = "PedsICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsICU "Peds ICU Census"  // TODO Replace with a Group Display
* group[=].description = "Peds ICU Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "PedsICU-initial-population"
* group[=].population[initialPopulation].description = "All Peds ICU Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsICUInitialPopulation"
* group[=].population[measurePopulation].id = "PedsICU-measure-population"
* group[=].population[measurePopulation].description = "Total number of Peds ICU Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsICUBeds"
* group[=].population[measureObservation].id = "PedsICU-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsICU-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsICU-bed-status-stratifier"
* group[=].stratifier[=].code.text = "PedsICU Bed Status"
* group[=].stratifier[=].description = "Stratifies PedsICU beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsICUBedStatusStratifier"

///////////// Group PedsICULOC /////////////
* group[+].id = "PedsICULOC-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsICULOC "Peds ICU- LOC Census"  // TODO Replace with a Group Display
* group[=].description = "Peds ICU- LOC Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "PedsICULOC-initial-population"
* group[=].population[initialPopulation].description = "All Peds ICU- LOC Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsICULOCInitialPopulation"
* group[=].population[measurePopulation].id = "PedsICULOC-measure-population"
* group[=].population[measurePopulation].description = "Total number of Peds ICU- LOC Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsICULOCBeds"
* group[=].population[measureObservation].id = "PedsICULOC-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsICULOCBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsICULOC-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsICULOC-bed-status-stratifier"
* group[=].stratifier[=].code.text = "PedsICULOC Bed Status"
* group[=].stratifier[=].description = "Stratifies PedsICULOC beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsICULOCBedStatusStratifier"

///////////// Group PedsNonICU /////////////
* group[+].id = "PedsNonICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsNonICU "Peds Non- ICU Census"  // TODO Replace with a Group Display
* group[=].description = "Peds Non- ICU Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "PedsNonICU-initial-population"
* group[=].population[initialPopulation].description = "All Peds Non- ICU Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsNonICUInitialPopulation"
* group[=].population[measurePopulation].id = "PedsNonICU-measure-population"
* group[=].population[measurePopulation].description = "Total number of Peds Non- ICU Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsNonICUBeds"
* group[=].population[measureObservation].id = "PedsNonICU-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsNonICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsNonICU-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsNonICU-bed-status-stratifier"
* group[=].stratifier[=].code.text = "PedsNonICU Bed Status"
* group[=].stratifier[=].description = "Stratifies PedsNonICU beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsNonICUBedStatusStratifier"

///////////// Group PedsPCU /////////////
* group[+].id = "PedsPCU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsPCU "Peds PCU Census"  // TODO Replace with a Group Display
* group[=].description = "Peds PCU Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "PedsPCU-initial-population"
* group[=].population[initialPopulation].description = "All Peds PCU Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsPCUInitialPopulation"
* group[=].population[measurePopulation].id = "PedsPCU-measure-population"
* group[=].population[measurePopulation].description = "Total number of Peds PCU Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsPCUBeds"
* group[=].population[measureObservation].id = "PedsPCU-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsPCUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsPCU-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsPCU-bed-status-stratifier"
* group[=].stratifier[=].code.text = "PedsPCU Bed Status"
* group[=].stratifier[=].description = "Stratifies PedsPCU beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsPCUBedStatusStratifier"

///////////// Group PedsMTMS /////////////
* group[+].id = "PedsMTMS-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsMTMS "Peds MT/MS Census"  // TODO Replace with a Group Display
* group[=].description = "Peds MT/MS Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "PedsMTMS-initial-population"
* group[=].population[initialPopulation].description = "All Peds MT/MS Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsMTMSInitialPopulation"
* group[=].population[measurePopulation].id = "PedsMTMS-measure-population"
* group[=].population[measurePopulation].description = "Total number of Peds MT/MS Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsMTMSBeds"
* group[=].population[measureObservation].id = "PedsMTMS-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsMTMSBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsMTMS-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsMTMS-bed-status-stratifier"
* group[=].stratifier[=].code.text = "PedsMTMS Bed Status"
* group[=].stratifier[=].description = "Stratifies PedsMTMS beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsMTMSBedStatusStratifier"

///////////// Group PedsObs /////////////
* group[+].id = "PedsObs-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsObs "Peds OBS Census"  // TODO Replace with a Group Display
* group[=].description = "Peds OBS Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "PedsObs-initial-population"
* group[=].population[initialPopulation].description = "All Peds OBS Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsObsInitialPopulation"
* group[=].population[measurePopulation].id = "PedsObs-measure-population"
* group[=].population[measurePopulation].description = "Total number of Peds OBS Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsObsBeds"
* group[=].population[measureObservation].id = "PedsObs-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsObsBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsObs-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsObs-bed-status-stratifier"
* group[=].stratifier[=].code.text = "PedsObs Bed Status"
* group[=].stratifier[=].description = "Stratifies PedsObs beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsObsBedStatusStratifier"

///////////// Group SpecialtyTotal /////////////
* group[+].id = "SpecialtyTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SpecialtyTotal "Specialty Total Census"  // TODO Replace with a Group Display
* group[=].description = "Specialty Total Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "SpecialtyTotal-initial-population"
* group[=].population[initialPopulation].description = "All Specialty Total Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SpecialtyTotalInitialPopulation"
* group[=].population[measurePopulation].id = "SpecialtyTotal-measure-population"
* group[=].population[measurePopulation].description = "Total number of Specialty Total Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSpecialtyTotalBeds"
* group[=].population[measureObservation].id = "SpecialtyTotal-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSpecialtyTotalBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SpecialtyTotal-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SpecialtyTotal-bed-status-stratifier"
* group[=].stratifier[=].code.text = "SpecialtyTotal Bed Status"
* group[=].stratifier[=].description = "Stratifies SpecialtyTotal beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SpecialtyTotalBedStatusStratifier"

///////////// Group SpecialtyNonCrib /////////////
* group[+].id = "SpecialtyNonCrib-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SpecialtyNonCrib "Specialty (Non-Crib) Census"  // TODO Replace with a Group Display
* group[=].description = "Specialty (Non-Crib) Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "SpecialtyNonCrib-initial-population"
* group[=].population[initialPopulation].description = "All Specialty (Non-Crib) Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SpecialtyNonCribInitialPopulation"
* group[=].population[measurePopulation].id = "SpecialtyNonCrib-measure-population"
* group[=].population[measurePopulation].description = "Total number of Specialty (Non-Crib) Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSpecialtyNonCribBeds"
* group[=].population[measureObservation].id = "SpecialtyNonCrib-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSpecialtyNonCribBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SpecialtyNonCrib-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SpecialtyNonCrib-bed-status-stratifier"
* group[=].stratifier[=].code.text = "SpecialtyNonCrib Bed Status"
* group[=].stratifier[=].description = "Stratifies SpecialtyNonCrib beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SpecialtyNonCribBedStatusStratifier"

///////////// Group OB /////////////
* group[+].id = "OB-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#OB "Specialty OB Census"  // TODO Replace with a Group Display
* group[=].description = "Specialty OB Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "OB-initial-population"
* group[=].population[initialPopulation].description = "All Specialty OB Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "OBInitialPopulation"
* group[=].population[measurePopulation].id = "OB-measure-population"
* group[=].population[measurePopulation].description = "Total number of Specialty OB Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalOBBeds"
* group[=].population[measureObservation].id = "OB-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedOBBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "OB-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "OB-bed-status-stratifier"
* group[=].stratifier[=].code.text = "OB Bed Status"
* group[=].stratifier[=].description = "Stratifies OB beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "OBBedStatusStratifier"

///////////// Group NICU /////////////
* group[+].id = "NICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU "Specialty NICU Census"  // TODO Replace with a Group Display
* group[=].description = "Specialty NICU Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "NICU-initial-population"
* group[=].population[initialPopulation].description = "All Specialty NICU Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NICUInitialPopulation"
* group[=].population[measurePopulation].id = "NICU-measure-population"
* group[=].population[measurePopulation].description = "Total number of Specialty NICU Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNICUBeds"
* group[=].population[measureObservation].id = "NICU-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NICU-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NICU-bed-status-stratifier"
* group[=].stratifier[=].code.text = "NICU Bed Status"
* group[=].stratifier[=].description = "Stratifies NICU beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NICUBedStatusStratifier"

///////////// Group NICU4 /////////////
* group[+].id = "NICU4-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU4 "Specialty NICU 4 Census"  // TODO Replace with a Group Display
* group[=].description = "Specialty NICU 4 Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "NICU4-initial-population"
* group[=].population[initialPopulation].description = "All Specialty NICU 4 Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NICU4InitialPopulation"
* group[=].population[measurePopulation].id = "NICU4-measure-population"
* group[=].population[measurePopulation].description = "Total number of Specialty NICU 4 Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNICU4Beds"
* group[=].population[measureObservation].id = "NICU4-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNICU4Beds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NICU4-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NICU4-bed-status-stratifier"
* group[=].stratifier[=].code.text = "NICU4 Bed Status"
* group[=].stratifier[=].description = "Stratifies NICU4 beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NICU4BedStatusStratifier"

///////////// Group NICU3 /////////////
* group[+].id = "NICU3-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU3 "Specialty NICU 3 Occupied"  // TODO Replace with a Group Display
* group[=].description = "Specialty NICU 3 Occupied bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "NICU3-initial-population"
* group[=].population[initialPopulation].description = "All Specialty NICU 3 Occupied"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NICU3InitialPopulation"
* group[=].population[measurePopulation].id = "NICU3-measure-population"
* group[=].population[measurePopulation].description = "Total number of Specialty NICU 3 Occupied beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNICU3Beds"
* group[=].population[measureObservation].id = "NICU3-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNICU3Beds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NICU3-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NICU3-bed-status-stratifier"
* group[=].stratifier[=].code.text = "NICU3 Bed Status"
* group[=].stratifier[=].description = "Stratifies NICU3 beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NICU3BedStatusStratifier"

///////////// Group NICU3Plus /////////////
* group[+].id = "NICU3Plus-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU3Plus "Specialty NICU 3 Plus Census"  // TODO Replace with a Group Display
* group[=].description = "Specialty NICU 3 Plus Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "NICU3Plus-initial-population"
* group[=].population[initialPopulation].description = "All Specialty NICU 3 Plus Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NICU3PlusInitialPopulation"
* group[=].population[measurePopulation].id = "NICU3Plus-measure-population"
* group[=].population[measurePopulation].description = "Total number of Specialty NICU 3 Plus Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNICU3PlusBeds"
* group[=].population[measureObservation].id = "NICU3Plus-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNICU3PlusBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NICU3Plus-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NICU3Plus-bed-status-stratifier"
* group[=].stratifier[=].code.text = "NICU3Plus Bed Status"
* group[=].stratifier[=].description = "Stratifies NICU3Plus beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NICU3PlusBedStatusStratifier"

///////////// Group NICU2 /////////////
* group[+].id = "NICU2-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU2 "Specialty NICU 2 Census"  // TODO Replace with a Group Display
* group[=].description = "Specialty NICU 2 Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "NICU2-initial-population"
* group[=].population[initialPopulation].description = "All Specialty NICU 2 Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NICU2InitialPopulation"
* group[=].population[measurePopulation].id = "NICU2-measure-population"
* group[=].population[measurePopulation].description = "Total number of Specialty NICU 2 Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNICU2Beds"
* group[=].population[measureObservation].id = "NICU2-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNICU2Beds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NICU2-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NICU2-bed-status-stratifier"
* group[=].stratifier[=].code.text = "NICU2 Bed Status"
* group[=].stratifier[=].description = "Stratifies NICU2 beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NICU2BedStatusStratifier"

///////////// Group Nursery /////////////
* group[+].id = "Nursery-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#Nursery "Specialty Nursery Census"  // TODO Replace with a Group Display
* group[=].description = "Specialty Nursery Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "Nursery-initial-population"
* group[=].population[initialPopulation].description = "All Specialty Nursery Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NurseryInitialPopulation"
* group[=].population[measurePopulation].id = "Nursery-measure-population"
* group[=].population[measurePopulation].description = "Total number of Specialty Nursery Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNurseryBeds"
* group[=].population[measureObservation].id = "Nursery-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNurseryBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "Nursery-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "Nursery-bed-status-stratifier"
* group[=].stratifier[=].code.text = "Nursery Bed Status"
* group[=].stratifier[=].description = "Stratifies Nursery beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NurseryBedStatusStratifier"

///////////// Group NICU1 /////////////
* group[+].id = "NICU1-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU1 "Specialty NICU 1 Census"  // TODO Replace with a Group Display
* group[=].description = "Specialty NICU 1 Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "NICU1-initial-population"
* group[=].population[initialPopulation].description = "All Specialty NICU 1 Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NICU1InitialPopulation"
* group[=].population[measurePopulation].id = "NICU1-measure-population"
* group[=].population[measurePopulation].description = "Total number of Specialty NICU 1 Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNICU1Beds"
* group[=].population[measureObservation].id = "NICU1-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNICU1Beds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NICU1-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NICU1-bed-status-stratifier"
* group[=].stratifier[=].code.text = "NICU1 Bed Status"
* group[=].stratifier[=].description = "Stratifies NICU1 beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NICU1BedStatusStratifier"

///////////// Group AdultPsych /////////////
* group[+].id = "AdultPsych-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultPsych "Specialty Adult Psych Census"  // TODO Replace with a Group Display
* group[=].description = "Specialty Adult Psych Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "AdultPsych-initial-population"
* group[=].population[initialPopulation].description = "All Specialty Adult Psych Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultPsychInitialPopulation"
* group[=].population[measurePopulation].id = "AdultPsych-measure-population"
* group[=].population[measurePopulation].description = "Total number of Specialty Adult Psych Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultPsychBeds"
* group[=].population[measureObservation].id = "AdultPsych-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultPsychBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultPsych-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultPsych-bed-status-stratifier"
* group[=].stratifier[=].code.text = "AdultPsych Bed Status"
* group[=].stratifier[=].description = "Stratifies AdultPsych beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultPsychBedStatusStratifier"

///////////// Group PedsPsych /////////////
* group[+].id = "PedsPsych-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsPsych "Specialty Peds Psych Census"  // TODO Replace with a Group Display
* group[=].description = "Specialty Peds Psych Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "PedsPsych-initial-population"
* group[=].population[initialPopulation].description = "All Specialty Peds Psych Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsPsychInitialPopulation"
* group[=].population[measurePopulation].id = "PedsPsych-measure-population"
* group[=].population[measurePopulation].description = "Total number of Specialty Peds Psych Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsPsychBeds"
* group[=].population[measureObservation].id = "PedsPsych-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsPsychBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsPsych-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsPsych-bed-status-stratifier"
* group[=].stratifier[=].code.text = "PedsPsych Bed Status"
* group[=].stratifier[=].description = "Stratifies PedsPsych beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsPsychBedStatusStratifier"

///////////// Group Rehab /////////////
* group[+].id = "Rehab-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#Rehab "Specialty Rehab Census"  // TODO Replace with a Group Display
* group[=].description = "Specialty Rehab Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "Rehab-initial-population"
* group[=].population[initialPopulation].description = "All Specialty Rehab Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "RehabInitialPopulation"
* group[=].population[measurePopulation].id = "Rehab-measure-population"
* group[=].population[measurePopulation].description = "Total number of Specialty Rehab Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalRehabBeds"
* group[=].population[measureObservation].id = "Rehab-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedRehabBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "Rehab-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "Rehab-bed-status-stratifier"
* group[=].stratifier[=].code.text = "Rehab Bed Status"
* group[=].stratifier[=].description = "Stratifies Rehab beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "RehabBedStatusStratifier"

///////////// Group SurgeActiveTotal /////////////
* group[+].id = "SurgeActiveTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeActiveTotal "Surge Total Active Census"  // TODO Replace with a Group Display
* group[=].description = "Surge Total Active Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "SurgeActiveTotal-initial-population"
* group[=].population[initialPopulation].description = "All Surge Total Active Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SurgeActiveTotalInitialPopulation"
* group[=].population[measurePopulation].id = "SurgeActiveTotal-measure-population"
* group[=].population[measurePopulation].description = "Total number of Surge Total Active Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSurgeActiveTotalBeds"
* group[=].population[measureObservation].id = "SurgeActiveTotal-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSurgeActiveTotalBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SurgeActiveTotal-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SurgeActiveTotal-bed-status-stratifier"
* group[=].stratifier[=].code.text = "SurgeActiveTotal Bed Status"
* group[=].stratifier[=].description = "Stratifies SurgeActiveTotal beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SurgeActiveTotalBedStatusStratifier"

///////////// Group SurgeInactiveTotal /////////////
* group[+].id = "SurgeInactiveTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeInactiveTotal "Surge Total Inactive Occupied"  // TODO Replace with a Group Display
* group[=].description = "Surge Total Inactive Occupied bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "SurgeInactiveTotal-initial-population"
* group[=].population[initialPopulation].description = "All Surge Total Inactive Occupied"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SurgeInactiveTotalInitialPopulation"
* group[=].population[measurePopulation].id = "SurgeInactiveTotal-measure-population"
* group[=].population[measurePopulation].description = "Total number of Surge Total Inactive Occupied beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSurgeInactiveTotalBeds"
* group[=].population[measureObservation].id = "SurgeInactiveTotal-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSurgeInactiveTotalBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SurgeInactiveTotal-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SurgeInactiveTotal-bed-status-stratifier"
* group[=].stratifier[=].code.text = "SurgeInactiveTotal Bed Status"
* group[=].stratifier[=].description = "Stratifies SurgeInactiveTotal beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SurgeInactiveTotalBedStatusStratifier"

///////////// Group SurgeActiveICU /////////////
* group[+].id = "SurgeActiveICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeActiveICU "Surge ICU Active Census"  // TODO Replace with a Group Display
* group[=].description = "Surge ICU Active Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "SurgeActiveICU-initial-population"
* group[=].population[initialPopulation].description = "All Surge ICU Active Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SurgeActiveICUInitialPopulation"
* group[=].population[measurePopulation].id = "SurgeActiveICU-measure-population"
* group[=].population[measurePopulation].description = "Total number of Surge ICU Active Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSurgeActiveICUBeds"
* group[=].population[measureObservation].id = "SurgeActiveICU-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSurgeActiveICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SurgeActiveICU-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SurgeActiveICU-bed-status-stratifier"
* group[=].stratifier[=].code.text = "SurgeActiveICU Bed Status"
* group[=].stratifier[=].description = "Stratifies SurgeActiveICU beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SurgeActiveICUBedStatusStratifier"

///////////// Group SurgeInactiveICU /////////////
* group[+].id = "SurgeInactiveICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeInactiveICU "Surge ICU Inactive Occupied"  // TODO Replace with a Group Display
* group[=].description = "Surge ICU Inactive Occupied bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "SurgeInactiveICU-initial-population"
* group[=].population[initialPopulation].description = "All Surge ICU Inactive Occupied"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SurgeInactiveICUInitialPopulation"
* group[=].population[measurePopulation].id = "SurgeInactiveICU-measure-population"
* group[=].population[measurePopulation].description = "Total number of Surge ICU Inactive Occupied beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSurgeInactiveICUBeds"
* group[=].population[measureObservation].id = "SurgeInactiveICU-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSurgeInactiveICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SurgeInactiveICU-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SurgeInactiveICU-bed-status-stratifier"
* group[=].stratifier[=].code.text = "SurgeInactiveICU Bed Status"
* group[=].stratifier[=].description = "Stratifies SurgeInactiveICU beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SurgeInactiveICUBedStatusStratifier"

///////////// Group SurgeActiveNonICU /////////////
* group[+].id = "SurgeActiveNonICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeActiveNonICU "Surge Non- ICU Active Census"  // TODO Replace with a Group Display
* group[=].description = "Surge Non- ICU Active Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "SurgeActiveNonICU-initial-population"
* group[=].population[initialPopulation].description = "All Surge Non- ICU Active Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SurgeActiveNonICUInitialPopulation"
* group[=].population[measurePopulation].id = "SurgeActiveNonICU-measure-population"
* group[=].population[measurePopulation].description = "Total number of Surge Non- ICU Active Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSurgeActiveNonICUBeds"
* group[=].population[measureObservation].id = "SurgeActiveNonICU-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSurgeActiveNonICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SurgeActiveNonICU-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SurgeActiveNonICU-bed-status-stratifier"
* group[=].stratifier[=].code.text = "SurgeActiveNonICU Bed Status"
* group[=].stratifier[=].description = "Stratifies SurgeActiveNonICU beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SurgeActiveNonICUBedStatusStratifier"

///////////// Group SurgeInactiveNonICU /////////////
* group[+].id = "SurgeInactiveNonICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeInactiveNonICU "Surge Non- ICU Inactive Occupied"  // TODO Replace with a Group Display
* group[=].description = "Surge Non- ICU Inactive Occupied bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "SurgeInactiveNonICU-initial-population"
* group[=].population[initialPopulation].description = "All Surge Non- ICU Inactive Occupied"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SurgeInactiveNonICUInitialPopulation"
* group[=].population[measurePopulation].id = "SurgeInactiveNonICU-measure-population"
* group[=].population[measurePopulation].description = "Total number of Surge Non- ICU Inactive Occupied beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSurgeInactiveNonICUBeds"
* group[=].population[measureObservation].id = "SurgeInactiveNonICU-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSurgeInactiveNonICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SurgeInactiveNonICU-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SurgeInactiveNonICU-bed-status-stratifier"
* group[=].stratifier[=].code.text = "SurgeInactiveNonICU Bed Status"
* group[=].stratifier[=].description = "Stratifies SurgeInactiveNonICU beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SurgeInactiveNonICUBedStatusStratifier"

///////////// Group Burn /////////////
* group[+].id = "Burn-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#Burn "Burn Bed Census"  // TODO Replace with a Group Display
* group[=].description = "Burn Bed Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "Burn-initial-population"
* group[=].population[initialPopulation].description = "All Burn Bed Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "BurnInitialPopulation"
* group[=].population[measurePopulation].id = "Burn-measure-population"
* group[=].population[measurePopulation].description = "Total number of Burn Bed Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalBurnBeds"
* group[=].population[measureObservation].id = "Burn-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedBurnBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "Burn-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "Burn-bed-status-stratifier"
* group[=].stratifier[=].code.text = "Burn Bed Status"
* group[=].stratifier[=].description = "Stratifies Burn beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "BurnBedStatusStratifier"

///////////// Group NegativePressure /////////////
* group[+].id = "NegativePressure-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NegativePressure "Neg Pressure Bed Census"  // TODO Replace with a Group Display
* group[=].description = "Neg Pressure Bed Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "NegativePressure-initial-population"
* group[=].population[initialPopulation].description = "All Neg Pressure Bed Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NegativePressureInitialPopulation"
* group[=].population[measurePopulation].id = "NegativePressure-measure-population"
* group[=].population[measurePopulation].description = "Total number of Neg Pressure Bed Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNegativePressureBeds"
* group[=].population[measureObservation].id = "NegativePressure-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNegativePressureBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NegativePressure-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NegativePressure-bed-status-stratifier"
* group[=].stratifier[=].code.text = "NegativePressure Bed Status"
* group[=].stratifier[=].description = "Stratifies NegativePressure beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NegativePressureBedStatusStratifier"

///////////// Group AdultED /////////////
* group[+].id = "AdultED-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultED "Adult ED Total Census"  // TODO Replace with a Group Display
* group[=].description = "Adult ED Total Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "AdultED-initial-population"
* group[=].population[initialPopulation].description = "All Adult ED Total Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultEDInitialPopulation"
* group[=].population[measurePopulation].id = "AdultED-measure-population"
* group[=].population[measurePopulation].description = "Total number of Adult ED Total Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultEDBeds"
* group[=].population[measureObservation].id = "AdultED-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultEDBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultED-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultED-bed-status-stratifier"
* group[=].stratifier[=].code.text = "AdultED Bed Status"
* group[=].stratifier[=].description = "Stratifies AdultED beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultEDBedStatusStratifier"

///////////// Group PedsED /////////////
* group[+].id = "PedsED-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsED "Peds ED Census"  // TODO Replace with a Group Display
* group[=].description = "Peds ED Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "PedsED-initial-population"
* group[=].population[initialPopulation].description = "All Peds ED Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsEDInitialPopulation"
* group[=].population[measurePopulation].id = "PedsED-measure-population"
* group[=].population[measurePopulation].description = "Total number of Peds ED Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsEDBeds"
* group[=].population[measureObservation].id = "PedsED-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsEDBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsED-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsED-bed-status-stratifier"
* group[=].stratifier[=].code.text = "PedsED Bed Status"
* group[=].stratifier[=].description = "Stratifies PedsED beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsEDBedStatusStratifier"

///////////// Group TotalED /////////////
* group[+].id = "TotalED-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#TotalED "Total ED Census"  // TODO Replace with a Group Display
* group[=].description = "Total ED Census bed capacity measurement"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].id = "TotalED-initial-population"
* group[=].population[initialPopulation].description = "All Total ED Census"  // TODO Replace with a Group Display
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "TotalEDInitialPopulation"
* group[=].population[measurePopulation].id = "TotalED-measure-population"
* group[=].population[measurePopulation].description = "Total number of Total ED Census beds"  // TODO Replace with a Group Display
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalTotalEDBeds"
* group[=].population[measureObservation].id = "TotalED-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedTotalEDBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "TotalED-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "TotalED-bed-status-stratifier"
* group[=].stratifier[=].code.text = "TotalED Bed Status"
* group[=].stratifier[=].description = "Stratifies TotalED beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "TotalEDBedStatusStratifier"



// Supplemental data elements with required ids
* supplementalData[+].id = "hospital-type"
* supplementalData[=].code.text = "Hospital Type"
* supplementalData[=].description = "Type of healthcare facility"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "HospitalType"
* supplementalData[+].id = "geographic-region"
* supplementalData[=].code.text = "Geographic Region"
* supplementalData[=].description = "Geographic region of the hospital"
* supplementalData[=].criteria.language = #text/cql-identifier
* supplementalData[=].criteria.expression = "GeographicRegion"