
Profile: UsSafrLibrary
Parent: CRMIComputableLibrary|1.0.0
Id: us-safr-library
Title: "US SAFR Library"
Description: "This profile defines a Library resource for the US SAFR Measure. It contains the CQL logic that defines the populations, observations, and stratifiers for bed capacity monitoring."

// Basic Metadata Requirements
* version 1..1 MS
* version ^short = "Business version of the library"
* version ^definition = "The business version identifier for this library, used to track changes to the library structure and logic over time."

* name 1..1 MS
* name ^short = "Computer-friendly name"
* name ^definition = "A machine-friendly name for the library that follows the CamelCase naming convention (e.g., 'BedCapacityLogic')."

* title 1..1 MS
* title ^short = "Human-friendly name"
* title ^definition = "A human-friendly title for the library that clearly identifies its purpose."

* status 1..1 MS
* status ^short = "draft | active | retired | unknown"
* status ^definition = "The status of this library. Should be 'active' when implemented in production."

* experimental 0..1 MS
* experimental ^short = "For testing purposes, not for real usage"
* experimental ^definition = "A flag to indicate this is for testing or educational purposes only."

* type 1..1 MS
* type = $library-type#logic-library
* type ^short = "Type of library"
* type ^definition = "The type of library - must be a logic-library for CQL-based bed capacity measures."

* date 1..1 MS
* date ^short = "Date the library was last updated"
* date ^definition = "The date (and optionally time) the library was last updated."

* publisher 1..1 MS
* publisher ^short = "Name of the publisher"
* publisher ^definition = "The name of the organization or individual responsible for publishing this library."

* description 1..1 MS
* description ^short = "Natural language description"
* description ^definition = "A detailed description of the logic library, including its purpose and appropriate use."

// Subject Requirements - using a CodeableConcept rather than a reference
* subject[x] only CodeableConcept
* subjectCodeableConcept 1..1 MS
* subjectCodeableConcept from BedCapacityTopicVS (extensible)
* subjectCodeableConcept ^short = "Bed capacity monitoring"
* subjectCodeableConcept ^definition = "The subject matter of the library, which should be bed capacity monitoring for hospitals."

// Content Requirements
* content 1..* MS
* content ^short = "CQL content of the library"
* content ^definition = "The CQL content of the library, either embedded directly or referenced as an attachment."
* content.contentType 1..1 MS
//* content.contentType = #text/cql
* content.contentType ^short = "Content type of the library"
* content.contentType ^definition = "The content type of the library, which must be text/cql for CQL libraries."

// Data Requirements - without attempting to slice
* dataRequirement 1..* MS
* dataRequirement ^short = "FHIR resources referenced by the library"
* dataRequirement ^definition = "The FHIR resources referenced by this library, including Location, Encounter, and Organization resources."
* dataRequirement.type 1..1 MS
* dataRequirement.type ^short = "Resource type"
* dataRequirement.type ^definition = "The type of resource referenced by the data requirement."
* dataRequirement.profile 0..* MS
* dataRequirement.profile ^short = "Profiles for referenced resources"
* dataRequirement.profile ^definition = "The profiles that apply to the referenced resource types."

// Example instance of the profile
Instance: UsSafrLibraryExample
InstanceOf: UsSafrLibrary
Title: "US SAFR Library Example"
Description: "Example of a library resource for US SAFR bed capacity measures"
Usage: #example

//* url = "http://hl7.org/fhir/us/nhsn-bed-measures/Library/BedCapacityLogicLibrary"
* url = Canonical(UsSafrLibraryExample)
* version = "1.0.0"
* name = "UsSafrBedCapacityLogic"
* title = "US SAFR Bed Capacity Logic Library"
* status = #active
* experimental = false
* type = $library-type#logic-library
* date = "2025-03-05"
* publisher = "National Healthcare Safety Network (NHSN)"
* description = "This library contains CQL logic for calculating bed capacity metrics across ICU, ED, and Pediatric bed types to support NHSN reporting requirements."
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
* relatedArtifact[=].display = "Code system HealthcareCapacity"
* relatedArtifact[=].resource = Canonical(SAFRHealthareCapacityCSExample)

* subjectCodeableConcept = SAFRHealthareCapacityCSExample#HOSP "Hospital"

* content.contentType = #text/cql
* content.data = "bGlicmFyeSBCZWRDYXBhY2l0eUxvZ2ljIHZlcnNpb24gJzEuMC4wJwoKdXNpbmcgRkhJUiB2ZXJzaW9uICc0LjAuMScKCi8vIEluY2x1ZGUgRkhJUkhlbHBlcnMgdG8gYWNjZXNzIEZISVIgZGF0YSB0eXBlcwppbmNsdWRlIEZISVJIZWxwZXJzIHZlcnNpb24gJzQuMC4xJwoKLy8gRGVmaW5lIHZhbHVlIHNldHMgYmFzZWQgb24gb3VyIG1lYXN1cmUgcHJvZmlsZQpjb2Rlc3lzdGVtICJTQUZSIEhlYWx0aGNhcmUgQ2FwYWNpdHkgQ1MiOiAnaHR0cDovL2V4YW1wbGUub3JnL2ZoaXIvQ29kZVN5c3RlbS9TQUZSSGVhbHRoYXJlQ2FwYWNpdHlDUycKY29kZXN5c3RlbSAiU0FGUiBGYWNpbGl0eSBDUyI6ICdodHRwOi8vZXhhbXBsZS5vcmcvZmhpci9Db2RlU3lzdGVtL1NBRlJGYWNpbGl0eUNTJwoKLy8gRGVmaW5lIGNvZGVzIGZvciBiZWQgdHlwZXMKY29kZSAiSUNVIjogJ0lDVScgZnJvbSAiU0FGUiBIZWFsdGhjYXJlIENhcGFjaXR5IENTIiBkaXNwbGF5ICdJbnRlbnNpdmUgQ2FyZSBVbml0Jwo="

// Adding separate data requirements for each resource type
* dataRequirement[0].type = #Location
* dataRequirement[0].codeFilter.path = "type"
* dataRequirement[0].codeFilter.code = http://hl7.org/fhir/us/safr/CodeSystem/SAFRHealthareCapacityCSExample#AdultICUOccupied "Adult ICU Census"

* dataRequirement[1].type = #Encounter
* dataRequirement[1].codeFilter.path = "status"
* dataRequirement[1].codeFilter.code = http://hl7.org/fhir/encounter-status#in-progress "In Progress"

* dataRequirement[2].type = #Organization
* dataRequirement[2].codeFilter.path = "type"
* dataRequirement[2].codeFilter.code = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
