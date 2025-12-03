/*
Instance: hrd-measurereport-bundle-example-hosp1
InstanceOf: SafrMeasureReportBundle
Title: "Bundle - Hospital Respiratory Data MeasureReport Bundle Example 1"
Description: "This Bundle resource is an example of a Hospital Respiratory Data (hrd) MeasureReport Bundle for the US SAFR IG."
Usage: #example
* type = #collection
* entry[submitting-organization][+].fullUrl = "http://example.org/fhir/Organization/organization-example-submitting-organization"
* entry[submitting-organization][=].resource = organization-example-submitting-organization

* entry[submitting-device][+].fullUrl = "http://example.org/fhir/Device/cqf-tooling"
* entry[submitting-device][=].resource = cqf-tooling

* entry[measurereport][+].fullUrl = "http://example.org/fhir/MeasureReport/hrd-measurereport-example-1"
* entry[measurereport][=].resource = hrd-measurereport-example-1


Instance: hrd-location-1
InstanceOf: QICoreLocation|6.0.0
Title: "Location - Entire Hospital"
Description: "Hospital-wide"
Usage: #inline
* meta.profile[+] = "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-location|6.0.0"
* identifier.system = "http://www.example.org/location"
* identifier.value = "123"
* status = #active
* name = "XYZ Hospital"
* type = SAFRHealthareCapacityCSExample#HOSP "Hospital"


Instance: hrd-measurereport-example-1
InstanceOf: DEQMIndividualMeasureReportProfile // TODO, needs to change to an hrd MeasureReport profile
Title: "MeasureReport - Hospital Respiratory Data Example 1"
Description: "This MeasureReport resource is an example of a Hospital Respiratory Data (hrd) Measure Report for the US SAFR IG."
Usage: #example
* extension[location].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-dataLocation"
* extension[location].valueReference = Reference(hrd-location-1)
* extension[1].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = $measure-scoring#cohort "Cohort"
* contained[0] = hrd-location-1
* status = #complete
* type = #individual
* measure = Canonical(NHSNSAFRHospitalRespiratoryDataInitialPopulation)
* subject.identifier.system = "http://www.example.org/location"
* subject.identifier.value = "123"
* date = "2023-08-28T07:01:07.563Z"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2024-12-14T07:01:07.563Z"
* period.end = "2024-12-14T19:01:07.561Z"
* group[0].code = SAFRhrdCS#numInPtBeds "number Inpatient Beds"
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 200
* group[+].code = SAFRhrdCS#numInPtBedsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 100
* group[+].code = SAFRhrdCS#numInPtBedsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 100
* group[+].code = SAFRhrdCS#numInPtBedsOcc
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 150
* group[+].code = SAFRhrdCS#numInPtBedsOccAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 75
* group[+].code = SAFRhrdCS#numInPtBedsOccPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 75
* group[+].code = SAFRhrdCS#numICUBeds
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 50
* group[+].code = SAFRhrdCS#numICUBedsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 25
* group[+].code = SAFRhrdCS#numICUBedsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 25
* group[+].code = SAFRhrdCS#numICUBedsOcc
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[+].code = SAFRhrdCS#numICUBedsOccAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 15
* group[+].code = SAFRhrdCS#numICUBedsOccPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 15
* group[+].code = SAFRhrdCS#numConfC19HospPatsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10
* group[+].code = SAFRhrdCS#numConfC19HospPatsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRhrdCS#numConfC19ICUPatsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRhrdCS#numConfC19ICUPatsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRhrdCS#numConfFluHospPatsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 20
* group[+].code = SAFRhrdCS#numConfFluHospPatsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10
* group[+].code = SAFRhrdCS#numConfFluICUPatsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 4
* group[+].code = SAFRhrdCS#numConfFluICUPatsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRhrdCS#numConfRSVHospPatsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 15
* group[+].code = SAFRhrdCS#numConfRSVHospPatsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRhrdCS#numConfRSVICUPatsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3
* group[+].code = SAFRhrdCS#numConfRSVICUPatsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRhrdCS#numConfC19NewAdmPed0to4
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRhrdCS#numConfC19NewAdmPed5to17
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRhrdCS#numConfC19NewAdmAdult18to49
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3
* group[+].code = SAFRhrdCS#numConfC19NewAdmAdult50to64
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 4
* group[+].code = SAFRhrdCS#numConfC19NewAdmAdult65to74
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRhrdCS#numConfC19NewAdmAdult75plus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 6
* group[+].code = SAFRhrdCS#numConfC19NewAdmUnk
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 7
* group[+].code = SAFRhrdCS#numConfFluNewAdmPed0to4
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRhrdCS#numConfFluNewAdmPed5to17
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRhrdCS#numConfFluNewAdmAdult18to49
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3
* group[+].code = SAFRhrdCS#numConfFluNewAdmAdult50to64
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 4
* group[+].code = SAFRhrdCS#numConfFluNewAdmAdult65to74
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRhrdCS#numConfFluNewAdmAdult75plus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 6
* group[+].code = SAFRhrdCS#numConfFluNewAdmUnk
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 7
* group[+].code = SAFRhrdCS#numConfRSVNewAdmPed0to4
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRhrdCS#numConfRSVNewAdmPed5to17
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRhrdCS#numConfRSVNewAdmAdult18to49
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3
* group[+].code = SAFRhrdCS#numConfRSVNewAdmAdult50to64
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 4
* group[+].code = SAFRhrdCS#numConfRSVNewAdmAdult65to74
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRhrdCS#numConfRSVNewAdmAdult75plus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 6
* group[+].code = SAFRhrdCS#numConfRSVNewAdmUnk
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 7
* group[+].code = SAFRhrdCS#N95MaskSupplyDays
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[+].code = SAFRhrdCS#surgMaskSupplyDays
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[+].code = SAFRhrdCS#shieldSupplyDays
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[+].code = SAFRhrdCS#gownSupplyDays
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[+].code = SAFRhrdCS#gloveSupplyDays
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[+].code = SAFRhrdCS#N95Mask3DaySupply
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRhrdCS#surgMask3DaySupply
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRhrdCS#shield3DaySupply
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRhrdCS#gown3DaySupply
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRhrdCS#glove3DaySupply
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
*/