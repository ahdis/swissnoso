// --------------- Structure Definition --------------- //
Profile: SwissnosoProcedure
Parent: Procedure
Id: swissnoso-procedure
Title: "Swissnoso Procedure"
Description: "This profile constrains the Procedure resource to represent the characteristics of a procedure in the context of a report to Swissnoso."
* . ^short = "Swissnoso Procedure"

* subject only Reference(SwissnosoPatient)

* encounter only Reference(SwissnosoEncounterUnit)
* encounter 1..



Profile: SwissnosoObservation
Parent: Observation
Id: swissnoso-observation
Title: "Swissnoso Observation"
Description: "This profile constrains the Observation resource to represent the characteristics of a observation in the context of a report to Swissnoso."
* . ^short = "Swissnoso Observation"

* subject only Reference(SwissnosoPatient)
* subject 1..

* encounter only Reference(SwissnosoEncounterUnit)
* encounter 1..
