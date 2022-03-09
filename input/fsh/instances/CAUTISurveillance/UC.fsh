// Tannenwald
Instance: SpitalTannenwald
InstanceOf: SwissnosoOrganization
Usage: #example
Title: "Spital Tannenwald"
Description: "Example of a Swissnoso organization"
* identifier[swissnoso].system = "http://fhir.swissnoso.ch/clinic-number"
* identifier[swissnoso].value = "1234"

Instance: NotfallstationTannenwald
InstanceOf: SwissnosoLocation
Usage: #example
Title: "Notfallstation Tannenwald"
Description: "Example of a Swissnoso location"
* name = "Notfallstation Tannenwald"
* physicalType = $swissnoso-procedure-location#1 "Notfallstation"
* managingOrganization = Reference(SpitalTannenwald)

Instance: BettenstationTannenwald
InstanceOf: SwissnosoLocation
Usage: #example
Title: "Bettenstation Tannenwald"
Description: "Example of a Swissnoso location"
* name = "Bettenstation Tannenwald"
* physicalType = $swissnoso-procedure-location#2 "Bettenstation"
* managingOrganization = Reference(SpitalTannenwald)


// Bellevue
Instance: SpitalBellevue
InstanceOf: SwissnosoOrganization
Usage: #example
Title: "Spital Bellevue"
Description: "Example of a Swissnoso organization"
* identifier[swissnoso].system = "http://fhir.swissnoso.ch/clinic-number"
* identifier[swissnoso].value = "1357"

Instance: BettenstationBellevue
InstanceOf: SwissnosoLocation
Usage: #example
Title: "Bettenstation Bellevue"
Description: "Example of a Swissnoso location"
* name = "Bettenstation Bellevue"
* physicalType = $swissnoso-procedure-location#2 "Bettenstation"
* managingOrganization = Reference(SpitalBellevue)