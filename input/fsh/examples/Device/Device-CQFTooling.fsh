Instance: cqf-tooling
InstanceOf: CQFMDevice
Title: "CQF Tooling Device"
Description: "Example of a Software System Device instance for describing tooling that was used to process artifacts."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/device-softwaresystem-cqfm"
* manufacturer = "CQFramework"
* deviceName.name = "cqf-tooling"
* deviceName.type = #manufacturer-name
* type = http://hl7.org/fhir/us/cqfmeasures/CodeSystem/software-system-type#tooling
* version.value = "3.1.0-SNAPSHOT"