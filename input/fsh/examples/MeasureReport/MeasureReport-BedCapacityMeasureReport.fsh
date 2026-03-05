
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
* measure = "http://hl7.org/fhir/us/safr/Measure/BedCapacityMeasure|1.0.0"
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


/*

///////////// Group HOSP /////////////
* group[+].id = "HOSP-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#HOSP
* group[=].population[+].id = "HOSP-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group IRF /////////////
* group[+].id = "IRF-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#IRF
* group[=].population[+].id = "IRF-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group IPF /////////////
* group[+].id = "IPF-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#IPF
* group[=].population[+].id = "IPF-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group CHLD /////////////
* group[+].id = "CHLD-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#CHLD
* group[=].population[+].id = "CHLD-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group OTH /////////////
* group[+].id = "OTH-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#OTH
* group[=].population[+].id = "OTH-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group ICU /////////////
* group[+].id = "ICU-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#ICU
* group[=].population[+].id = "ICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group ED /////////////
* group[+].id = "ED-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#ED
* group[=].population[+].id = "ED-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PEDS /////////////
* group[+].id = "PEDS-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PEDS
* group[=].population[+].id = "PEDS-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group BedCapacityReporting /////////////
* group[+].id = "BedCapacityReporting-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#BedCapacityReporting
* group[=].population[+].id = "BedCapacityReporting-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0


*/

