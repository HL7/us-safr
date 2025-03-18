// Corrected Hospital Multi-Bed Type Capacity Measure
// Fixing extension URL issues

Profile: UsSafrMultiBedTypeMeasure
Parent: CQFMContinuousVariableMeasure|4.0.0
Id: us-safr-multi-bed-type-measure
Title: "US SAFR Multi-Bed Type Measure"
Description: "This profile defines a measure for monitoring hospital capacity across multiple bed types (ICU, ED, and Pediatric) for the NHSN Connectivity Initiative. It tracks occupied and unoccupied beds to support situational awareness, capacity planning, and load balancing during normal operations and emergencies."

* version 1..1 MS
* version ^short = "Business version of the measure"
* version ^definition = "The business version of the measure - sequential, with values 'draft', 'active', etc."

* status ^short = "draft | active | retired | unknown"
* status ^definition = "The status of this measure. Enables tracking the life-cycle of the content."

* experimental ^short = "For testing purposes, not real usage"
* experimental ^definition = "A Boolean value to indicate that this measure is authored for testing purposes (or education/evaluation/marketing) and is not intended for production usage."

* topic from BedCapacityTopicVS (extensible)
* topic ^short = "Classification of measure content"
* topic ^definition = "Descriptive topics related to the measure, such as bed capacity, resource utilization, emergency preparedness, etc."

* library ^short = "Logic used by the measure"
* library ^definition = "The CQL library that provides the logic for this measure."

* scoring = $measure-scoring#continuous-variable
* scoring ^short = "continuous-variable"
* scoring ^definition = "This scoring method is used to provide a continuous value from the measure."

* extension contains 
    ReportingFrequency named reportingFrequency 0..1
* extension[reportingFrequency] ^short = "Reporting Frequency"
* extension[reportingFrequency] ^definition = "Specifies how frequently the bed capacity data should be reported (e.g., daily, twice-daily, hourly)."

// Add extension for emergency activation - using existing SAFR URL
//* extension contains $emergency-activation named emergencyActivation 0..1 MS
//* extension[emergencyActivation] ^short = "Emergency activation status"
//* extension[emergencyActivation] ^definition = "Indicates whether this measure is being reported under normal operations or as part of an emergency response activation."

// Define the group structure for each bed type
* group 3..* MS
* group ^short = "Population criteria group for each bed type"
* group ^definition = "A group of population criteria for the measure, one for each bed type."
* group.id 1..1 MS
* group.code 1..1 MS
* group.code from BedTypeVS (extensible)
* group.description 0..1 MS

// Reference the existing populations without redefining them
// Instead of creating new slices, we add constraints to existing ones
* group.population MS
* group.population ^short = "Population criteria for the measure"
* group.population ^definition = "The populations that make up the group, one for each type of population relevant to the measure."
* group.population.id 1..1 MS
* group.population.description 0..1 MS
* group.population.criteria 1..1 MS

// Constrain existing population slices
* group.population[initialPopulation] ^short = "Initial Population"
* group.population[initialPopulation] ^definition = "The initial population for the measure. This includes all beds of the specified type."

* group.population[measurePopulation] ^short = "Measure Population"
* group.population[measurePopulation] ^definition = "The measure population for the measure. This includes the total count of beds to be measured."

* group.population[measureObservation] ^short = "Measure Observation"
* group.population[measureObservation] ^definition = "The measure observation for the measure. This includes the data to be evaluated for each item in the measure population."

// Stratifiers
* group.stratifier 0..* MS
* group.stratifier.id 1..1 MS
* group.stratifier.description 0..1 MS
* group.stratifier.criteria 1..1 MS
* group.stratifier ^short = "Stratifier criteria for the measure"
* group.stratifier ^definition = "Stratifiers that define the criteria for breaking the evaluated resources into sub-populations based on specific characteristics."

