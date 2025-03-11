
Instance: NHSNSAFRHospitalRespiratoryDataInitialPopulationLibrary
InstanceOf: Library
Description: "Library - Hospital Respiratory Data Initial Population"
Usage: #example
* contained = hrd-options
* extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-cqlOptions"
* extension.valueReference = Reference(hrd-options)
* version = "1.0.0"
* status = #active 
* name = "NHSNSAFRHospitalRespiratoryDataInitialPopulationLibrary"
* type = $library-type#logic-library
* relatedArtifact[0].type = #depends-on
* relatedArtifact[=].display = "FHIR model information"
* relatedArtifact[=].resource = "http://fhir.org/guides/cqf/common/Library/FHIR-ModelInfo|4.0.1"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Library FHIRHelpers"
* relatedArtifact[=].resource = "http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Code system LocationPhysicalType"
* relatedArtifact[=].resource = "http://terminology.hl7.org/CodeSystem/location-physical-type"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Code system SAFRHRDCS"
* relatedArtifact[=].resource = "http://hl7.org/fhir/us/safr/CodeSystem/SAFRHRDCS"
//* relatedArtifact[+].type = #depends-on
//* relatedArtifact[=].display = "Value set Emergency Department Visit"
//* relatedArtifact[=].resource = "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113883.3.117.1.7.1.292"
* parameter[0].name = #"Measurement Period"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Period
* parameter[+].name = #Location
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Location
* parameter[+].name = #IsBedLocation
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #Encounters
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].type = #Encounter
* parameter[+].name = #EncounterCheck
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[+].name = #"All Beds Occupied Initial Population"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean

Instance: hrd-options
InstanceOf: Parameters
Usage: #inline
* parameter[0].name = "translatorVersion"
* parameter[=].valueString = "3.5.1"
* parameter[+].name = "option"
* parameter[=].valueString = "EnableAnnotations"
* parameter[+].name = "option"
* parameter[=].valueString = "EnableLocators"
* parameter[+].name = "option"
* parameter[=].valueString = "DisableListDemotion"
* parameter[+].name = "option"
* parameter[=].valueString = "DisableListPromotion"
* parameter[+].name = "format"
* parameter[=].valueString = "XML"
* parameter[+].name = "analyzeDataRequirements"
* parameter[=].valueBoolean = false
* parameter[+].name = "collapseDataRequirements"
* parameter[=].valueBoolean = false
* parameter[+].name = "compatibilityLevel"
* parameter[=].valueString = "1.5"
* parameter[+].name = "enableCqlOnly"
* parameter[=].valueBoolean = false
* parameter[+].name = "errorLevel"
* parameter[=].valueString = "Info"
* parameter[+].name = "signatureLevel"
* parameter[=].valueString = "None"
* parameter[+].name = "validateUnits"
* parameter[=].valueBoolean = true
* parameter[+].name = "verifyOnly"
* parameter[=].valueBoolean = false