/*
Instance: NHSNSAFRHospitalRespiratoryDataInitialPopulationLibrary
InstanceOf: CRMIComputableLibrary|1.0.0
Description: "Library - Hospital Respiratory Data Initial Population"
Usage: #example
* contained = hrd-options
* extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-cqlOptions"
* extension.valueReference = Reference(hrd-options)
* version = "1.0.0"
* status = #active 
* name = "NHSNSAFRHospitalRespiratoryDataInitialPopulationLibrary"
* title = "Example Library of Hospital Respiratory Data Initial Population"
* type = $library-type#logic-library
* subjectCodeableConcept = $resource-type#Location "Location"
* date = "2025-03-12T07:01:07.563Z"
* publisher = "HL7 International / Public Health"
* description = "Example Measure Library for reporting or COVID-19, influenza, RSV, and related data"
* relatedArtifact[0].type = #depends-on
* relatedArtifact[=].display = "FHIR model information"
* relatedArtifact[=].resource = "http://fhir.org/guides/cqf/common/Library/FHIR-ModelInfo|4.0.1"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Library FHIRHelpers"
* relatedArtifact[=].resource = "http://fhir.org/guides/cqf/common/Library/FHIRHelpers|4.0.1"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Code system LocationPhysicalType"
* relatedArtifact[=].resource = "http://terminology.hl7.org/CodeSystem/location-physical-type|2.0.1"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].display = "Code system SAFRHRDCS"
* relatedArtifact[=].resource = Canonical(SAFRHRDCS)
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
* dataRequirement[0].type = #Location
* dataRequirement[=].profile = "http://hl7.org/fhir/StructureDefinition/Location"
* content[+].contentType = #text/cql
* content[=].data = "bGlicmFyeSBCZWRDYXBhY2l0eU1lYXN1cmUgdmVyc2lvbiAnMS4wLjAnDQoNCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnDQoNCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnIGNhbGxlZCBGSElSSGVscGVycw0KDQpjb2Rlc3lzdGVtICJMb2NhdGlvblBoeXNpY2FsVHlwZSI6ICdodHRwOi8vdGVybWlub2xvZ3kuaGw3Lm9yZy9Db2RlU3lzdGVtL2xvY2F0aW9uLXBoeXNpY2FsLXR5cGUnDQpjb2Rlc3lzdGVtICJIZWFsdGhjYXJlQ2FwYWNpdHkiOiAnaHR0cDovL2hsNy5vcmcvZmhpci91cy9uaHNuLWRxbS9Db2RlU3lzdGVtL2hlYWx0aGNhcmUtY2FwYWNpdHktY29kZXMnDQoNCnZhbHVlc2V0ICJFbWVyZ2VuY3kgRGVwYXJ0bWVudCBWaXNpdCI6ICdodHRwOi8vY3RzLm5sbS5uaWguZ292L2ZoaXIvVmFsdWVTZXQvMi4xNi44NDAuMS4xMTM4ODMuMy4xMTcuMS43LjEuMjkyJw0KDQpjb2RlICJCZWQiOiAnYmQnIGZyb20gIkxvY2F0aW9uUGh5c2ljYWxUeXBlIiBkaXNwbGF5ICdCZWQnDQpjb2RlICJIT1NQIjogJ0hPU1AnIGZyb20gIkhlYWx0aGNhcmVDYXBhY2l0eSIgZGlzcGxheSAnSG9zcGl0YWwnDQpjb2RlICJJUkYiOiAnSVJGJyBmcm9tICJIZWFsdGhjYXJlQ2FwYWNpdHkiIGRpc3BsYXkgJ0lucGF0aWVudCBSZWhhYmlsaXRhdGlvbicNCmNvZGUgIklQRiI6ICdJUEYnIGZyb20gIkhlYWx0aGNhcmVDYXBhY2l0eSIgZGlzcGxheSAnSW5wYXRpZW50IFBzeWNoaWF0cmljJw0KY29kZSAiQ0hMRCI6ICdDSExEJyBmcm9tICJIZWFsdGhjYXJlQ2FwYWNpdHkiIGRpc3BsYXkgJ0NoaWxkcmVuXCdzIG9yIFBlZGlhdHJpYycNCmNvZGUgIk9USCI6ICdPVEgnIGZyb20gIkhlYWx0aGNhcmVDYXBhY2l0eSIgZGlzcGxheSAnT3RoZXIgZmFjaWxpdHktd2l0aGluLWZhY2lsaXR5IG9yIHN1YnVuaXQnDQoNCg0KcGFyYW1ldGVyICJNZWFzdXJlbWVudCBQZXJpb2QiIEludGVydmFsPERhdGVUaW1lPg0KICAgIGRlZmF1bHQgSW50ZXJ2YWxbQDIwMjItMDEtMDFUMDA6MDA6MDAuMCwgQDIwMjItMDItMDFUMDA6MDA6MDAuMCkNCg0KY29udGV4dCBMb2NhdGlvbg0KDQpkZWZpbmUgIklzQmVkTG9jYXRpb24iOg0KICBMb2NhdGlvbi5waHlzaWNhbFR5cGUgfiAiQmVkIg0KDQpkZWZpbmUgIkFsbCBCZWRzIE9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIEVuY291bnRlckNoZWNrDQoNCmRlZmluZSAiQWxsIEJlZHMgVW5vY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBOb0VuY291bnRlckNoZWNrDQoNCmRlZmluZSAiQWR1bHQgQmVkcyBPY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBFbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSBMb2NhdGlvbklzSE9TUA0KICAgICAgYW5kICJMb2NhdGlvbklzSVJGIg0KICAgICAgYW5kICJMb2NhdGlvbklzSVBGIg0KICApDQoNCmRlZmluZSAiQWR1bHQgQmVkcyBVbm9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIE5vRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzSVJGIg0KICAgICAgYW5kICJMb2NhdGlvbklzSVBGIg0KICApDQoNCmRlZmluZSAiQWR1bHQgSUNVIEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICApDQoNCmRlZmluZSAiQWR1bHQgSUNVIEJlZHMgVW5vY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBOb0VuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgKQ0KDQpkZWZpbmUgIkFkdWx0IElDVUxPQyBCZWRzIE9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIEVuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0lQRiINCiAgKQ0KICANCg0KZGVmaW5lICJBZHVsdCBJQ1VMT0MgQmVkcyBVbm9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIE5vRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzSVBGIg0KICApDQoNCmRlZmluZSAiQWR1bHQgTm9uSUNVIEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQogIA0KZGVmaW5lICJBZHVsdCBOb25JQ1UgQmVkcyBVbm9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIE5vRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQoNCmRlZmluZSAiQWR1bHQgUENVIEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNJUEYiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCiAgDQpkZWZpbmUgIkFkdWx0IFBDVSBCZWRzIFVub2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgTm9FbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0lQRiINCiAgICAgIGFuZCAiTG9jYXRpb25Jc09USCINCiAgKQ0KDQpkZWZpbmUgIkFkdWx0IE1UTVMgQmVkcyBPY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBFbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNJUkYiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCiAgDQpkZWZpbmUgIkFkdWx0IE1UTVMgQmVkcyBVbm9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIE5vRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzSVJGIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQoNCmRlZmluZSAiQWR1bHQgT2JzIEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNPVEgiDQogICkNCiAgDQpkZWZpbmUgIkFkdWx0IE9icyBCZWRzIFVub2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgTm9FbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc09USCINCiAgKQ0KDQpkZWZpbmUgIlBlZHMgVG90YWwgQmVkcyBPY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBFbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0NITEQiDQogICkNCiAgDQpkZWZpbmUgIlBlZHMgVG90YWwgQmVkcyBVbm9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIE5vRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNDSExEIg0KICApDQoNCmRlZmluZSAiUGVkcyBJQ1UgQmVkcyBPY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBFbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNDSExEIg0KICApDQogIA0KZGVmaW5lICJQZWRzIElDVSBCZWRzIFVub2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgTm9FbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNDSExEIg0KICApDQoNCmRlZmluZSAiUGVkcyBJQ1VMT0MgQmVkcyBPY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBFbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNDSExEIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQogIA0KZGVmaW5lICJQZWRzIElDVUxPQyBCZWRzIFVub2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgTm9FbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNDSExEIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQogIA0KZGVmaW5lICJQZWRzIE5vbklDVSBCZWRzIE9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIEVuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSVBGIg0KICAgICAgYW5kICJMb2NhdGlvbklzQ0hMRCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc09USCINCiAgKQ0KICANCmRlZmluZSAiUGVkcyBOb25JQ1UgQmVkcyBVbm9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIE5vRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNJUEYiDQogICAgICBhbmQgIkxvY2F0aW9uSXNDSExEIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQoNCmRlZmluZSAiUGVkcyBQQ1UgQmVkcyBPY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBFbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0NITEQiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCiAgDQpkZWZpbmUgIlBlZHMgUENVIEJlZHMgVW5vY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBOb0VuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzQ0hMRCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc09USCINCiAgKQ0KDQpkZWZpbmUgIlBlZHMgTVRNUyBCZWRzIE9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIEVuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0lSRiINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0NITEQiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCiAgDQpkZWZpbmUgIlBlZHMgTVRNUyBCZWRzIFVub2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgTm9FbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNJUkYiDQogICAgICBhbmQgIkxvY2F0aW9uSXNDSExEIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQoNCmRlZmluZSAiUGVkcyBPYnMgQmVkcyBPY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBFbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNJUkYiDQogICAgICBhbmQgIkxvY2F0aW9uSXNDSExEIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQogIA0KZGVmaW5lICJQZWRzIE9icyBCZWRzIFVub2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgTm9FbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNJUkYiDQogICAgICBhbmQgIkxvY2F0aW9uSXNDSExEIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQoNCmRlZmluZSAiU3BlY2lhbHR5IEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNPVEgiDQogICkNCiAgDQpkZWZpbmUgIlNwZWNpYWx0eSBCZWRzIFVub2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgTm9FbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc09USCINCiAgKQ0KDQpkZWZpbmUgIlNwZWNpYWx0eSBOb25DcmliIEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzSVJGIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQogIA0KZGVmaW5lICJTcGVjaWFsdHkgTm9uQ3JpYiBCZWRzIFVub2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgTm9FbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNJUkYiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCg0KZGVmaW5lICJPQiBCZWRzIE9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIEVuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSVJGIg0KICAgICAgYW5kICJMb2NhdGlvbklzQ0hMRCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc09USCINCiAgKQ0KICANCmRlZmluZSAiT0IgQmVkcyBVbm9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIE5vRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNJUkYiDQogICAgICBhbmQgIkxvY2F0aW9uSXNDSExEIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQoNCmRlZmluZSAiTklDVSBCZWRzIE9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIEVuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0lSRiINCiAgICAgIGFuZCAiTG9jYXRpb25Jc09USCINCiAgKQ0KICANCmRlZmluZSAiTklDVSBCZWRzIFVub2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgTm9FbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNJUkYiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCg0KZGVmaW5lICJOSUNVNCBCZWRzIE9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIEVuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0lSRiINCiAgICAgIGFuZCAiTG9jYXRpb25Jc09USCINCiAgKQ0KICANCmRlZmluZSAiTklDVTQgQmVkcyBVbm9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIE5vRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzSVJGIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQoNCmRlZmluZSAiTklDVTNQbHVzIEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzSVJGIg0KICAgICAgYW5kICJMb2NhdGlvbklzQ0hMRCINCiAgKQ0KICANCmRlZmluZSAiTklDVTNQbHVzIEJlZHMgVW5vY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBOb0VuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0lSRiINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0NITEQiDQogICkNCg0KZGVmaW5lICJOSUNVMyBCZWRzIE9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIEVuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0lSRiINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0NITEQiDQogICkNCiAgDQpkZWZpbmUgIk5JQ1UzIEJlZHMgVW5vY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBOb0VuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0lSRiINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0NITEQiDQogICkNCg0KZGVmaW5lICJOSUNVMiBCZWRzIE9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIEVuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0lSRiINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0NITEQiDQogICkNCiAgDQpkZWZpbmUgIk5JQ1UyIEJlZHMgVW5vY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBOb0VuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0lSRiINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0NITEQiDQogICkNCg0KZGVmaW5lICJOSUNVMSBCZWRzIE9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIEVuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0lSRiINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0NITEQiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCiAgDQpkZWZpbmUgIk5JQ1UxIEJlZHMgVW5vY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBOb0VuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0lSRiINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0NITEQiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCg0KZGVmaW5lICJOdXJzZXJ5IEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNJUkYiDQogICAgICBhbmQgIkxvY2F0aW9uSXNDSExEIg0KICApDQogIA0KZGVmaW5lICJOdXJzZXJ5IEJlZHMgVW5vY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBOb0VuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSVJGIg0KICAgICAgYW5kICJMb2NhdGlvbklzQ0hMRCINCiAgKQ0KDQpkZWZpbmUgIkFkdWx0IFBzeWNoIEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzSVBGIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQogIA0KZGVmaW5lICJBZHVsdCBQc3ljaCBCZWRzIFVub2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgTm9FbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNJUEYiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCg0KZGVmaW5lICJQZWRzIFBzeWNoIEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzSVBGIg0KICAgICAgYW5kICJMb2NhdGlvbklzQ0hMRCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc09USCINCiAgKQ0KDQpkZWZpbmUgIlBlZHMgUHN5Y2ggQmVkcyBVbm9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIE5vRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzSVBGIg0KICAgICAgYW5kICJMb2NhdGlvbklzQ0hMRCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc09USCINCiAgKQ0KDQpkZWZpbmUgIlJlaGFiIEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNJUkYiDQogICkNCg0KZGVmaW5lICJSZWhhYiBCZWRzIFVub2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgTm9FbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0lSRiINCiAgKQ0KDQpkZWZpbmUgIlN1cmdlIEFjdGl2ZSBUb3RhbCBCZWRzIE9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIEVuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0NITEQiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCg0KZGVmaW5lICJTdXJnZSBBY3RpdmUgVG90YWwgQmVkcyBVbm9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIE5vRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzQ0hMRCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc09USCINCiAgKQ0KDQpkZWZpbmUgIlN1cmdlIEluYWN0aXZlIFRvdGFsIEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzQ0hMRCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc09USCINCiAgKQ0KDQpkZWZpbmUgIlN1cmdlIEluYWN0aXZlIFRvdGFsIEJlZHMgVW5vY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBOb0VuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0NITEQiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCg0KZGVmaW5lICJTdXJnZSBBY3RpdmUgSUNVIEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQoNCmRlZmluZSAiU3VyZ2UgQWN0aXZlIElDVSBCZWRzIFVub2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgTm9FbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCg0KZGVmaW5lICJTdXJnZSBJbmFjdGl2ZSBJQ1UgQmVkcyBPY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBFbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCg0KZGVmaW5lICJTdXJnZSBJbmFjdGl2ZSBJQ1UgQmVkcyBVbm9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIE5vRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQoNCmRlZmluZSAiU3VyZ2UgQWN0aXZlIE5vbklDVSBCZWRzIE9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIEVuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0NITEQiDQogICkNCg0KZGVmaW5lICJTdXJnZSBBY3RpdmUgTm9uSUNVIEJlZHMgVW5vY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBOb0VuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0NITEQiDQogICkNCg0KZGVmaW5lICJTdXJnZSBJbmFjdGl2ZSBOb25JQ1UgQmVkcyBPY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBFbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNDSExEIg0KICApDQoNCmRlZmluZSAiU3VyZ2UgSW5hY3RpdmUgTm9uSUNVIEJlZHMgVW5vY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBOb0VuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc0NITEQiDQogICkNCg0KZGVmaW5lICJCdXJuIEJlZHMgT2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgRW5jb3VudGVyQ2hlY2sNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzT1RIIg0KICApDQoNCmRlZmluZSAiQnVybiBCZWRzIFVub2NjdXBpZWQgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgTm9FbmNvdW50ZXJDaGVjaw0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCg0KZGVmaW5lICJOZWdhdGl2ZSBQcmVzc3VyZSBCZWRzIE9jY3VwaWVkIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIEVuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgKQ0KDQpkZWZpbmUgIk5lZ2F0aXZlIFByZXNzdXJlIEJlZHMgVW5vY2N1cGllZCBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBOb0VuY291bnRlckNoZWNrDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgKQ0KDQpkZWZpbmUgIkFkdWx0IEVEIENlbnN1cyBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBleGlzdHMoDQogICAgW0VuY291bnRlcjogIkVtZXJnZW5jeSBEZXBhcnRtZW50IFZpc2l0Il0gRURWaXNpdA0KICAgIHdoZXJlIGV4aXN0cyhMb2NhdGlvbk1hdGNoKEVEVmlzaXQubG9jYXRpb24pKQ0KICAgICAgYW5kIEVEVmlzaXQucGVyaW9kIG92ZXJsYXBzICJNZWFzdXJlbWVudCBQZXJpb2QiDQogICAgKQ0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0hPU1AiDQogICAgICBhbmQgIkxvY2F0aW9uSXNPVEgiDQogICkNCg0KZGVmaW5lICJBZHVsdCBFRCBBZG1pdHRlZCBDZW5zdXMgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgZXhpc3RzKA0KICAgIFtFbmNvdW50ZXI6ICJFbWVyZ2VuY3kgRGVwYXJ0bWVudCBWaXNpdCJdIEVEVmlzaXQNCiAgICB3aGVyZSBleGlzdHMoTG9jYXRpb25NYXRjaChFRFZpc2l0LmxvY2F0aW9uKSkNCiAgICAgIGFuZCBFRFZpc2l0LnBlcmlvZCBvdmVybGFwcyAiTWVhc3VyZW1lbnQgUGVyaW9kIg0KICAgICAgYW5kIEVEVmlzaXQuc3RhdHVzIGluIHsnYXJyaXZlZCcsICd0cmlhZ2VkJywgJ2luLXByb2dyZXNzJ30NCiAgICApDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzSE9TUCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc09USCINCiAgKQ0KDQpkZWZpbmUgIlBlZHMgRUQgQ2Vuc3VzIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIGV4aXN0cygNCiAgICBbRW5jb3VudGVyOiAiRW1lcmdlbmN5IERlcGFydG1lbnQgVmlzaXQiXSBFRFZpc2l0DQogICAgd2hlcmUgZXhpc3RzKExvY2F0aW9uTWF0Y2goRURWaXNpdC5sb2NhdGlvbikpDQogICAgICBhbmQgRURWaXNpdC5wZXJpb2Qgb3ZlcmxhcHMgIk1lYXN1cmVtZW50IFBlcmlvZCINCiAgICApDQogIGFuZCBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlICJMb2NhdGlvbklzQ0hMRCINCiAgKQ0KDQpkZWZpbmUgIlBlZHMgRUQgQWRtaXR0ZWQgQ2Vuc3VzIEluaXRpYWwgUG9wdWxhdGlvbiI6DQogIElzQmVkTG9jYXRpb24NCiAgYW5kIGV4aXN0cygNCiAgICBbRW5jb3VudGVyOiAiRW1lcmdlbmN5IERlcGFydG1lbnQgVmlzaXQiXSBFRFZpc2l0DQogICAgd2hlcmUgZXhpc3RzKExvY2F0aW9uTWF0Y2goRURWaXNpdC5sb2NhdGlvbikpDQogICAgICBhbmQgRURWaXNpdC5wZXJpb2Qgb3ZlcmxhcHMgIk1lYXN1cmVtZW50IFBlcmlvZCINCiAgICAgIGFuZCBFRFZpc2l0LnN0YXR1cyBpbiB7J2Fycml2ZWQnLCAndHJpYWdlZCcsICdpbi1wcm9ncmVzcyd9DQogICAgKQ0KICBhbmQgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSAiTG9jYXRpb25Jc0NITEQiDQogICkNCg0KZGVmaW5lICJUb3RhbCBFRCBDZW5zdXMgSW5pdGlhbCBQb3B1bGF0aW9uIjoNCiAgSXNCZWRMb2NhdGlvbg0KICBhbmQgZXhpc3RzKA0KICAgIFtFbmNvdW50ZXI6ICJFbWVyZ2VuY3kgRGVwYXJ0bWVudCBWaXNpdCJdIEVEVmlzaXQNCiAgICB3aGVyZSBleGlzdHMoTG9jYXRpb25NYXRjaChFRFZpc2l0LmxvY2F0aW9uKSkNCiAgICAgIGFuZCBFRFZpc2l0LnBlcmlvZCBvdmVybGFwcyAiTWVhc3VyZW1lbnQgUGVyaW9kIg0KICAgICkNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzQ0hMRCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc09USCINCiAgKQ0KDQpkZWZpbmUgIlRvdGFsIEVEIEFkbWl0dGVkIENlbnN1cyBJbml0aWFsIFBvcHVsYXRpb24iOg0KICBJc0JlZExvY2F0aW9uDQogIGFuZCBleGlzdHMoDQogICAgW0VuY291bnRlcjogIkVtZXJnZW5jeSBEZXBhcnRtZW50IFZpc2l0Il0gRURWaXNpdA0KICAgIHdoZXJlIGV4aXN0cyhMb2NhdGlvbk1hdGNoKEVEVmlzaXQubG9jYXRpb24pKQ0KICAgICAgYW5kIEVEVmlzaXQucGVyaW9kIG92ZXJsYXBzICJNZWFzdXJlbWVudCBQZXJpb2QiDQogICAgICBhbmQgRURWaXNpdC5zdGF0dXMgaW4geydhcnJpdmVkJywgJ3RyaWFnZWQnLCAnaW4tcHJvZ3Jlc3MnfQ0KICAgICkNCiAgYW5kIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgIkxvY2F0aW9uSXNIT1NQIg0KICAgICAgYW5kICJMb2NhdGlvbklzQ0hMRCINCiAgICAgIGFuZCAiTG9jYXRpb25Jc09USCINCiAgKQ0KDQpkZWZpbmUgIkVuY291bnRlcnMiOg0KICBbRW5jb3VudGVyXQ0KDQpkZWZpbmUgIkxvY2F0aW9uSXNIT1NQIjoNCiAgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSB0eXBlcyB+ICJIT1NQIg0KICApDQoNCmRlZmluZSAiTG9jYXRpb25Jc0lQRiI6DQogIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgdHlwZXMgfiAiSVBGIg0KICApDQoNCmRlZmluZSAiTG9jYXRpb25Jc0lSRiI6DQogIGV4aXN0cygNCiAgICBMb2NhdGlvbi50eXBlIHR5cGVzDQogICAgd2hlcmUgdHlwZXMgfiAiSVJGIg0KICApDQoNCmRlZmluZSAiTG9jYXRpb25Jc0NITEQiOg0KICBleGlzdHMoDQogICAgTG9jYXRpb24udHlwZSB0eXBlcw0KICAgIHdoZXJlIHR5cGVzIH4gIkNITEQiDQogICkNCg0KZGVmaW5lICJMb2NhdGlvbklzT1RIIjoNCiAgZXhpc3RzKA0KICAgIExvY2F0aW9uLnR5cGUgdHlwZXMNCiAgICB3aGVyZSB0eXBlcyB+ICJPVEgiDQogICkNCg0KZGVmaW5lIEVuY291bnRlckNoZWNrOg0KICBleGlzdHMoIkVuY291bnRlcnMiIEVuY291bnRlcnMNCiAgd2hlcmUgZXhpc3RzKExvY2F0aW9uTWF0Y2goRW5jb3VudGVycy5sb2NhdGlvbikpDQogICAgYW5kIEVuY291bnRlcnMucGVyaW9kIG92ZXJsYXBzICJNZWFzdXJlbWVudCBQZXJpb2QiKQ0KDQpkZWZpbmUgTm9FbmNvdW50ZXJDaGVjazoNCiAgZXhpc3RzKCJFbmNvdW50ZXJzIiBFbmNvdW50ZXJzDQogIHdoZXJlIG5vdCBleGlzdHMoTG9jYXRpb25NYXRjaChFbmNvdW50ZXJzLmxvY2F0aW9uKSkNCiAgICBhbmQgRW5jb3VudGVycy5wZXJpb2Qgb3ZlcmxhcHMgIk1lYXN1cmVtZW50IFBlcmlvZCIpDQoNCmRlZmluZSBmdW5jdGlvbiBMb2NhdGlvbk1hdGNoKGxvY2F0aW9ucyBMaXN0PEZISVIuRW5jb3VudGVyLkxvY2F0aW9uPik6DQogIGxvY2F0aW9ucyBsDQogIHdoZXJlIEdldExvY2F0aW9uKGwubG9jYXRpb24pLmlkID0gTG9jYXRpb24uaWQNCg0KZGVmaW5lIGZ1bmN0aW9uICJHZXRJZCIodXJpIFN0cmluZyApOg0KICBMYXN0KFNwbGl0KHVyaSwgJy8nKSkNCg0KZGVmaW5lIGZ1bmN0aW9uICJHZXRMb2NhdGlvbiIocmVmZXJlbmNlIFJlZmVyZW5jZSApOg0KICBzaW5nbGV0b24gZnJvbSAoDQogICAgW0xvY2F0aW9uXSBMIHdoZXJlIEwuaWQgPSBHZXRJZChyZWZlcmVuY2UucmVmZXJlbmNlKQ0KICAp"

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
*/