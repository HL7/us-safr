
// NHSN Bed Capacity MeasureReport Instance
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

///////////// Group BedsCapacityReporting /////////////
* group[+].id = "bed-capacity-reporting-group"
* group[=].code = BedCapacityExampleCS#BedCapacityReporting "Bed Capacity Reporting"
* group[=].population[+].id = "Bed-capacity-reporting-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 182

///////////// Group Beds /////////////
* group[+].id = "AllBeds-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#AllBeds "All Beds"
* group[=].population[+].id = "Beds-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 182

///////////// Group AdultTotal /////////////
* group[+].id = "AdultTotal-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#AdultTotal "Adult Total Beds"
* group[=].population[+].id = "AdultTotal-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 182


///////////// Group AdultICU /////////////
* group[+].id = "AdultICU-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#AdultICU "Adult ICU Beds"
* group[=].population[+].id = "AdultICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 34


///////////// Group AdultICULOC /////////////
* group[+].id = "AdultICULOC-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#AdultICULOC "Adult ICU-LOC Beds"
* group[=].population[+].id = "AdultICULOC-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 35

///////////// Group AdultNonICU /////////////
* group[+].id = "AdultNonICU-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#AdultNonICU "Adult Non-ICU Beds"
* group[=].population[+].id = "AdultNonICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 302

///////////// Group AdultPCU /////////////
* group[+].id = "AdultPCU-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#AdultPCU "Adult PCU Beds"
* group[=].population[+].id = "AdultPCU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145

///////////// Group AdultMTMS /////////////
* group[+].id = "AdultMTMS-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#AdultMTMS "Adult MT/MS Beds"
* group[=].population[+].id = "AdultMTMS-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3

///////////// Group AdultObs /////////////
* group[+].id = "AdultObs-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#AdultObs "Adult OBS Beds"
* group[=].population[+].id = "AdultObs-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145

///////////// Group PedsTotal /////////////
* group[+].id = "PedsTotal-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#PedsTotal "Peds Total Beds"
* group[=].population[+].id = "PedsTotal-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145

///////////// Group PedsICU /////////////
* group[+].id = "PedsICU-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#PedsICU "Peds ICU Beds"
* group[=].population[+].id = "PedsICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145


///////////// Group PedsICULOC /////////////
* group[+].id = "PedsICULOC-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#PedsICULOC "Peds ICU-LOC Beds"
* group[=].population[+].id = "PedsICULOC-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145


///////////// Group PedsNonICU /////////////
* group[+].id = "PedsNonICU-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#PedsNonICU "Peds Non-ICU Beds"
* group[=].population[+].id = "PedsNonICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145


///////////// Group PedsPCU /////////////
* group[+].id = "PedsPCU-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#PedsPCU "Peds PCU Beds"
* group[=].population[+].id = "PedsPCU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145


///////////// Group PedsMTMS /////////////
* group[+].id = "PedsMTMS-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#PedsMTMS "Peds MT/MS Beds"
* group[=].population[+].id = "PedsMTMS-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145

///////////// Group PedsObs /////////////
* group[+].id = "PedsObs-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#PedsObs "Peds OBS Beds"
* group[=].population[+].id = "PedsObs-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 145

///////////// Group SpecialtyTotal /////////////
* group[+].id = "SpecialtyTotal-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#SpecialtyTotal "Specialty Total Beds"
* group[=].population[+].id = "SpecialtyTotal-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36

///////////// Group SpecialtyNonCrib /////////////
* group[+].id = "SpecialtyNonCrib-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#SpecialtyNonCrib "Specialty (Non-Crib) Beds"
* group[=].population[+].id = "SpecialtyNonCrib-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36

///////////// Group OB /////////////
* group[+].id = "OB-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#OB "Specialty OB Beds"
* group[=].population[+].id = "OB-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36

///////////// Group NICU /////////////
* group[+].id = "NICU-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#NICU "Specialty NICU Beds"
* group[=].population[+].id = "NICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36


