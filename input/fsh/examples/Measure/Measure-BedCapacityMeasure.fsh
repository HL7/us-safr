Instance: BedCapacityMeasureBundle
InstanceOf: USSafrMeasureBundle
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
* useContext.code = $usage-context-type#task "Workflow Task"
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


///////////// Group Beds /////////////
* group[+].id = "AllBeds-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AllBeds "All Beds"
* group[=].description = "All Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "Beds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "BedsInitialPopulation"
* group[=].population[measurePopulation].id = "Beds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of All Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalBeds"
* group[=].population[measureObservation].id = "Beds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of All Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedBedsBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "Beds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "Beds-status-stratifier"
* group[=].stratifier[=].code.text = "All Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies All Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "BedsStatusStratifier"

///////////// Group AdultTotal /////////////
* group[+].id = "AdultTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultTotal "Adult Total Beds"
* group[=].description = "Adult Total Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "AdultTotalbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Adult Total Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultTotalBedsInitialPopulation"
* group[=].population[measurePopulation].id = "AdultTotalbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Adult Total Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultTotalBeds"
* group[=].population[measureObservation].id = "AdultTotalbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Adult Total Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultTotalAdultTotalBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultTotalbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultTotal-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Adult Total Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Adult Total Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultTotalBedsStatusStratifier"

///////////// Group AdultICU /////////////
* group[+].id = "AdultICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultICU "Adult ICU Beds"
* group[=].description = "Adult ICU Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "AdultICUbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Adult ICU Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultICUBedsInitialPopulation"
* group[=].population[measurePopulation].id = "AdultICUbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Adult ICU Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultICUBeds"
* group[=].population[measureObservation].id = "AdultICUbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Adult ICU Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultICUAdultICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultICUbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultICU-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Adult ICU Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Adult ICU Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultICUBedsStatusStratifier"

///////////// Group AdultICULOC /////////////
* group[+].id = "AdultICULOC-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultICULOC "Adult ICU-LOC Beds"
* group[=].description = "Adult ICU-LOC Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "AdultICULOCbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Adult ICU-LOC Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultICULOCBedsInitialPopulation"
* group[=].population[measurePopulation].id = "AdultICULOCbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Adult ICU-LOC Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultICULOCBeds"
* group[=].population[measureObservation].id = "AdultICULOCbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Adult ICU-LOC Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultICULOCAdultICULOCBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultICULOCbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultICULOC-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Adult ICU-LOC Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Adult ICU-LOC Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultICULOCBedsStatusStratifier"

///////////// Group AdultNonICU /////////////
* group[+].id = "AdultNonICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultNonICU "Adult Non-ICU Beds"
* group[=].description = "Adult Non-ICU Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "AdultNonICUbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Adult Non-ICU Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultNonICUBedsInitialPopulation"
* group[=].population[measurePopulation].id = "AdultNonICUbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Adult Non-ICU Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultNonICUBeds"
* group[=].population[measureObservation].id = "AdultNonICUbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Adult Non-ICU Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultNonICUAdultNonICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultNonICUbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultNonICU-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Adult Non-ICU Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Adult Non-ICU Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultNonICUBedsStatusStratifier"

///////////// Group AdultPCU /////////////
* group[+].id = "AdultPCU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultPCU "Adult PCU Beds"
* group[=].description = "Adult PCU Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "AdultPCUbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Adult PCU Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultPCUBedsInitialPopulation"
* group[=].population[measurePopulation].id = "AdultPCUbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Adult PCU Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultPCUBeds"
* group[=].population[measureObservation].id = "AdultPCUbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Adult PCU Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultPCUAdultPCUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultPCUbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultPCU-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Adult PCU Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Adult PCU Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultPCUBedsStatusStratifier"

///////////// Group AdultMTMS /////////////
* group[+].id = "AdultMTMS-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultMTMS "Adult MT/MS Beds"
* group[=].description = "Adult MT/MS Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "AdultMTMSbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Adult MT/MS Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultMTMSBedsInitialPopulation"
* group[=].population[measurePopulation].id = "AdultMTMSbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Adult MT/MS Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultMTMSBeds"
* group[=].population[measureObservation].id = "AdultMTMSbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Adult MT/MS Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultMTMSAdultMTMSBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultMTMSbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultMTMS-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Adult MT/MS Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Adult MT/MS Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultMTMSBedsStatusStratifier"

///////////// Group AdultObs /////////////
* group[+].id = "AdultObs-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultObs "Adult OBS Beds"
* group[=].description = "Adult OBS Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "AdultObsbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Adult OBS Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultObsBedsInitialPopulation"
* group[=].population[measurePopulation].id = "AdultObsbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Adult OBS Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultObsBeds"
* group[=].population[measureObservation].id = "AdultObsbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Adult OBS Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultObsAdultObsBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultObsbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultObs-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Adult OBS Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Adult OBS Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultObsBedsStatusStratifier"

///////////// Group PedsTotal /////////////
* group[+].id = "PedsTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsTotal "Peds Total Beds"
* group[=].description = "Peds Total Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "PedsTotalbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Peds Total Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsTotalBedsInitialPopulation"
* group[=].population[measurePopulation].id = "PedsTotalbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Peds Total Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsTotalBeds"
* group[=].population[measureObservation].id = "PedsTotalbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Peds Total Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsTotalPedsTotalBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsTotalbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsTotal-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Peds Total Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Peds Total Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsTotalBedsStatusStratifier"

///////////// Group PedsICU /////////////
* group[+].id = "PedsICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsICU "Peds ICU Beds"
* group[=].description = "Peds ICU Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "PedsICUbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Peds ICU Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsICUBedsInitialPopulation"
* group[=].population[measurePopulation].id = "PedsICUbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Peds ICU Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsICUBeds"
* group[=].population[measureObservation].id = "PedsICUbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Peds ICU Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsICUPedsICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsICUbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsICU-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Peds ICU Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Peds ICU Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsICUBedsStatusStratifier"

///////////// Group PedsICULOC /////////////
* group[+].id = "PedsICULOC-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsICULOC "Peds ICU-LOC Beds"
* group[=].description = "Peds ICU-LOC Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "PedsICULOCbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Peds ICU-LOC Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsICULOCBedsInitialPopulation"
* group[=].population[measurePopulation].id = "PedsICULOCbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Peds ICU-LOC Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsICULOCBeds"
* group[=].population[measureObservation].id = "PedsICULOCbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Peds ICU-LOC Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsICULOCPedsICULOCBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsICULOCbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsICULOC-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Peds ICU-LOC Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Peds ICU-LOC Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsICULOCBedsStatusStratifier"

///////////// Group PedsNonICU /////////////
* group[+].id = "PedsNonICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsNonICU "Peds Non-ICU Beds"
* group[=].description = "Peds Non-ICU Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "PedsNonICUbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Peds Non-ICU Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsNonICUBedsInitialPopulation"
* group[=].population[measurePopulation].id = "PedsNonICUbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Peds Non-ICU Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsNonICUBeds"
* group[=].population[measureObservation].id = "PedsNonICUbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Peds Non-ICU Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsNonICUPedsNonICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsNonICUbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsNonICU-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Peds Non-ICU Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Peds Non-ICU Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsNonICUBedsStatusStratifier"

///////////// Group PedsPCU /////////////
* group[+].id = "PedsPCU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsPCU "Peds PCU Beds"
* group[=].description = "Peds PCU Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "PedsPCUbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Peds PCU Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsPCUBedsInitialPopulation"
* group[=].population[measurePopulation].id = "PedsPCUbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Peds PCU Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsPCUBeds"
* group[=].population[measureObservation].id = "PedsPCUbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Peds PCU Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsPCUPedsPCUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsPCUbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsPCU-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Peds PCU Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Peds PCU Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsPCUBedsStatusStratifier"

///////////// Group PedsMTMS /////////////
* group[+].id = "PedsMTMS-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsMTMS "Peds MT/MS Beds"
* group[=].description = "Peds MT/MS Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "PedsMTMSbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Peds MT/MS Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsMTMSBedsInitialPopulation"
* group[=].population[measurePopulation].id = "PedsMTMSbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Peds MT/MS Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsMTMSBeds"
* group[=].population[measureObservation].id = "PedsMTMSbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Peds MT/MS Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsMTMSPedsMTMSBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsMTMSbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsMTMS-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Peds MT/MS Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Peds MT/MS Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsMTMSBedsStatusStratifier"

///////////// Group PedsObs /////////////
* group[+].id = "PedsObs-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsObs "Peds OBS Beds"
* group[=].description = "Peds OBS Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "PedsObsbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Peds OBS Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsObsBedsInitialPopulation"
* group[=].population[measurePopulation].id = "PedsObsbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Peds OBS Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsObsBeds"
* group[=].population[measureObservation].id = "PedsObsbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Peds OBS Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsObsPedsObsBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsObsbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsObs-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Peds OBS Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Peds OBS Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsObsBedsStatusStratifier"

///////////// Group SpecialtyTotal /////////////
* group[+].id = "SpecialtyTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SpecialtyTotal "Specialty Total Beds"
* group[=].description = "Specialty Total Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "SpecialtyTotalbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Specialty Total Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SpecialtyTotalBedsInitialPopulation"
* group[=].population[measurePopulation].id = "SpecialtyTotalbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Specialty Total Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSpecialtyTotalBeds"
* group[=].population[measureObservation].id = "SpecialtyTotalbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Specialty Total Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSpecialtyTotalSpecialtyTotalBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SpecialtyTotalbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SpecialtyTotal-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Specialty Total Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Specialty Total Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SpecialtyTotalBedsStatusStratifier"

///////////// Group SpecialtyNonCrib /////////////
* group[+].id = "SpecialtyNonCrib-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SpecialtyNonCrib "Specialty (Non-Crib) Beds"
* group[=].description = "Specialty (Non-Crib) Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "SpecialtyNonCribbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Specialty (Non-Crib) Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SpecialtyNonCribBedsInitialPopulation"
* group[=].population[measurePopulation].id = "SpecialtyNonCribbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Specialty (Non-Crib) Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSpecialtyNonCribBeds"
* group[=].population[measureObservation].id = "SpecialtyNonCribbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Specialty (Non-Crib) Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSpecialtyNonCribSpecialtyNonCribBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SpecialtyNonCribbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SpecialtyNonCrib-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Specialty (Non-Crib) Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Specialty (Non-Crib) Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SpecialtyNonCribBedsStatusStratifier"

///////////// Group OB /////////////
* group[+].id = "OB-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#OB "Specialty OB Beds"
* group[=].description = "Specialty OB Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "OBbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Specialty OB Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "OBBedsInitialPopulation"
* group[=].population[measurePopulation].id = "OBbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Specialty OB Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalOBBeds"
* group[=].population[measureObservation].id = "OBbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Specialty OB Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedOBOBBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "OBbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "OB-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Specialty OB Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Specialty OB Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "OBBedsStatusStratifier"

///////////// Group NICU /////////////
* group[+].id = "NICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU "Specialty NICU Beds"
* group[=].description = "Specialty NICU Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "NICUbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Specialty NICU Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NICUBedsInitialPopulation"
* group[=].population[measurePopulation].id = "NICUbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Specialty NICU Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNICUBeds"
* group[=].population[measureObservation].id = "NICUbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Specialty NICU Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNICUNICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NICUbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NICU-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Specialty NICU Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Specialty NICU Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NICUBedsStatusStratifier"

///////////// Group NICU4 /////////////
* group[+].id = "NICU4-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU4 "Specialty NICU 4 Beds"
* group[=].description = "Specialty NICU 4 Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "NICU4beds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Specialty NICU 4 Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NICU4BedsInitialPopulation"
* group[=].population[measurePopulation].id = "NICU4beds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Specialty NICU 4 Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNICU4Beds"
* group[=].population[measureObservation].id = "NICU4beds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Specialty NICU 4 Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNICU4NICU4Beds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NICU4beds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NICU4-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Specialty NICU 4 Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Specialty NICU 4 Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NICU4BedsStatusStratifier"

///////////// Group NICU3 /////////////
* group[+].id = "NICU3-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU3 "Specialty NICU 3 Occupied Beds"
* group[=].description = "Specialty NICU 3 Occupied Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "NICU3beds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Specialty NICU 3 Occupied Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NICU3BedsInitialPopulation"
* group[=].population[measurePopulation].id = "NICU3beds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Specialty NICU 3 Occupied Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNICU3Beds"
* group[=].population[measureObservation].id = "NICU3beds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Specialty NICU 3 Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNICU3NICU3Beds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NICU3beds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NICU3-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Specialty NICU 3 Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Specialty NICU 3 Occupied Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NICU3BedsStatusStratifier"

