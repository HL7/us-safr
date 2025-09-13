library BedCapacityMeasure version '1.0.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1' called FHIRHelpers

codesystem "LocationPhysicalType": 'http://terminology.hl7.org/CodeSystem/location-physical-type'
codesystem "HealthcareCapacity": 'http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes'

valueset "Emergency Department Visit": 'http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.117.1.7.1.292'

code "Bed": 'bd' from "LocationPhysicalType" display 'Bed'
code "HOSP": 'HOSP' from "HealthcareCapacity" display 'Hospital'
code "IRF": 'IRF' from "HealthcareCapacity" display 'Inpatient Rehabilitation'
code "IPF": 'IPF' from "HealthcareCapacity" display 'Inpatient Psychiatric'
code "CHLD": 'CHLD' from "HealthcareCapacity" display 'Children\'s or Pediatric'
code "OTH": 'OTH' from "HealthcareCapacity" display 'Other facility-within-facility or subunit'

parameter "Measurement Period" Interval<DateTime>
    default Interval[@2022-01-01T00:00:00.0, @2022-02-01T00:00:00.0)

context Location

define "Bed Initial Population":
  Location.physicalType ~ "Bed"

// Simplified encounter checking using Location compartment context
define "Has Qualifying Encounter at Location":
  exists(
    [Encounter] Encounter
    where Encounter.period overlaps "Measurement Period"
  )

// Emergency Department encounters at this location
define "ED Encounters At Location":
  exists(
    [Encounter: "Emergency Department Visit"] EDVisit
    where EDVisit.period overlaps "Measurement Period"
    and EDVisit.status in {'arrived', 'triaged', 'in-progress'}
  )

// Simplified location type checking functions
define "LocationIsHOSP":
  exists(Location.type types where types ~ "HOSP")

define "LocationIsIPF":
  exists(Location.type types where types ~ "IPF")

define "LocationIsIRF":
  exists(Location.type types where types ~ "IRF")

define "LocationIsCHLD":
  exists(Location.type types where types ~ "CHLD")

define "LocationIsOTH":
  exists(Location.type types where types ~ "OTH")

// Occupied Stratifier
define "Occupation Stratification":
  if "Has Qualifying Encounter at Location"
    then 'Occupied'
  else 'Not Occupied'

//Emergency Department Stratifier
define "Emergency Department Bed Occupied Stratification":
  if "ED Encounters At Location" then
    'Emergency Department'
  else 'Not Emergency Department'

// Value-Based Stratifiers
define "Bed Type Stratification":
  // Returns the combination of location types as a concatenated string
  Combine(
    Location.type types
      return types.coding[0].code,
    '+'
  )

define "Age Group Stratification":
  // Determines if this is adult, pediatric, or mixed based on location types
  case
    when "LocationIsCHLD" and not ("LocationIsHOSP" or "LocationIsIRF" or "LocationIsIPF")
      then 'Pediatric'
    when "LocationIsCHLD" and ("LocationIsHOSP" or "LocationIsIRF" or "LocationIsIPF")
      then 'Mixed'
    else 'Adult'
  end

define "Care Level Stratification":
  // Determines the level of care based on location type combinations
  case
    when "LocationIsHOSP" and not ("LocationIsIRF" or "LocationIsIPF" or "LocationIsOTH")
      then 'ICU'
    when "LocationIsHOSP" and "LocationIsOTH"
      then 'ICU-LOC'
    when "LocationIsIPF" and "LocationIsOTH"
      then 'PCU'
    when "LocationIsHOSP" and "LocationIsIRF" and "LocationIsOTH"
      then 'MTMS'
    when "LocationIsOTH" and not ("LocationIsHOSP" or "LocationIsIRF" or "LocationIsIPF")
      then 'Observation'
    when "LocationIsIRF" and not ("LocationIsHOSP" or "LocationIsIPF" or "LocationIsOTH")
      then 'Rehabilitation'
    when "LocationIsIPF"
      then 'Psychiatric'
    when "LocationIsIRF" and "LocationIsCHLD"
      then 'Nursery'
    else 'Other'
  end

define "Specialty Unit Stratification":
  // Identifies specific specialty units based on simplified logic
  case
    when "LocationIsHOSP" and "LocationIsIRF" and "LocationIsCHLD" and not "LocationIsOTH"
      then 'NICU-3Plus'
    when "LocationIsHOSP" and "LocationIsIRF" and "LocationIsCHLD" and "LocationIsOTH"
      then 'NICU-1'
    when "LocationIsHOSP" and "LocationIsIRF" and "LocationIsOTH" and not "LocationIsCHLD"
      then 'NICU-4'
    when "LocationIsIRF" and "LocationIsCHLD" and "LocationIsOTH"
      then 'OB'
    when "LocationIsHOSP" and "LocationIsOTH" and not ("LocationIsIRF" or "LocationIsIPF" or "LocationIsCHLD")
      then 'Burn'
    when "LocationIsHOSP" and not ("LocationIsIRF" or "LocationIsIPF" or "LocationIsOTH" or "LocationIsCHLD")
      then 'Negative-Pressure'
    else 'Standard'
  end

define "Surge Status Stratification":
  // Simplified surge status determination
  // Note: This may need additional Location attributes for accurate surge status
  case
    when "LocationIsHOSP" and "LocationIsCHLD" and "LocationIsOTH"
      then 'Surge-Active'
    else 'Standard'
  end
  
/*
 * MODELING CONSIDERATIONS:
 *
 * This CQL assumes beds are modeled as Location resources with:
 * - physicalType of 'bd' (bed) from LocationPhysicalType codesystem
 * - type codes from HealthcareCapacity codesystem indicating facility type
 *
 * Alternative modeling approaches could include:
 * 1. Device resources with deviceType of "bed" and location references
 * 2. Location resources with additional extensions for bed-specific attributes
 * 3. Mixed approach with bed-specific Device resources linked to Location
 *
 * The current approach treats each bed as a Location, which aligns with
 * FHIR's Location compartment model and allows direct encounter-to-bed
 * relationships through encounter.location references.
 *
 * For implementation, consider:
 * - Whether bed-level granularity is needed vs room/unit level
 * - How bed status (occupied/available/out-of-service) is tracked
 * - Integration with bed management systems
 * - Surge capacity representation and activation status
 */