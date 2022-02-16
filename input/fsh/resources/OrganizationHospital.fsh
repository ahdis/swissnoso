// --------------- Structure Definition --------------- //
Profile: SwissnosoOrganizationHospital
Parent: $ChCoreOrganization
Id: swissnoso-organization-hospital
Title: "Swissnoso Organization Hospital"
Description: "This profile constrains the Organization resource to represent the characteristics of an organization as a hospital in the context of a report to Swissnoso."
* . ^short = "Swissnoso Organization"

//* identifier ..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open

* identifier contains swissnoso 1..1
* identifier[swissnoso] 1..
* identifier[swissnoso] ^patternIdentifier.system = "http://fhir.swissnoso.ch/clinic-number"
* identifier[swissnoso].value 1..


// --------------- Instances --------------- //
Instance: SpitalTannenwald
InstanceOf: SwissnosoOrganizationHospital
Usage: #example
Title: "Spital Tannenwald"
Description: "Example of a Swissnoso organization (hospital)"
* identifier[swissnoso].system = "http://fhir.swissnoso.ch/clinic-number"
* identifier[swissnoso].value = "1234"