///////////// Group NICU3Plus /////////////
* group[+].id = "NICU3Plus-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU3Plus "Specialty NICU 3 Plus Beds"
* group[=].description = "Specialty NICU 3 Plus Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "NICU3Plusbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Specialty NICU 3 Plus Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NICU3PlusBedsInitialPopulation"
* group[=].population[measurePopulation].id = "NICU3Plusbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Specialty NICU 3 Plus Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNICU3PlusBeds"
* group[=].population[measureObservation].id = "NICU3Plusbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Specialty NICU 3 Plus Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNICU3PlusNICU3PlusBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NICU3Plusbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NICU3Plus-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Specialty NICU 3 Plus Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Specialty NICU 3 Plus Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NICU3PlusBedsStatusStratifier"

///////////// Group NICU2 /////////////
* group[+].id = "NICU2-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU2 "Specialty NICU 2 Beds"
* group[=].description = "Specialty NICU 2 Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "NICU2beds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Specialty NICU 2 Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NICU2BedsInitialPopulation"
* group[=].population[measurePopulation].id = "NICU2beds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Specialty NICU 2 Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNICU2Beds"
* group[=].population[measureObservation].id = "NICU2beds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Specialty NICU 2 Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNICU2NICU2Beds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NICU2beds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NICU2-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Specialty NICU 2 Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Specialty NICU 2 Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NICU2BedsStatusStratifier"

///////////// Group Nursery /////////////
* group[+].id = "Nursery-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#Nursery "Specialty Nursery Beds"
* group[=].description = "Specialty Nursery Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "Nurserybeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Specialty Nursery Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NurseryBedsInitialPopulation"
* group[=].population[measurePopulation].id = "Nurserybeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Specialty Nursery Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNurseryBeds"
* group[=].population[measureObservation].id = "Nurserybeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Specialty Nursery Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNurseryNurseryBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "Nurserybeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "Nursery-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Specialty Nursery Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Specialty Nursery Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NurseryBedsStatusStratifier"

///////////// Group NICU1 /////////////
* group[+].id = "NICU1-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NICU1 "Specialty NICU 1 Beds"
* group[=].description = "Specialty NICU 1 Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "NICU1beds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Specialty NICU 1 Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NICU1BedsInitialPopulation"
* group[=].population[measurePopulation].id = "NICU1beds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Specialty NICU 1 Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNICU1Beds"
* group[=].population[measureObservation].id = "NICU1beds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Specialty NICU 1 Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNICU1NICU1Beds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NICU1beds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NICU1-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Specialty NICU 1 Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Specialty NICU 1 Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NICU1BedsStatusStratifier"

///////////// Group AdultPsych /////////////
* group[+].id = "AdultPsych-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultPsych "Specialty Adult Psych Beds"
* group[=].description = "Specialty Adult Psych Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "AdultPsychbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Specialty Adult Psych Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultPsychBedsInitialPopulation"
* group[=].population[measurePopulation].id = "AdultPsychbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Specialty Adult Psych Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultPsychBeds"
* group[=].population[measureObservation].id = "AdultPsychbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Specialty Adult Psych Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultPsychAdultPsychBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultPsychbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultPsych-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Specialty Adult Psych Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Specialty Adult Psych Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultPsychBedsStatusStratifier"

///////////// Group PedsPsych /////////////
* group[+].id = "PedsPsych-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsPsych "Specialty Peds Psych Beds"
* group[=].description = "Specialty Peds Psych Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "PedsPsychbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Specialty Peds Psych Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsPsychBedsInitialPopulation"
* group[=].population[measurePopulation].id = "PedsPsychbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Specialty Peds Psych Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsPsychBeds"
* group[=].population[measureObservation].id = "PedsPsychbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Specialty Peds Psych Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsPsychPedsPsychBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsPsychbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsPsych-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Specialty Peds Psych Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Specialty Peds Psych Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsPsychBedsStatusStratifier"

///////////// Group Rehab /////////////
* group[+].id = "Rehab-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#Rehab "Specialty Rehab Beds"
* group[=].description = "Specialty Rehab Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "Rehabbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Specialty Rehab Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "RehabBedsInitialPopulation"
* group[=].population[measurePopulation].id = "Rehabbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Specialty Rehab Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalRehabBeds"
* group[=].population[measureObservation].id = "Rehabbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Specialty Rehab Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedRehabRehabBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "Rehabbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "Rehab-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Specialty Rehab Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Specialty Rehab Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "RehabBedsStatusStratifier"

