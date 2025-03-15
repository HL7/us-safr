// NHSN Bed Capacity MeasureReport Profile
// This profile defines the structure for reporting hospital bed capacity to NHSN

Profile: NHSNBedCapacityMeasureReport
Parent: MeasureReport // TODO, should this be something like DEQMSummaryMeasureReportProfile?
Id: nhsn-bed-capacity-measure-report
Title: "NHSN Bed Capacity Measure Report"
Description: "This profile defines the structure for a FHIR MeasureReport that submits hospital bed capacity data to the NHSN. It supports multiple bed types (ICU, ED, Pediatric) and provides occupancy and availability metrics to facilitate emergency response coordination."

// Basic Metadata Requirements
* status 1..1 MS
* status ^short = "Status of the measure report"
* status ^definition = "The status of this measure report. Normally, this would be 'complete' when submitting to NHSN."

* type = $measure-report-type#summary
* type 1..1 MS
* type ^short = "Summary report"
* type ^definition = "This is a summary report providing aggregate data at the facility level, with no patient-level details."

* measure 1..1 MS
* measure ^short = "Measure URL"
* measure ^definition = "The measure URL that identifies the specific bed capacity measure being reported."

* date 1..1 MS
* date ^short = "Date and time the report was generated"
* date ^definition = "The date and time that the report was generated, which is critical for emergency response coordination."

* period 1..1 MS
* period.start 1..1 MS
* period.end 1..1 MS
* period ^short = "Period covered by the report"
* period ^definition = "The time period for which the bed capacity data is being reported."

// Subject and Reporter
* subject 1..1 MS
* subject only Reference(Location)
* subject ^short = "Hospital facility location"
* subject ^definition = "Reference to the Location resource representing the hospital facility being reported on."

* reporter 1..1 MS
* reporter only Reference(Organization)
* reporter ^short = "Organization submitting the report"
* reporter ^definition = "Reference to the Organization resource representing the hospital or healthcare facility submitting the report."

// Required Extensions
* extension contains 
    ReportingFrequency named reportingFrequency 0..1 and
    //$reporting-frequency named reportingFrequency 1..1 MS and
    //$emergency-activation named emergencyActivation 1..1 MS and
    FacilityBedSummary named facilityBedSummary 1..1 MS and
    ReportingTimestamp named reportingTimestamp 1..1 MS

* extension[reportingFrequency] ^short = "Frequency of data reporting"
* extension[reportingFrequency] ^definition = "Specifies how frequently the bed capacity data is being reported (e.g., daily, twice-daily, hourly)."

//* extension[emergencyActivation] ^short = "Emergency activation status"
//* extension[emergencyActivation] ^definition = "Indicates whether this measure is being reported under normal operations or as part of an emergency response activation."

* extension[facilityBedSummary] ^short = "Facility-level bed summary data"
* extension[facilityBedSummary] ^definition = "Provides facility-wide totals across all bed types for quick reference."

* extension[reportingTimestamp] ^short = "Exact time data was reported"
* extension[reportingTimestamp] ^definition = "The precise timestamp when the data was collected or reported, which may differ from the report generation time."

// Group Structure - Must have at least 3 groups (ICU, ED, Pediatric)
* group 3..* MS
* group ^slicing.discriminator.type = #pattern
* group ^slicing.discriminator.path = "code"
* group ^slicing.rules = #open
* group ^slicing.description = "Slicing based on bed type code"
* group ^short = "Bed type reporting groups"
* group ^definition = "Separate groups for each bed type being reported (ICU, ED, Pediatric, etc.)."

* group.id 1..1 MS
* group.code 1..1 MS
* group.code from BedTypeVS (extensible)
* group.measureScore 1..1 MS
* group.measureScore.value 1..1 MS
* group.measureScore.unit = "%"
* group.measureScore.code = #%
* group.measureScore.system = "http://unitsofmeasure.org"

// Required groups for each bed type
* group contains 
    icuGroup 1..1 MS and
    edGroup 1..1 MS and
    pediatricGroup 1..1 MS