///////////// Group AllBedsOccupied /////////////
* group[+].id = "AllBedsOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AllBedsOccupied
* group[=].population[+].id = "AllBedsOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AllBedsUnoccupied /////////////
* group[+].id = "AllBedsUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AllBedsUnoccupied
* group[=].population[+].id = "AllBedsUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultTotalOccupied /////////////
* group[+].id = "AdultTotalOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultTotalOccupied
* group[=].population[+].id = "AdultTotalOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultTotalUnoccupied /////////////
* group[+].id = "AdultTotalUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultTotalUnoccupied
* group[=].population[+].id = "AdultTotalUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultICUOccupied /////////////
* group[+].id = "AdultICUOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultICUOccupied
* group[=].population[+].id = "AdultICUOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultICUUnoccupied /////////////
* group[+].id = "AdultICUUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultICUUnoccupied
* group[=].population[+].id = "AdultICUUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultICULOCOccupied /////////////
* group[+].id = "AdultICULOCOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultICULOCOccupied
* group[=].population[+].id = "AdultICULOCOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultNonICUOccupied /////////////
* group[+].id = "AdultNonICUOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultNonICUOccupied
* group[=].population[+].id = "AdultNonICUOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultNonICUUnoccupied /////////////
* group[+].id = "AdultNonICUUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultNonICUUnoccupied
* group[=].population[+].id = "AdultNonICUUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultPCUOccupied /////////////
* group[+].id = "AdultPCUOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultPCUOccupied
* group[=].population[+].id = "AdultPCUOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultPCUUnoccupied /////////////
* group[+].id = "AdultPCUUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultPCUUnoccupied
* group[=].population[+].id = "AdultPCUUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultMTMSOccupied /////////////
* group[+].id = "AdultMTMSOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultMTMSOccupied
* group[=].population[+].id = "AdultMTMSOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultMTMSUnoccupied /////////////
* group[+].id = "AdultMTMSUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultMTMSUnoccupied
* group[=].population[+].id = "AdultMTMSUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultObsOccupied /////////////
* group[+].id = "AdultObsOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultObsOccupied
* group[=].population[+].id = "AdultObsOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultObsUnoccupied /////////////
* group[+].id = "AdultObsUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultObsUnoccupied
* group[=].population[+].id = "AdultObsUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsTotalOccupied /////////////
* group[+].id = "PedsTotalOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsTotalOccupied
* group[=].population[+].id = "PedsTotalOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsTotalUnoccupied /////////////
* group[+].id = "PedsTotalUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsTotalUnoccupied
* group[=].population[+].id = "PedsTotalUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsICUOccupied /////////////
* group[+].id = "PedsICUOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsICUOccupied
* group[=].population[+].id = "PedsICUOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsICUUnoccupied /////////////
* group[+].id = "PedsICUUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsICUUnoccupied
* group[=].population[+].id = "PedsICUUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsICULOCOccupied /////////////
* group[+].id = "PedsICULOCOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsICULOCOccupied
* group[=].population[+].id = "PedsICULOCOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsNonICUOccupied /////////////
* group[+].id = "PedsNonICUOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsNonICUOccupied
* group[=].population[+].id = "PedsNonICUOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsNonICUUnoccupied /////////////
* group[+].id = "PedsNonICUUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsNonICUUnoccupied
* group[=].population[+].id = "PedsNonICUUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsPCUOccupied /////////////
* group[+].id = "PedsPCUOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsPCUOccupied
* group[=].population[+].id = "PedsPCUOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsPCUUnoccupied /////////////
* group[+].id = "PedsPCUUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsPCUUnoccupied
* group[=].population[+].id = "PedsPCUUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsMTMSOccupied /////////////
* group[+].id = "PedsMTMSOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsMTMSOccupied
* group[=].population[+].id = "PedsMTMSOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsMTMSUnoccupied /////////////
* group[+].id = "PedsMTMSUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsMTMSUnoccupied
* group[=].population[+].id = "PedsMTMSUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsObsOccupied /////////////
* group[+].id = "PedsObsOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsObsOccupied
* group[=].population[+].id = "PedsObsOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsObsUnoccupied /////////////
* group[+].id = "PedsObsUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsObsUnoccupied
* group[=].population[+].id = "PedsObsUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SpecialtyTotalOccupied /////////////
* group[+].id = "SpecialtyTotalOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SpecialtyTotalOccupied
* group[=].population[+].id = "SpecialtyTotalOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SpecialtyTotalUnoccupied /////////////
* group[+].id = "SpecialtyTotalUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SpecialtyTotalUnoccupied
* group[=].population[+].id = "SpecialtyTotalUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SpecialtyNonCribOccupied /////////////
* group[+].id = "SpecialtyNonCribOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SpecialtyNonCribOccupied
* group[=].population[+].id = "SpecialtyNonCribOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SpecialtyNonCribUnoccupied /////////////
* group[+].id = "SpecialtyNonCribUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SpecialtyNonCribUnoccupied
* group[=].population[+].id = "SpecialtyNonCribUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group OBOccupied /////////////
* group[+].id = "OBOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#OBOccupied
* group[=].population[+].id = "OBOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group OBUnoccupied /////////////
* group[+].id = "OBUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#OBUnoccupied
* group[=].population[+].id = "OBUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NICUOccupied /////////////
* group[+].id = "NICUOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NICUOccupied
* group[=].population[+].id = "NICUOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NICUUnoccupied /////////////
* group[+].id = "NICUUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NICUUnoccupied
* group[=].population[+].id = "NICUUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NICU4Occupied /////////////
* group[+].id = "NICU4Occupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NICU4Occupied
* group[=].population[+].id = "NICU4Occupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NICU4Unoccupied /////////////
* group[+].id = "NICU4Unoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NICU4Unoccupied
* group[=].population[+].id = "NICU4Unoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NICU3Unoccupied /////////////
* group[+].id = "NICU3Unoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NICU3Unoccupied
* group[=].population[+].id = "NICU3Unoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NICU3PlusOccupied /////////////
* group[+].id = "NICU3PlusOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NICU3PlusOccupied
* group[=].population[+].id = "NICU3PlusOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NICU3PlusUnoccupied /////////////
* group[+].id = "NICU3PlusUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NICU3PlusUnoccupied
* group[=].population[+].id = "NICU3PlusUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NICU3Occupied /////////////
* group[+].id = "NICU3Occupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NICU3Occupied
* group[=].population[+].id = "NICU3Occupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NICU2Occupied /////////////
* group[+].id = "NICU2Occupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NICU2Occupied
* group[=].population[+].id = "NICU2Occupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NICU2Unoccupied /////////////
* group[+].id = "NICU2Unoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NICU2Unoccupied
* group[=].population[+].id = "NICU2Unoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NurseryOccupied /////////////
* group[+].id = "NurseryOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NurseryOccupied
* group[=].population[+].id = "NurseryOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NurseryUnoccupied /////////////
* group[+].id = "NurseryUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NurseryUnoccupied
* group[=].population[+].id = "NurseryUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NICU1Occupied /////////////
* group[+].id = "NICU1Occupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NICU1Occupied
* group[=].population[+].id = "NICU1Occupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NICU1Unoccupied /////////////
* group[+].id = "NICU1Unoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NICU1Unoccupied
* group[=].population[+].id = "NICU1Unoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultPsychOccupied /////////////
* group[+].id = "AdultPsychOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultPsychOccupied
* group[=].population[+].id = "AdultPsychOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultPsychUnoccupied /////////////
* group[+].id = "AdultPsychUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultPsychUnoccupied
* group[=].population[+].id = "AdultPsychUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsPsychOccupied /////////////
* group[+].id = "PedsPsychOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsPsychOccupied
* group[=].population[+].id = "PedsPsychOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsPsychUnoccupied /////////////
* group[+].id = "PedsPsychUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsPsychUnoccupied
* group[=].population[+].id = "PedsPsychUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group RehabOccupied /////////////
* group[+].id = "RehabOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#RehabOccupied
* group[=].population[+].id = "RehabOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group RehabUnoccupied /////////////
* group[+].id = "RehabUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#RehabUnoccupied
* group[=].population[+].id = "RehabUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SurgeActiveTotalOccupied /////////////
* group[+].id = "SurgeActiveTotalOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SurgeActiveTotalOccupied
* group[=].population[+].id = "SurgeActiveTotalOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SurgeActiveTotalUnoccupied /////////////
* group[+].id = "SurgeActiveTotalUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SurgeActiveTotalUnoccupied
* group[=].population[+].id = "SurgeActiveTotalUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SurgeInactiveTotalOccupied /////////////
* group[+].id = "SurgeInactiveTotalOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SurgeInactiveTotalOccupied
* group[=].population[+].id = "SurgeInactiveTotalOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SurgeInactiveTotalUnoccupied /////////////
* group[+].id = "SurgeInactiveTotalUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SurgeInactiveTotalUnoccupied
* group[=].population[+].id = "SurgeInactiveTotalUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SurgeActiveICUOccupied /////////////
* group[+].id = "SurgeActiveICUOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SurgeActiveICUOccupied
* group[=].population[+].id = "SurgeActiveICUOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SurgeActiveICUUnoccupied /////////////
* group[+].id = "SurgeActiveICUUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SurgeActiveICUUnoccupied
* group[=].population[+].id = "SurgeActiveICUUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SurgeInactiveICUUnoccupied /////////////
* group[+].id = "SurgeInactiveICUUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SurgeInactiveICUUnoccupied
* group[=].population[+].id = "SurgeInactiveICUUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SurgeActiveNonICUOccupied /////////////
* group[+].id = "SurgeActiveNonICUOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SurgeActiveNonICUOccupied
* group[=].population[+].id = "SurgeActiveNonICUOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SurgeActiveNonICUUnoccupied /////////////
* group[+].id = "SurgeActiveNonICUUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SurgeActiveNonICUUnoccupied
* group[=].population[+].id = "SurgeActiveNonICUUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SurgeInactiveNonICUOccupied /////////////
* group[+].id = "SurgeInactiveNonICUOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SurgeInactiveNonICUOccupied
* group[=].population[+].id = "SurgeInactiveNonICUOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group SurgeInactiveNonICUUnoccupied /////////////
* group[+].id = "SurgeInactiveNonICUUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#SurgeInactiveNonICUUnoccupied
* group[=].population[+].id = "SurgeInactiveNonICUUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group BurnOccupied /////////////
* group[+].id = "BurnOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#BurnOccupied
* group[=].population[+].id = "BurnOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group BurnUnoccupied /////////////
* group[+].id = "BurnUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#BurnUnoccupied
* group[=].population[+].id = "BurnUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NegativePressureOccupied /////////////
* group[+].id = "NegativePressureOccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NegativePressureOccupied
* group[=].population[+].id = "NegativePressureOccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group NegativePressureUnoccupied /////////////
* group[+].id = "NegativePressureUnoccupied-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#NegativePressureUnoccupied
* group[=].population[+].id = "NegativePressureUnoccupied-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultEDCensus /////////////
* group[+].id = "AdultEDCensus-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultEDCensus
* group[=].population[+].id = "AdultEDCensus-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group AdultEDAdmittedCensus /////////////
* group[+].id = "AdultEDAdmittedCensus-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#AdultEDAdmittedCensus
* group[=].population[+].id = "AdultEDAdmittedCensus-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsEDCensus /////////////
* group[+].id = "PedsEDCensus-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsEDCensus
* group[=].population[+].id = "PedsEDCensus-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group PedsEDAdmittedCensus /////////////
* group[+].id = "PedsEDAdmittedCensus-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#PedsEDAdmittedCensus
* group[=].population[+].id = "PedsEDAdmittedCensus-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group TotalEDCensus /////////////
* group[+].id = "TotalEDCensus-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#TotalEDCensus
* group[=].population[+].id = "TotalEDCensus-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group TotalEDAdmittedCensus /////////////
* group[+].id = "TotalEDAdmittedCensus-bed-capacity-group"
* group[=].code = http://hl7.org/fhir/us/safr/CodeSystem/us-safr-bed-capacity-example-codes#TotalEDAdmittedCensus
* group[=].population[+].id = "TotalEDAdmittedCensus-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0