// Supplemental Data
* supplementalData 0..* MS
* supplementalData.id 1..1 MS
* supplementalData.description 0..1 MS
* supplementalData.criteria 1..1 MS
* supplementalData ^short = "Supplemental data for the measure"
* supplementalData ^definition = "Supplemental data elements to be reported with the measure results."

// Define value sets and extensions
ValueSet: BedCapacityTopicVS
Id: bed-capacity-topic-vs
Title: "Bed Capacity Topic Value Set"
Description: "Topics related to hospital bed capacity measurement"
* ^experimental = false
* codes from system SAFRHealthareCapacityCSExample


ValueSet: BedCapacityScoringUnitVS
Id: bed-capacity-scoring-unit-vs
Title: "Bed Capacity Scoring Unit Value Set"
Description: "Units for measuring hospital bed capacity"
* ^experimental = false
* $ucum#{Number} "{Number}"
* $ucum#% "percent"
* $ucum#{ratio} "{ratio}"


ValueSet: BedTypeVS
Id: bed-type-vs
Title: "Bed Type Value Set"
Description: "Types of hospital beds"
* ^experimental = false
* codes from system SAFRHealthareCapacityCSExample

ValueSet: ReportingFrequencyVS
Id: reporting-frequency-vs
Title: "Reporting Frequency Value Set"
Description: "Frequency options for bed capacity reporting"
* ^experimental = false
* $ucum#h "per hour"
* $ucum#12.h "per 12 * hour"
* $ucum#d "per day"
* $ucum#wk "per week"


Extension: ReportingFrequency
Id: reporting-frequency-extension
Title: "Reporting Frequency Extension"
Description: "Specifies how frequently the bed capacity data should be reported (e.g., daily, twice-daily, hourly)."
Context: Measure
//* url = $reporting-frequency
* value[x] 1..1
* value[x] ^short = "Frequency of data reporting"
* value[x] ^definition = "Specifies how frequently the bed capacity data should be reported (e.g., daily, twice-daily, hourly)."
* value[x] only CodeableConcept
* value[x] from ReportingFrequencyVS
//* valueCodeableConcept = $ucum#d "per day"

Extension: ScoringUnit
Id: scoring-unit-extension
Title: "Scoring Unit Extension"
Description: "Unit of measure for the scoring of the measure"
Context: Measure
* value[x] 1..1
* value[x] ^short = "Scoring unit"
* value[x] ^definition = "The unit of measure for the scoring of the measure."
* value[x] only CodeableConcept
* value[x] from BedCapacityScoringUnitVS

