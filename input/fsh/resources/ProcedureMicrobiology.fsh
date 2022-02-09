// --------------- Structure Definition --------------- //
Profile: SwissnosoProcedureMicrobiology
Parent: SwissnosoProcedure
Id: swissnoso-procedure-micorbiology
Title: "Swissnoso Procedure Microbiology"
Description: "This profile constrains the Procedure resource to ..."
* . ^short = "Swissnoso Procedure Microbiology"

* code = $sct#269934003
* code. ^short = "Microbiology (procedure)"




// --------------- Instances --------------- //
Instance: Microbiology44371210708
InstanceOf: SwissnosoProcedureMicrobiology
Usage: #example
Title: "Microbiology (44371210708)"
Description: "Example of a Swissnoso procedure (UC 44371)"
* status = #completed
* subject = Reference(LisaGuggisberg)
* performedDateTime = "2021-07-09"
* code = $sct#269934003 "Microbiology (procedure)"
* encounter = Reference(Encounter44371210708)