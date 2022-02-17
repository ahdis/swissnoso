// --------------- Structure Definition --------------- //
Profile: SwissnosoLocation
Parent: $ChCoreLocation
Id: swissnoso-location
Title: "Swissnoso Location"
Description: "This profile constrains the Location resource to represent the characteristics of a location in the context of a report to Swissnoso."
* . ^short = "Swissnoso Location"

* physicalType 1..
* physicalType from SwissnosoInsertionPlace (preferred)

* managingOrganization 1..
* managingOrganization only Reference(SwissnosoOrganization)



// --------------- Instances --------------- //
Instance: Bettenstation
InstanceOf: SwissnosoLocation
Usage: #example
Title: "Bettenstation"
Description: "Example of a Swissnoso location"
* name = "Bettenstation"
* physicalType = $swissnoso-insertion-place#2 "Bettenstation"
* managingOrganization = Reference(SpitalTannenwald)