/*
// Example instance of the profile
Instance: HospitalMultiBedCapacityMeasure
InstanceOf: UsSafrMultiBedTypeMeasure
//Id: hospital-multi-bed-capacity-measure
Title: "Hospital Multi-Bed Type Capacity Measure Example"
Description: "Example of a bed capacity measure for ICU, ED, and Pediatric beds for NHSN reporting"
Usage: #example

// Required elements
* url = "http://hl7.org/fhir/us/safr/StructureDefinition/us-safr-multi-bed-type-measure"
* version = "1.0.0"
* name = "HospitalMultiBedCapacityMeasure"
* title = "Hospital Multi-Bed Type Capacity Measure"
* status = #active
* experimental = false
* date = "2025-03-05"
* publisher = "National Healthcare Safety Network (NHSN)"
* description = "This measure tracks hospital bed capacity including occupied and unoccupied beds across ICU, ED, and Pediatric bed types for emergency response coordination."
* useContext.code = $usage-context-typee#task "Workflow Task"
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
* library = "http://hl7.org/fhir/us/safr/Library/UsSafrLibraryExample"



// Extensions - using the correct SAFR URLs
//* extension[reportingFrequency].url = $reporting-frequency
//* extension[reportingFrequency].valueCodeableConcept = $ucum#d "per day"

//* extension[emergencyActivation].url = $emergency-activation
//* extension[emergencyActivation].valueBoolean = false

// Add scoring unit using cqfm-scoringUnit extension
* extension[+].url = $cqfm-scoringUnit
* extension[=].valueCodeableConcept = $ucum#{Number} "{Number}"

// ICU Bed Group
* group[+].id = "icu-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityCSExample#AdultICULOCOccupied "Adult ICU-LOC Census"
* group[=].description = "ICU bed capacity measurement"

* group[=].population[initialPopulation].id = "icu-initial-population"
* group[=].population[initialPopulation].description = "All ICU beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "ICUInitialPopulation"

* group[=].population[measurePopulation].id = "icu-measure-population"
* group[=].population[measurePopulation].description = "Total number of ICU beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalICUBeds"

* group[=].population[measureObservation].id = "icu-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ICU beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedICUBeds"
* group[=].population[measureObservation].extension[$cqfm-criteriaReference].valueString = "icu-measure-population"
* group[=].population[measureObservation].extension[$cqfm-aggregateMethod].valueCode = $aggregate-method#count "Count"

* group[=].stratifier[+].id = "icu-bed-status-stratifier"
* group[=].stratifier[=].code.text = "ICU Bed Status"
* group[=].stratifier[=].description = "Stratifies ICU beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "ICUBedStatusStratifier"

// ED Bed Group
* group[+].id = "ed-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityCSExample#OBOccupied "Specialty OB Census"
* group[=].description = "ED bed capacity measurement"

* group[=].population[initialPopulation].id = "ed-initial-population"
* group[=].population[initialPopulation].description = "All ED beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "EDInitialPopulation"

* group[=].population[measurePopulation].id = "ed-measure-population"
* group[=].population[measurePopulation].description = "Total number of ED beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalEDBeds"

* group[=].population[measureObservation].id = "ed-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied ED beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedEDBeds"
* group[=].population[measureObservation].extension[$cqfm-criteriaReference].valueString = "ed-measure-population"
* group[=].population[measureObservation].extension[$cqfm-aggregateMethod].valueCode = $aggregate-method#count "Count"

* group[=].stratifier[+].id = "ed-bed-status-stratifier"
* group[=].stratifier[=].code.text = "ED Bed Status"
* group[=].stratifier[=].description = "Stratifies ED beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "EDBedStatusStratifier"

// Pediatric Bed Group
* group[+].id = "peds-bed-capacity-group"
* group[=].code = SAFRHealthareCapacityCSExample#PedsTotalOccupied "Peds Total Census"
* group[=].description = "Pediatric bed capacity measurement"

* group[=].population[initialPopulation].id = "peds-initial-population"
* group[=].population[initialPopulation].description = "All Pediatric beds"
* group[=].population[initialPopulation].criteria.language = #text/cql-identifier
* group[=].population[initialPopulation].criteria.expression = "PediatricsInitialPopulation"

* group[=].population[measurePopulation].id = "peds-measure-population"
* group[=].population[measurePopulation].description = "Total number of Pediatric beds"
* group[=].population[measurePopulation].criteria.language = #text/cql-identifier
* group[=].population[measurePopulation].criteria.expression = "TotalPediatricBeds"

* group[=].population[measureObservation].id = "peds-measure-observation"
* group[=].population[measureObservation].description = "Number of occupied Pediatric beds"
* group[=].population[measureObservation].criteria.language = #text/cql-identifier
* group[=].population[measureObservation].criteria.expression = "OccupiedPediatricBeds"
* group[=].population[measureObservation].extension[$cqfm-criteriaReference].valueString = "peds-measure-population"
* group[=].population[measureObservation].extension[$cqfm-aggregateMethod].valueCode = $aggregate-method#count "Count"

* group[=].stratifier[+].id = "peds-bed-status-stratifier"
* group[=].stratifier[=].code.text = "Pediatric Bed Status"
* group[=].stratifier[=].description = "Stratifies Pediatric beds by occupancy status"
* group[=].stratifier[=].criteria.language = #text/cql-identifier
* group[=].stratifier[=].criteria.expression = "PediatricBedStatusStratifier"

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

*/