* group[icuGroup].code = http://hl7.org/fhir/us/safr/CodeSystem/SAFRHealthareCapacityCSExample#ICU "Intensive Care Unit"
* group[icuGroup] ^short = "ICU bed capacity"
* group[icuGroup] ^definition = "Reporting group for ICU bed capacity data."

* group[edGroup].code = http://hl7.org/fhir/us/safr/CodeSystem/SAFRHealthareCapacityCSExample#ED "Emergency Department"
* group[edGroup] ^short = "ED bed capacity"
* group[edGroup] ^definition = "Reporting group for Emergency Department bed capacity data."

* group[pediatricGroup].code = http://hl7.org/fhir/us/safr/CodeSystem/SAFRHealthareCapacityCSExample#PEDS "Pediatric"
* group[pediatricGroup] ^short = "Pediatric bed capacity"
* group[pediatricGroup] ^definition = "Reporting group for Pediatric bed capacity data."

// Population Structure Requirements
* group.population 3..4 MS
* group.population ^slicing.discriminator.type = #value
* group.population ^slicing.discriminator.path = "code.coding.code"
* group.population ^slicing.rules = #closed
* group.population ^slicing.description = "Slicing based on the population code"
* group.population ^short = "Population criteria for each bed type"
* group.population ^definition = "The populations that make up the group, one for each type of population relevant to the measure."
* group.population.id 1..1 MS
* group.population.code 1..1 MS
* group.population.count 1..1 MS

// Require specific populations
* group.population contains 
    initialPopulation 1..1 MS and
    measurePopulation 1..1 MS and
    measureObservation 1..1 MS

* group.population[initialPopulation].code = $measure-population#initial-population
* group.population[initialPopulation] ^short = "All beds of this type"
* group.population[initialPopulation] ^definition = "The total count of beds of this specific type in the facility."

* group.population[measurePopulation].code = $measure-population#measure-population
* group.population[measurePopulation] ^short = "Total beds of this type"
* group.population[measurePopulation] ^definition = "The total number of beds of this type to be measured (may equal initial population)."

* group.population[measureObservation].code = $measure-population#measure-observation
* group.population[measureObservation] ^short = "Occupied beds of this type"
* group.population[measureObservation] ^definition = "The number of beds of this type that are currently occupied."

// Stratification Requirements
* group.stratifier 1..* MS
* group.stratifier.id 1..1 MS
* group.stratifier.code 1..1 MS
* group.stratifier.stratum 2..2 MS
* group.stratifier.stratum.value 1..1 MS
* group.stratifier.stratum.population 1..* MS
* group.stratifier.stratum.population.code 1..1 MS
* group.stratifier.stratum.population.count 1..1 MS
* group.stratifier.stratum.population.id 1..1 MS
* group.stratifier ^short = "Bed status stratification"
* group.stratifier ^definition = "Stratifies beds by their occupancy status (occupied vs. available)."

// Define custom extensions
Extension: FacilityBedSummary
Id: facility-bed-summary-extension
Title: "Facility Bed Summary Extension"
Description: "Facility-wide summary of bed capacity across all bed types"
* extension contains
    totalBeds 1..1 MS and
    occupiedBeds 1..1 MS and
    availableBeds 1..1 MS and
    overallOccupancyRate 1..1 MS
* extension[totalBeds].value[x] only integer
* extension[totalBeds] ^short = "Total beds across all types"
* extension[occupiedBeds].value[x] only integer
* extension[occupiedBeds] ^short = "Total occupied beds across all types"
* extension[availableBeds].value[x] only integer
* extension[availableBeds] ^short = "Total available beds across all types"
* extension[overallOccupancyRate].value[x] only decimal
* extension[overallOccupancyRate] ^short = "Overall facility occupancy rate (%)"

Extension: ReportingTimestamp
Id: reporting-timestamp-extension
Title: "Reporting Timestamp Extension"
Description: "The exact time when the bed capacity data was collected or observed"
* value[x] only dateTime