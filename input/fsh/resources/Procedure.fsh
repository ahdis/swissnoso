// --------------- Structure Definition --------------- //
Profile: SwissnosoProcedure
Parent: Procedure
Id: swissnoso-procedure
Title: "Swissnoso Procedure"
Description: "This profile constrains the Procedure resource to ..."
* . ^short = "Swissnoso Procedure"
* extension contains TransurethralProcedure named transurethralProcedure 0..1


// --------------- Instances --------------- //
Instance: InsertCatheter14200210624
InstanceOf: SwissnosoProcedure
Usage: #example
Title: "Insert Catheter (14200210624)"
Description: "Example of a Swissnoso procedure (UC 14200)"
* status = #completed
* subject = Reference(AnnaMeier)
* performedDateTime = "2021-07-01"
* code = $sct#410024004 "Catheterization of urinary bladder (procedure)"
* location = Reference(Bettenstation)
* reasonCode = $indication#3 "Operation"
* extension[transurethralProcedure].valueBoolean = false


Instance: RemoveCatheter14200210624
InstanceOf: Procedure
Usage: #example
Title: "Remove Catheter (14200210624)"
Description: "Example of a Swissnoso procedure (UC 14200)"
* status = #completed
* subject = Reference(AnnaMeier)
* performedDateTime = "2021-07-04"
* code = $sct#43748006 "Removal of urinary bladder catheter (procedure)"