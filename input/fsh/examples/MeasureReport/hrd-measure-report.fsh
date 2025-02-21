Instance: hrd-bundle-example-hosp
InstanceOf: SafrMeasureReportBundle
Title: "HRD MeasureReport Bundle Example 1"
Description: "This Bundle resource is an example of a Hospital Respiratory Data (HRD) MeasureReport Bundle for the US SAFR IG."
Usage: #example
* type = #collection
* entry[submitting-organization][+].fullUrl = "http://example.org/fhir/Organization/organization-example-submitting-organization"
* entry[submitting-organization][=].resource = organization-example-submitting-organization

* entry[submitting-device][+].fullUrl = "http://example.org/fhir/Device/cqf-tooling"
* entry[submitting-device][=].resource = cqf-tooling

* entry[individual-measurereport][+].fullUrl = "http://example.org/fhir/MeasureReport/hrd-measurereport-example-1"
* entry[individual-measurereport][=].resource = hrd-measurereport-example-1


Instance: hrd-location-1
InstanceOf: QICoreLocation
Title: "Location - Entire Hospital"
Description: "Hospital-wide"
Usage: #inline
* identifier.system = "http://www.example.org/location"
* identifier.value = "123"
* status = #active
* name = "XYZ Hospital"
* type = SAFRFacilityCS#HOSP "Hospital"


Instance: hrd-measurereport-example-1
InstanceOf: DEQMIndividualMeasureReportProfile
Title: "HRD Measure Report Example 1"
Description: "This MeasureReport resource is an example of a Hospital Respiratory Data (HRD) Measure Report for the US SAFR IG."
Usage: #example
* extension[location].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-dataLocation"
* extension[location].valueReference = Reference(hrd-location-1)
* extension[1].url = "http://hl7.org/fhir/us/davinci-deqm/StructureDefinition/extension-measureScoring"
* extension[=].valueCodeableConcept = $measure-scoring#cohort "Cohort"
* contained[0] = hrd-location-1
* status = #complete
* type = #individual
* measure = "http://hl7.org/fhir/us/us-safr/Measure/HrdMeasure"
* subject.identifier.system = "http://www.example.org/location"
* subject.identifier.value = "123"
* date = "2023-08-28T07:01:07.563Z"
* reporter = Reference(organization-example-submitting-organization)
* period.start = "2024-12-14T07:01:07.563Z"
* period.end = "2024-12-14T19:01:07.561Z"
* group[0].code = SAFRHRDCS#numInPtBeds "number Inpatient Beds"
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 200
* group[+].code = SAFRHRDCS#numInPtBedsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 100
* group[+].code = SAFRHRDCS#numInPtBedsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 100
* group[+].code = SAFRHRDCS#numInPtBedsOcc
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 150
* group[+].code = SAFRHRDCS#numInPtBedsOccAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 75
* group[+].code = SAFRHRDCS#numInPtBedsOccPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 75
* group[+].code = SAFRHRDCS#numICUBeds
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 50
* group[+].code = SAFRHRDCS#numICUBedsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 25
* group[+].code = SAFRHRDCS#numICUBedsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 25
* group[+].code = SAFRHRDCS#numICUBedsOcc
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[+].code = SAFRHRDCS#numICUBedsOccAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 15
* group[+].code = SAFRHRDCS#numICUBedsOccPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 15
* group[+].code = SAFRHRDCS#numConfC19HospPatsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10
* group[+].code = SAFRHRDCS#numConfC19HospPatsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRHRDCS#numConfC19ICUPatsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHRDCS#numConfC19ICUPatsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHRDCS#numConfFluHospPatsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 20
* group[+].code = SAFRHRDCS#numConfFluHospPatsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 10
* group[+].code = SAFRHRDCS#numConfFluICUPatsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 4
* group[+].code = SAFRHRDCS#numConfFluICUPatsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHRDCS#numConfRSVHospPatsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 15
* group[+].code = SAFRHRDCS#numConfRSVHospPatsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRHRDCS#numConfRSVICUPatsAdult
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3
* group[+].code = SAFRHRDCS#numConfRSVICUPatsPed
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHRDCS#numConfC19NewAdmPed0to4
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHRDCS#numConfC19NewAdmPed5to17
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHRDCS#numConfC19NewAdmAdult18to49
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3
* group[+].code = SAFRHRDCS#numConfC19NewAdmAdult50to64
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 4
* group[+].code = SAFRHRDCS#numConfC19NewAdmAdult65to74
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRHRDCS#numConfC19NewAdmAdult75plus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 6
* group[+].code = SAFRHRDCS#numConfC19NewAdmUnk
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 7
* group[+].code = SAFRHRDCS#numConfFluNewAdmPed0to4
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHRDCS#numConfFluNewAdmPed5to17
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHRDCS#numConfFluNewAdmAdult18to49
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3
* group[+].code = SAFRHRDCS#numConfFluNewAdmAdult50to64
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 4
* group[+].code = SAFRHRDCS#numConfFluNewAdmAdult65to74
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRHRDCS#numConfFluNewAdmAdult75plus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 6
* group[+].code = SAFRHRDCS#numConfFluNewAdmUnk
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 7
* group[+].code = SAFRHRDCS#numConfRSVNewAdmPed0to4
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHRDCS#numConfRSVNewAdmPed5to17
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 2
* group[+].code = SAFRHRDCS#numConfRSVNewAdmAdult18to49
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 3
* group[+].code = SAFRHRDCS#numConfRSVNewAdmAdult50to64
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 4
* group[+].code = SAFRHRDCS#numConfRSVNewAdmAdult65to74
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 5
* group[+].code = SAFRHRDCS#numConfRSVNewAdmAdult75plus
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 6
* group[+].code = SAFRHRDCS#numConfRSVNewAdmUnk
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 7
* group[+].code = SAFRHRDCS#N95MaskSupplyDays
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[+].code = SAFRHRDCS#surgMaskSupplyDays
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[+].code = SAFRHRDCS#shieldSupplyDays
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[+].code = SAFRHRDCS#gownSupplyDays
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[+].code = SAFRHRDCS#gloveSupplyDays
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 30
* group[+].code = SAFRHRDCS#N95Mask3DaySupply
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHRDCS#surgMask3DaySupply
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHRDCS#shield3DaySupply
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHRDCS#gown3DaySupply
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
* group[+].code = SAFRHRDCS#glove3DaySupply
* group[=].population[0].code = $measure-population#initial-population "Initial Population"
* group[=].population[=].count = 1
