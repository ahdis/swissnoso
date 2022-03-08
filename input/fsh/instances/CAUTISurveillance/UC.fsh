Instance: SpitalTannenwald
InstanceOf: SwissnosoOrganization
Usage: #example
Title: "Spital Tannenwald"
Description: "Example of a Swissnoso organization"
* identifier[swissnoso].system = "http://fhir.swissnoso.ch/clinic-number"
* identifier[swissnoso].value = "1234"



Instance: Notfallstation
InstanceOf: SwissnosoLocation
Usage: #example
Title: "Notfallstation"
Description: "Example of a Swissnoso location"
* name = "Notfallstation"
* physicalType = $swissnoso-insertion-place#1 "Notfallstation"
* managingOrganization = Reference(SpitalTannenwald)

Instance: Bettenstation
InstanceOf: SwissnosoLocation
Usage: #example
Title: "Bettenstation"
Description: "Example of a Swissnoso location"
* name = "Bettenstation"
* physicalType = $swissnoso-insertion-place#2 "Bettenstation"
* managingOrganization = Reference(SpitalTannenwald)