///////////// Group SurgeActiveTotal /////////////
* group[+].id = "SurgeActiveTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeActiveTotal "Surge Total Active Beds"
* group[=].description = "Surge Total Active Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "SurgeActiveTotalbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Surge Total Active Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SurgeActiveTotalBedsInitialPopulation"
* group[=].population[measurePopulation].id = "SurgeActiveTotalbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Surge Total Active Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSurgeActiveTotalBeds"
* group[=].population[measureObservation].id = "SurgeActiveTotalbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Surge Total Active Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSurgeActiveTotalSurgeActiveTotalBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SurgeActiveTotalbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SurgeActiveTotal-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Surge Total Active Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Surge Total Active Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SurgeActiveTotalBedsStatusStratifier"

///////////// Group SurgeInactiveTotal /////////////
* group[+].id = "SurgeInactiveTotal-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeInactiveTotal "Surge Total Inactive Occupied Beds"
* group[=].description = "Surge Total Inactive Occupied Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "SurgeInactiveTotalbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Surge Total Inactive Occupied Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SurgeInactiveTotalBedsInitialPopulation"
* group[=].population[measurePopulation].id = "SurgeInactiveTotalbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Surge Total Inactive Occupied Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSurgeInactiveTotalBeds"
* group[=].population[measureObservation].id = "SurgeInactiveTotalbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Surge Total Inactive Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSurgeInactiveTotalSurgeInactiveTotalBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SurgeInactiveTotalbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SurgeInactiveTotal-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Surge Total Inactive Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Surge Total Inactive Occupied Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SurgeInactiveTotalBedsStatusStratifier"

///////////// Group SurgeActiveICU /////////////
* group[+].id = "SurgeActiveICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeActiveICU "Surge ICU Active Beds"
* group[=].description = "Surge ICU Active Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "SurgeActiveICUbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Surge ICU Active Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SurgeActiveICUBedsInitialPopulation"
* group[=].population[measurePopulation].id = "SurgeActiveICUbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Surge ICU Active Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSurgeActiveICUBeds"
* group[=].population[measureObservation].id = "SurgeActiveICUbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Surge ICU Active Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSurgeActiveICUSurgeActiveICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SurgeActiveICUbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SurgeActiveICU-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Surge ICU Active Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Surge ICU Active Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SurgeActiveICUBedsStatusStratifier"

///////////// Group SurgeInactiveICU /////////////
* group[+].id = "SurgeInactiveICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeInactiveICU "Surge ICU Inactive Occupied Beds"
* group[=].description = "Surge ICU Inactive Occupied Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "SurgeInactiveICUbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Surge ICU Inactive Occupied Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SurgeInactiveICUBedsInitialPopulation"
* group[=].population[measurePopulation].id = "SurgeInactiveICUbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Surge ICU Inactive Occupied Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSurgeInactiveICUBeds"
* group[=].population[measureObservation].id = "SurgeInactiveICUbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Surge ICU Inactive Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSurgeInactiveICUSurgeInactiveICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SurgeInactiveICUbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SurgeInactiveICU-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Surge ICU Inactive Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Surge ICU Inactive Occupied Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SurgeInactiveICUBedsStatusStratifier"

///////////// Group SurgeActiveNonICU /////////////
* group[+].id = "SurgeActiveNonICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeActiveNonICU "Surge Non-ICU Active Beds"
* group[=].description = "Surge Non-ICU Active Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "SurgeActiveNonICUbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Surge Non-ICU Active Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SurgeActiveNonICUBedsInitialPopulation"
* group[=].population[measurePopulation].id = "SurgeActiveNonICUbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Surge Non-ICU Active Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSurgeActiveNonICUBeds"
* group[=].population[measureObservation].id = "SurgeActiveNonICUbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Surge Non-ICU Active Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSurgeActiveNonICUSurgeActiveNonICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SurgeActiveNonICUbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SurgeActiveNonICU-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Surge Non-ICU Active Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Surge Non-ICU Active Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SurgeActiveNonICUBedsStatusStratifier"

///////////// Group SurgeInactiveNonICU /////////////
* group[+].id = "SurgeInactiveNonICU-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#SurgeInactiveNonICU "Surge Non-ICU Inactive Occupied Beds"
* group[=].description = "Surge Non-ICU Inactive Occupied Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "SurgeInactiveNonICUbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Surge Non-ICU Inactive Occupied Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "SurgeInactiveNonICUBedsInitialPopulation"
* group[=].population[measurePopulation].id = "SurgeInactiveNonICUbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Surge Non-ICU Inactive Occupied Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalSurgeInactiveNonICUBeds"
* group[=].population[measureObservation].id = "SurgeInactiveNonICUbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Surge Non-ICU Inactive Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedSurgeInactiveNonICUSurgeInactiveNonICUBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "SurgeInactiveNonICUbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "SurgeInactiveNonICU-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Surge Non-ICU Inactive Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Surge Non-ICU Inactive Occupied Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "SurgeInactiveNonICUBedsStatusStratifier"

