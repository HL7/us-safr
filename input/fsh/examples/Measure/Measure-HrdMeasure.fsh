
Instance: HrdMeasure
InstanceOf: Measure
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/computable-measure-cqfm"
* contained = bed-capacity-effective-data-requirements
* extension[0].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-softwaresystem"
* extension[=].valueReference = Reference(Device/cqf-tooling)
* extension[+].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis"
* extension[=].valueCode = #boolean
* extension[+].id = "bed-capacity-effective-data-requirements"
* extension[=].url = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-effectiveDataRequirements"
* extension[=].valueReference = Reference(bed-capacity-effective-data-requirements)
// * extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
// * extension[=].valueCode = #pher
* url = "http://hl7.org/fhir/us/us-safr/Measure/HrdMeasure"
* version = "1.0.0"
* name = "HRDMeasure"
* title = "Hospital Respiratory Data Measure for US Situational Awareness Framework for Reporting"
* status = #draft
* experimental = true
* date = "2024-12-14T17:37:47-04:00"
* publisher = "HL7 International / Public Health"
* contact.name = "HL7 International / Public Health"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* description = "US Situational Awareness Framework for Reporting - Hospital Respiratory Data Measure"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* library = "http://hl7.org/fhir/us-safr/Library/HrdMeasureLibrary"
* scoring = $measure-scoring#cohort "Cohort"
* type = $MeasureTypeCS#structure "Structure"
* group[0].code = SAFRHRDCS#numInPtBeds
* group[=].population.id = "d2e4301"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All hospital inpatient beds"
* group[+].code = SAFRHRDCS#numInPtBedsAdult
* group[=].population.id = "d2e4378"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All adult inpatient beds"
* group[+].code = SAFRHRDCS#numInPtBedsPed
* group[=].population.id = "d2e4455"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All pediatric inpatient beds"
* group[+].code = SAFRHRDCS#numInPtBedsOcc
* group[=].population.id = "d2e4532"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All hospital inpatient occupancy"
* group[+].code = SAFRHRDCS#numInPtBedsOccAdult
* group[=].population.id = "d2e4609"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All adult inpatient occupancy"
* group[+].code = SAFRHRDCS#numInPtBedsOccPed
* group[=].population.id = "d2e4686"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All pediatric inpatient occupancy"
* group[+].code = SAFRHRDCS#numICUBeds
* group[=].population.id = "d2e4763"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All ICU beds"
* group[+].code = SAFRHRDCS#numICUBedsAdult
* group[=].population.id = "d2e4840"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult ICU beds"
* group[+].code = SAFRHRDCS#numICUBedsPed
* group[=].population.id = "d2e4917"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Pediatric ICU beds"
* group[+].code = SAFRHRDCS#numICUBedsOcc
* group[=].population.id = "d2e4994"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All ICU bed occupancy"
* group[+].code = SAFRHRDCS#numICUBedsOccAdult
* group[=].population.id = "d2e5071"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult ICU bed occupancy"
* group[+].code = SAFRHRDCS#numICUBedsOccPed
* group[=].population.id = "d2e5148"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Pediatric ICU bed occupancy"
* group[+].code = SAFRHRDCS#numConfC19HospPatsAdult
* group[=].population.id = "d2e5225"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All hospitalized adult patients with laboratory-confirmed COVID-19"
* group[+].code = SAFRHRDCS#numConfC19HospPatsPed
* group[=].population.id = "d2e5302"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All hospitalized pediatric patients with laboratory-confirmed COVID-19"
* group[+].code = SAFRHRDCS#numConfC19ICUPatsAdult
* group[=].population.id = "d2e5379"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult ICU patients with laboratory-confirmed COVID-19"
* group[+].code = SAFRHRDCS#numConfC19ICUPatsPed
* group[=].population.id = "d2e5456"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Pediatric ICU patients with laboratory-confirmed COVID-19"
* group[+].code = SAFRHRDCS#numConfFluHospPatsAdult
* group[=].population.id = "d2e5533"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All hospitalized adult patients with laboratory-confirmed influenza"
* group[+].code = SAFRHRDCS#numConfFluHospPatsPed
* group[=].population.id = "d2e5610"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All hospitalized pediatric patients with laboratory-confirmed influenza"
* group[+].code = SAFRHRDCS#numConfFluICUPatsAdult
* group[=].population.id = "d2e5687"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult ICU patients with laboratory-confirmed influenza"
* group[+].code = SAFRHRDCS#numConfFluICUPatsPed
* group[=].population.id = "d2e5764"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Pediatric ICU patients with laboratory-confirmed influenza"
* group[+].code = SAFRHRDCS#numConfRSVHospPatsAdult
* group[=].population.id = "d2e5841"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All Hospitalized adult patients with laboratory-confirmed RSV"
* group[+].code = SAFRHRDCS#numConfRSVHospPatsPed
* group[=].population.id = "d2e5918"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "All Hospitalized pediatric patients with laboratory-confirmed RSV"
* group[+].code = SAFRHRDCS#numConfRSVICUPatsAdult
* group[=].population.id = "d2e5995"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Adult ICU patients with laboratory-confirmed RSV"
* group[+].code = SAFRHRDCS#numConfRSVICUPatsPed
* group[=].population.id = "d2e6072"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Pediatric ICU patients with laboratory-confirmed RSV"
* group[+].code = SAFRHRDCS#numConfC19NewAdmPed0to4
* group[=].population.id = "d2e6149"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed COVID-19, 0-4 years of age"
* group[+].code = SAFRHRDCS#numConfC19NewAdmPed5to17
* group[=].population.id = "d2e6226"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed COVID-19, 5-17 years of age"
* group[+].code = SAFRHRDCS#numConfC19NewAdmAdult18to49
* group[=].population.id = "d2e6303"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed COVID-19, 18-49 years of age"
* group[+].code = SAFRHRDCS#numConfC19NewAdmAdult50to64
* group[=].population.id = "d2e6380"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed COVID-19, 50-64 years of age"
* group[+].code = SAFRHRDCS#numConfC19NewAdmAdult65to74
* group[=].population.id = "d2e6457"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed COVID-19, 65-74 years of age"
* group[+].code = SAFRHRDCS#numConfC19NewAdmAdult75plus
* group[=].population.id = "d2e6534"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed COVID-19, 75+ years of age"
* group[+].code = SAFRHRDCS#numConfC19NewAdmUnk
* group[=].population.id = "d2e6611"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed COVID-19, unknown age"
* group[+].code = SAFRHRDCS#numConfFluNewAdmPed0to4
* group[=].population.id = "d2e6688"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed influenza, 0-4 years of age"
* group[+].code = SAFRHRDCS#numConfFluNewAdmPed5to17
* group[=].population.id = "d2e6765"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed influenza, 5-17 years of age"
* group[+].code = SAFRHRDCS#numConfFluNewAdmAdult18to49
* group[=].population.id = "d2e6842"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed influenza, 18-49 years of age"
* group[+].code = SAFRHRDCS#numConfFluNewAdmAdult50to64
* group[=].population.id = "d2e6919"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed influenza, 50-64 years of age"
* group[+].code = SAFRHRDCS#numConfFluNewAdmAdult65to74
* group[=].population.id = "d2e6996"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed influenza, 65-74 years of age"
* group[+].code = SAFRHRDCS#numConfFluNewAdmAdult75plus
* group[=].population.id = "d2e7073"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed influenza, 75+ years of age"
* group[+].code = SAFRHRDCS#numConfFluNewAdmUnk
* group[=].population.id = "d2e7150"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed influenza, unknown age"
* group[+].code = SAFRHRDCS#numConfRSVNewAdmPed0to4
* group[=].population.id = "d2e7227"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed RSV, 0-4 years of age"
* group[+].code = SAFRHRDCS#numConfRSVNewAdmPed5to17
* group[=].population.id = "d2e7304"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed RSV, 5-17 years of age"
* group[+].code = SAFRHRDCS#numConfRSVNewAdmAdult18to49
* group[=].population.id = "d2e7381"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed RSV, 18-49 years of age"
* group[+].code = SAFRHRDCS#numConfRSVNewAdmAdult50to64
* group[=].population.id = "d2e7458"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed RSV, 50-64 years of age"
* group[+].code = SAFRHRDCS#numConfRSVNewAdmAdult65to74
* group[=].population.id = "d2e7535"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed RSV, 65-74 years of age"
* group[+].code = SAFRHRDCS#numConfRSVNewAdmAdult75plus
* group[=].population.id = "d2e7612"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed RSV, 75+ years of age"
* group[+].code = SAFRHRDCS#numConfRSVNewAdmUnk
* group[=].population.id = "d2e7689"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Weekly total number of new admissions of patients with laboratory-confirmed RSV, unknown age"
* group[+].code = SAFRHRDCS#N95MaskSupplyDays
* group[=].population.id = "d2e7766"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "On hand supply (DURATION in days) n95 respirators"
* group[+].code = SAFRHRDCS#surgMaskSupplyDays
* group[=].population.id = "d2e7843"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "On hand supply (DURATION in days) surgical and procedure masks"
* group[+].code = SAFRHRDCS#shieldSupplyDays
* group[=].population.id = "d2e7920"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "On hand supply (DURATION in days) eye protection including face shields and goggles"
* group[+].code = SAFRHRDCS#gownSupplyDays
* group[=].population.id = "d2e7997"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "On hand supply (DURATION in days) single use gowns"
* group[+].code = SAFRHRDCS#gloveSupplyDays
* group[=].population.id = "d2e8074"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "On hand supply (DURATION in days) exam gloves (sterile and non-sterile)"
* group[+].code = SAFRHRDCS#N95Mask3DaySupply
* group[=].population.id = "d2e8151"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Are you able to MAINTAIN at least a 3-day supply of these items (y/n/N/A)? N95 respirators"
* group[+].code = SAFRHRDCS#surgMask3DaySupply
* group[=].population.id = "d2e8228"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Are you able to MAINTAIN at least a 3-day supply of these items (y/n/N/A)? Surgical and procedure masks"
* group[+].code = SAFRHRDCS#shield3DaySupply
* group[=].population.id = "d2e8305"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Are you able to MAINTAIN at least a 3-day supply of these items (y/n/N/A)? Eye protection including face shields and goggles"
* group[+].code = SAFRHRDCS#gown3DaySupply
* group[=].population.id = "d2e8382"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Are you able to MAINTAIN at least a 3-day supply of these items (y/n/N/A)? Single use gowns"
* group[+].code = SAFRHRDCS#glove3DaySupply
* group[=].population.id = "d2e8459"
* group[=].population.code = $measure-population#initial-population "Initial Population"
* group[=].population.criteria.language = #text/cql-identifier
* group[=].population.criteria.expression = "Are you able to MAINTAIN at least a 3-day supply of these items (y/n/N/A)? Exam gloves (sterile and non-sterile)"
