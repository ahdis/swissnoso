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
Instance: HopitalBellevue
InstanceOf: SwissnosoOrganization
Usage: #example
Title: "Hôpital Bellevue"
Description: "Example of a Swissnoso organization"
* identifier[swissnoso].system = "http://fhir.swissnoso.ch/clinic-number"
* identifier[swissnoso].value = "1357"

Instance: UniteHospitaliereBellevue
InstanceOf: SwissnosoLocation
Usage: #example
Title: "Unité hospitalière Bellevue"
Description: "Example of a Swissnoso location"
* name = "Unité hospitalière Bellevue"
* physicalType = $swissnoso-procedure-location#2 "Unité hospitalière"
* managingOrganization = Reference(HopitalBellevue)


// Santa Maria
Instance: OspedaleSantaMaria
InstanceOf: SwissnosoOrganization
Usage: #example
Title: "Ospedale Santa Maria"
Description: "Example of a Swissnoso organization"
* identifier[swissnoso].system = "http://fhir.swissnoso.ch/clinic-number"
* identifier[swissnoso].value = "9876"

Instance: DegenzaSantaMaria
InstanceOf: SwissnosoLocation
Usage: #example
Title: "Degenza Santa Maria"
Description: "Example of a Swissnoso location"
* name = "Degenza Santa Maria"
* physicalType = $swissnoso-procedure-location#2 "Degenza"
* managingOrganization = Reference(OspedaleSantaMaria)