///////////// Group Burn /////////////
* group[+].id = "Burn-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#Burn "Burn Beds"
* group[=].description = "Burn Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "Burnbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Burn Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "BurnBedsInitialPopulation"
* group[=].population[measurePopulation].id = "Burnbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Burn Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalBurnBeds"
* group[=].population[measureObservation].id = "Burnbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Burn Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedBurnBurnBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "Burnbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "Burn-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Burn Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Burn Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "BurnBedsStatusStratifier"

///////////// Group NegativePressure /////////////
* group[+].id = "NegativePressure-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#NegativePressure "Neg Pressure Beds"
* group[=].description = "Neg Pressure Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "NegativePressurebeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Neg Pressure Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "NegativePressureBedsInitialPopulation"
* group[=].population[measurePopulation].id = "NegativePressurebeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Neg Pressure Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalNegativePressureBeds"
* group[=].population[measureObservation].id = "NegativePressurebeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Neg Pressure Unoccupied Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedNegativePressureNegativePressureBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "NegativePressurebeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "NegativePressure-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Neg Pressure Unoccupied Beds Status"
* group[=].stratifier[=].description = "Stratifies Neg Pressure Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "NegativePressureBedsStatusStratifier"

///////////// Group AdultED /////////////
* group[+].id = "AdultED-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#AdultED "Adult ED Total Beds"
* group[=].description = "Adult ED Total Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "AdultEDbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Adult ED Total Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "AdultEDBedsInitialPopulation"
* group[=].population[measurePopulation].id = "AdultEDbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Adult ED Total Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalAdultEDBeds"
* group[=].population[measureObservation].id = "AdultEDbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Adult ED Admitted Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedAdultEDAdultEDBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "AdultEDbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "AdultED-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Adult ED Admitted Beds Status"
* group[=].stratifier[=].description = "Stratifies Adult ED Total Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "AdultEDBedsStatusStratifier"

///////////// Group PedsED /////////////
* group[+].id = "PedsED-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#PedsED "Peds ED Beds"
* group[=].description = "Peds ED Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "PedsEDbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Peds ED Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PedsEDBedsInitialPopulation"
* group[=].population[measurePopulation].id = "PedsEDbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Peds ED Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPedsEDBeds"
* group[=].population[measureObservation].id = "PedsEDbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Peds ED Admitted Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPedsEDPedsEDBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "PedsEDbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "PedsED-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Peds ED Admitted Beds Status"
* group[=].stratifier[=].description = "Stratifies Peds ED Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PedsEDBedsStatusStratifier"

///////////// Group TotalED /////////////
* group[+].id = "TotalED-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityGroupCSExample#TotalED "Total ED Beds"
* group[=].description = "Total ED Beds - bed capacity measurement"
* group[=].population[initialPopulation].id = "TotalEDbeds-initial-population"
* group[=].population[initialPopulation].code = $measure-population#initial-population "Initial Population"
* group[=].population[initialPopulation].description = "All Total ED Beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "TotalEDBedsInitialPopulation"
* group[=].population[measurePopulation].id = "TotalEDbeds-measure-population"
* group[=].population[measurePopulation].code = $measure-population#measure-population "Measure Population"
* group[=].population[measurePopulation].description = "Total number of Total ED Beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalTotalEDBeds"
* group[=].population[measureObservation].id = "TotalEDbeds-measure-observation"
* group[=].population[measureObservation].code = $measure-population#measure-observation "Measure Observation"
* group[=].population[measureObservation].description = "Number of Total ED Admitted Beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedTotalEDTotalEDBeds"
* group[=].population[measureObservation].extension[+].url = $cqfm-criteriaReference
* group[=].population[measureObservation].extension[=].valueString = "TotalEDbeds-measure-population"
* group[=].population[measureObservation].extension[+].url = $cqfm-aggregateMethod
* group[=].population[measureObservation].extension[=].valueCode = $aggregate-method#count "Count"
* group[=].stratifier[+].id = "TotalED-beds-status-stratifier"
* group[=].stratifier[=].code.text = "Total ED Admitted Beds Status"
* group[=].stratifier[=].description = "Stratifies Total ED Beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "TotalEDBedsStatusStratifier"



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