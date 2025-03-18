Instance: MemorialHospitalFacility
InstanceOf: QICoreLocation
Usage: #example
* identifier.system = "http://example.org/fhir/location-identifier"
* identifier.value = "MEM-MAIN"
* name = "Memorial Hospital Main Campus"
* description = "Main hospital campus including ICU, ED, and Pediatric units"
* status = #active
* mode = #instance
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP "Hospital"
* managingOrganization.reference = "urn:uuid:4c83e586-1277-4132-9b4e-3d1c14d38981" //Reference(MemorialHospitalOrganization)
* address.line = "123 Healthcare Drive"
* address.city = "Springfield"
* address.state = "IL"
* address.postalCode = "62701"
* address.country = "USA"
* physicalType = $location-physical-type#bu "Building"





Instance: XYZHospitalLocation
InstanceOf: QICoreLocation|6.0.0
Title: "Location - Entire Hospital"
Description: "Hospital-wide"
Usage: #inline
* meta.profile[+] = "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-location|6.0.0"
* identifier.system = "http://www.example.org/location"
* identifier.value = "123"
* status = #active
* name = "XYZ Hospital"
* type = BedCapacityExampleCS#HOSP "Hospital"

Instance: IPFLocation
InstanceOf: QICoreLocation|6.0.0
Title: "Location - Inpatient Psychiatric"
Description: "Inpatient Psych (IPF)"
Usage: #inline
* meta.profile[+] = "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-location|6.0.0"
* identifier.system = "http://www.example.org/location"
* identifier.value = "456"
* status = #active
* name = "Inpatient Psych at XYZ Hospital"
* type = BedCapacityExampleCS#IPF "Inpatient Psychiatric"

Instance: PediatricLocation
InstanceOf: QICoreLocation|6.0.0
Title: "Location - Children's or Pediatrics Dept."
Description: "Pediatric (CHLD)"
Usage: #inline
* meta.profile[+] = "http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-location|6.0.0"
* identifier.system = "http://www.example.org/location"
* identifier.value = "789"
* status = #active
* name = "Children's/Pediatrics at XYZ Hospital"
* type = BedCapacityExampleCS#CHLD "Children's or Pediatric"