///////////// Group NICU4 /////////////
* group[+].id = "NICU4-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#NICU4 "Specialty NICU 4 Beds"
* group[=].population[+].id = "NICU4-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36

///////////// Group NICU3 /////////////
* group[+].id = "NICU3-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#NICU3 "Specialty NICU 3 Occupied Beds"
* group[=].population[+].id = "NICU3-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36

///////////// Group NICU3Plus /////////////
* group[+].id = "NICU3Plus-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#NICU3Plus "Specialty NICU 3 Plus Beds"
* group[=].population[+].id = "NICU3Plus-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36

///////////// Group NICU2 /////////////
* group[+].id = "NICU2-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#NICU2 "Specialty NICU 2 Beds"
* group[=].population[+].id = "NICU2-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36

///////////// Group Nursery /////////////
* group[+].id = "Nursery-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#Nursery "Specialty Nursery Beds"
* group[=].population[+].id = "Nursery-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36

///////////// Group NICU1 /////////////
* group[+].id = "NICU1-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#NICU1 "Specialty NICU 1 Beds"
* group[=].population[+].id = "NICU1-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 36

///////////// Group AdultPsych /////////////
* group[+].id = "AdultPsych-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#AdultPsych "Specialty Adult Psych Beds"
* group[=].population[+].id = "AdultPsych-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 20

///////////// Group PedsPsych /////////////
* group[+].id = "PedsPsych-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#PedsPsych "Specialty Peds Psych Beds"
* group[=].population[+].id = "PedsPsych-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 20

///////////// Group Rehab /////////////
* group[+].id = "Rehab-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#Rehab "Specialty Rehab Beds"
* group[=].population[+].id = "Rehab-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30

///////////// Group SurgeActiveTotal /////////////
* group[+].id = "SurgeActiveTotal-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#SurgeActiveTotal "Surge Total Active Beds"
* group[=].population[+].id = "SurgeActiveTotal-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 20

///////////// Group SurgeInactiveTotal /////////////
* group[+].id = "SurgeInactiveTotal-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#SurgeInactiveTotal "Surge Total Inactive Occupied Beds"
* group[=].population[+].id = "SurgeInactiveTotal-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 20

///////////// Group SurgeActiveICU /////////////
* group[+].id = "SurgeActiveICU-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#SurgeActiveICU "Surge ICU Active Beds"
* group[=].population[+].id = "SurgeActiveICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10

///////////// Group SurgeInactiveICU /////////////
* group[+].id = "SurgeInactiveICU-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#SurgeInactiveICU "Surge ICU Inactive Occupied Beds"
* group[=].population[+].id = "SurgeInactiveICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10

///////////// Group SurgeActiveNonICU /////////////
* group[+].id = "SurgeActiveNonICU-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#SurgeActiveNonICU "Surge Non-ICU Active Beds"
* group[=].population[+].id = "SurgeActiveNonICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10

///////////// Group SurgeInactiveNonICU /////////////
* group[+].id = "SurgeInactiveNonICU-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#SurgeInactiveNonICU "Surge Non-ICU Inactive Occupied Beds"
* group[=].population[+].id = "SurgeInactiveNonICU-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10

///////////// Group Burn /////////////
* group[+].id = "Burn-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#Burn "Burn Beds"
* group[=].population[+].id = "Burn-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10

///////////// Group NegativePressure /////////////
* group[+].id = "NegativePressure-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#NegativePressure "Neg Pressure Beds"
* group[=].population[+].id = "NegativePressure-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10

///////////// Group AdultED /////////////
* group[+].id = "AdultED-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#AdultED "Adult ED Total Beds"
* group[=].population[+].id = "AdultED-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30

///////////// Group PedsED /////////////
* group[+].id = "PedsED-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#PedsED "Peds ED Beds"
* group[=].population[+].id = "PedsED-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30

///////////// Group TotalED /////////////
* group[+].id = "TotalED-bed-capacity-group"
* group[=].code = BedCapacityGroupExampleCS#TotalED "Total ED Beds"
* group[=].population[+].id = "TotalED-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30