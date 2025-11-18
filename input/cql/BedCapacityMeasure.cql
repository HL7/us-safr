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
code "PEDS": 'PEDS' from "HealthcareCapacity" display 'Pediatric'


parameter "Measurement Period" Interval<DateTime>
    default Interval[@2022-01-01T00:00:00.0, @2022-02-01T00:00:00.0)

context Location

define "IsBedLocation":
  Location.physicalType ~ "Bed"

define "Bed Capacity Initial Population":
  IsBedLocation

define "All Beds Initial Population":
  IsBedLocation
  and EncounterCheck

define "Adult Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIRF
  and LocationIsIPF

define "Adult ICU Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP

define "Adult ICULOC Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIPF

define "Adult NonICU Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsOTH
  
define "Adult PCU Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsIPF
  and LocationIsOTH
  
define "Adult MTMS Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIRF
  and LocationIsOTH
  
define "Adult Obs Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsOTH
  
define "Peds Total Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and (LocationIsCHLD or LocationIsPEDS)
  
define "Peds ICU Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and (LocationIsCHLD or LocationIsPEDS)
  
define "Peds ICULOC Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and (LocationIsCHLD or LocationIsPEDS)
  and LocationIsOTH
  
define "Peds NonICU Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsIPF
  and (LocationIsCHLD or LocationIsPEDS)
  and LocationIsOTH
  
define "Peds PCU Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and (LocationIsCHLD or LocationIsPEDS)
  and LocationIsOTH
  
define "Peds MTMS Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIRF
  and (LocationIsCHLD or LocationIsPEDS)
  and LocationIsOTH
  
define "Peds Obs Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIRF
  and (LocationIsCHLD or LocationIsPEDS)
  and LocationIsOTH
  
define "Specialty Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsOTH
  
define "Specialty NonCrib Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIRF
  and LocationIsOTH
  
define "OB Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsIRF
  and (LocationIsCHLD or LocationIsPEDS)
  and LocationIsOTH

define "NICU Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIRF
  and LocationIsOTH
  
define "NICU4 Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIRF
  and LocationIsOTH
  
define "NICU3Plus Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIRF
  and (LocationIsCHLD or LocationIsPEDS)
  
define "NICU3 Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIRF
  and (LocationIsCHLD or LocationIsPEDS)
  
define "NICU2 Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIRF
  and (LocationIsCHLD or LocationIsPEDS)
  
define "NICU1 Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIRF
  and (LocationIsCHLD or LocationIsPEDS)
  and LocationIsOTH
  
define "Nursery Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsIRF
  and (LocationIsCHLD or LocationIsPEDS)
  
define "Adult Psych Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIPF
  and LocationIsOTH
  
define "Peds Psych Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsIPF
  and (LocationIsCHLD or LocationIsPEDS)
  and LocationIsOTH

define "Rehab Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsIRF

define "Surge Active Total Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and (LocationIsCHLD or LocationIsPEDS)
  and LocationIsOTH

define "Surge Inactive Total Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and (LocationIsCHLD or LocationIsPEDS)
  and LocationIsOTH

define "Surge Active ICU Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsOTH

define "Surge Inactive ICU Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsOTH

define "Surge Active NonICU Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and (LocationIsCHLD or LocationIsPEDS)

define "Surge Inactive NonICU Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and (LocationIsCHLD or LocationIsPEDS)

define "Burn Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP
  and LocationIsOTH

define "Negative Pressure Beds Initial Population":
  IsBedLocation
  and EncounterCheck
  and LocationIsHOSP

define "Adult ED Initial Population":
  IsBedLocation
  and exists(
    [Encounter: "Emergency Department Visit"] EDVisit
    where EDVisit.period overlaps "Measurement Period"
  )
  and LocationIsHOSP
  and LocationIsOTH

define "Peds ED Initial Population":
  IsBedLocation
  and exists(
    [Encounter: "Emergency Department Visit"] EDVisit
    where EDVisit.period overlaps "Measurement Period"
  )
  and (LocationIsCHLD or LocationIsPEDS)

define "Total ED Initial Population":
  IsBedLocation
  and exists(
    [Encounter: "Emergency Department Visit"] EDVisit
    where EDVisit.period overlaps "Measurement Period"
  )
  and LocationIsHOSP
  and (LocationIsCHLD or LocationIsPEDS)
  and LocationIsOTH

define "Encounters":
  [Encounter]

define "LocationIsHOSP":
  exists(
    Location.type types
    where types ~ "HOSP"
  )

define "LocationIsIPF":
  exists(
    Location.type types
    where types ~ "IPF"
  )

define "LocationIsIRF":
  exists(
    Location.type types
    where types ~ "IRF"
  )

define "LocationIsCHLD":
  exists(
    Location.type types
    where types ~ "CHLD"
  )

define "LocationIsOTH":
  exists(
    Location.type types
    where types ~ "OTH"
  )

define "LocationIsPEDS":
  exists(
    Location.type types
    where types ~ "PEDS"
  )

define "EncounterCheck":
  exists("Encounters" Encounters
  where Encounters.period overlaps "Measurement Period")