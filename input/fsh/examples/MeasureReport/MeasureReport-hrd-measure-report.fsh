Instance: HRDMeasureReport
InstanceOf: DEQMIndividualMeasureReportProfile
Title: "MeasureReport - HRD MeasureReport Example"
Description: "This Bundle resource is an example of a Hospital Respiratory Data (HRD) MeasureReport."
Usage: #example
// Basic metadata
* status = $measure-report-status#complete
* type = $measure-report-type#individual
* measure = "http://hl7.org/fhir/us/safr/Measure/HRDMeasure|1.0.0"
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



///////////// Group numInPtBeds /////////////
* group[+].id = "numInPtBeds-capacity-group"
* group[=].code = HRDExampleCS#numInPtBeds "Number Inpatient Beds"
* group[=].population[+].id = "numInPtBeds-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 100

* group[=].stratifier[+].id = "numConfC19NewAdmUnk-stratifier"
* group[=].stratifier[=].code = HRDExampleCS#numConfC19NewAdmUnk 
* group[=].stratifier[=].stratum[+].value.text = "0"

* group[=].stratifier[+].id = "numConfFluNewAdmUnk-stratifier"
* group[=].stratifier[=].code = HRDExampleCS#numConfFluNewAdmUnk 
* group[=].stratifier[=].stratum[+].value.text = "0"

* group[=].stratifier[+].id = "numConfRSVNewAdmUnk-stratifier"
* group[=].stratifier[=].code = HRDExampleCS#numConfRSVNewAdmUnk 
* group[=].stratifier[=].stratum[+].value.text = "0"



///////////// Group numInPtBedsAdult /////////////
* group[+].id = "numInPtBedsAdult-capacity-group"
* group[=].code = HRDExampleCS#numInPtBedsAdult 
* group[=].population[+].id = "numInPtBedsAdult-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 80


///////////// Group numInPtBedsPed /////////////
* group[+].id = "numInPtBedsPed-capacity-group"
* group[=].code = HRDExampleCS#numInPtBedsPed 
* group[=].population[+].id = "numInPtBedsPed-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 20


///////////// Group numInPtBedsOcc /////////////
* group[+].id = "numInPtBedsOcc-capacity-group"
* group[=].code = HRDExampleCS#numInPtBedsOcc 
* group[=].population[+].id = "numInPtBedsOcc-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 100

///////////// Group numInPtBedsOccAdult /////////////
* group[+].id = "numInPtBedsOccAdult-capacity-group"
* group[=].code = HRDExampleCS#numInPtBedsOccAdult 
* group[=].population[+].id = "numInPtBedsOccAdult-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 80

///////////// Group numInPtBedsOccPed /////////////
* group[+].id = "numInPtBedsOccPed-capacity-group"
* group[=].code = HRDExampleCS#numInPtBedsOccPed 
* group[=].population[+].id = "numInPtBedsOccPed-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 20

///////////// Group numICUBeds /////////////
* group[+].id = "numICUBeds-capacity-group"
* group[=].code = HRDExampleCS#numICUBeds 
* group[=].population[+].id = "numICUBeds-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group numICUBedsAdult /////////////
* group[+].id = "numICUBedsAdult-capacity-group"
* group[=].code = HRDExampleCS#numICUBedsAdult 
* group[=].population[+].id = "numICUBedsAdult-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group numICUBedsPed /////////////
* group[+].id = "numICUBedsPed-capacity-group"
* group[=].code = HRDExampleCS#numICUBedsPed 
* group[=].population[+].id = "numICUBedsPed-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group numICUBedsOcc /////////////
* group[+].id = "numICUBedsOcc-capacity-group"
* group[=].code = HRDExampleCS#numICUBedsOcc 
* group[=].population[+].id = "numICUBedsOcc-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group numICUBedsOccAdult /////////////
* group[+].id = "numICUBedsOccAdult-capacity-group"
* group[=].code = HRDExampleCS#numICUBedsOccAdult 
* group[=].population[+].id = "numICUBedsOccAdult-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0

///////////// Group numICUBedsOccPed /////////////
* group[+].id = "numICUBedsOccPed-capacity-group"
* group[=].code = HRDExampleCS#numICUBedsOccPed 
* group[=].population[+].id = "numICUBedsOccPed-initial-population"
* group[=].population[=].code = http://terminology.hl7.org/CodeSystem/measure-population#initial-population "Initial Population"
* group[=].population[=].count = 0