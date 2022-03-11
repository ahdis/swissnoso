// --------------- Structure Definition --------------- //
Profile: SwissnosoLocation
Parent: $ChCoreLocation
Id: swissnoso-location
Title: "Swissnoso Location"
Description: "This profile constrains the Location resource to represent the characteristics of a location in the context of a report to Swissnoso."
* . ^short = "Swissnoso Location"

* physicalType 1..
* physicalType from SwissnosoProcedureLocation (required)

* managingOrganization 1..
* managingOrganization only Reference(SwissnosoOrganization)
