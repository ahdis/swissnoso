// --------------- Structure Definition --------------- //
Profile: SwissnosoProcedure
Parent: Procedure
Id: swissnoso-procedure
Title: "Swissnoso Procedure"
Description: "This profile constrains the Procedure resource to ..."
* . ^short = "Swissnoso Procedure"
//* encounter only Reference(SwissnosoEncounter)
* encounter 1..
* subject only Reference(SwissnosoPatient)


Profile: SwissnosoProcedureInsertCatheter
Parent: SwissnosoProcedure
Id: swissnoso-procedure-insert-catheter
Title: "Swissnoso Procedure Insert Catheter"
Description: "This profile constrains the Procedure resource to ..."
* . ^short = "Swissnoso Procedure Insert Catheter"
* extension contains TransurethralProcedure named transurethralProcedure 0..1
* code = $sct#410024004
* code. ^short = "Catheterization of urinary bladder (procedure)"
//* location only Reference(SwissnosoLocation)


Profile: SwissnosoProcedureRemoveCatheter
Parent: SwissnosoProcedure
Id: swissnoso-procedure-remove-catheter
Title: "Swissnoso Procedure Remove Catheter"
Description: "This profile constrains the Procedure resource to ..."
* . ^short = "Swissnoso Procedure Remove Catheter"
* code = $sct#43748006
* code. ^short = "Removal of urinary bladder catheter (procedure)"



// --------------- Instances --------------- //
Instance: InsertCatheter-20210701-14200210624
InstanceOf: SwissnosoProcedureInsertCatheter
Usage: #example
Title: "Insert Catheter (01.07.2021)"
Description: "Example of a Swissnoso procedure (UC 14200)"
* status = #completed
* subject = Reference(AnnaMeier)
* performedDateTime = "2021-07-01"
* code = $sct#410024004 "Catheterization of urinary bladder (procedure)"
* location = Reference(Bettenstation)
* reasonCode = $indication#3 "Operation"
* extension[transurethralProcedure].valueBoolean = false
* encounter = Reference(Encounter-14200210624)


Instance: RemoveCatheter-20210704-14200210624
InstanceOf: SwissnosoProcedureRemoveCatheter
Usage: #example
Title: "Remove Catheter (04.07.2021)"
Description: "Example of a Swissnoso procedure (UC 14200)"
* status = #completed
* subject = Reference(AnnaMeier)
* performedDateTime = "2021-07-04"
* code = $sct#43748006 "Removal of urinary bladder catheter (procedure)"
* encounter = Reference(Encounter-14200210624)



Instance: InsertCatheter-20210708-44371210708
InstanceOf: SwissnosoProcedureInsertCatheter
Usage: #example
Title: "Insert Catheter (08.07.2021)"
Description: "Example of a Swissnoso procedure (UC 44371)"
* status = #completed
* subject = Reference(LisaGuggisberg)
* performedDateTime = "2021-07-08"
* code = $sct#410024004 "Catheterization of urinary bladder (procedure)"
* location = Reference(Bettenstation)
* reasonCode = $indication#1 "Harnverhalt"
* extension[transurethralProcedure].valueBoolean = false
* encounter = Reference(Encounter-44371210708)


Instance: RemoveCatheter-20210709-44371210708
InstanceOf: SwissnosoProcedureRemoveCatheter
Usage: #example
Title: "Remove Catheter (09.07.2021)"
Description: "Example of a Swissnoso procedure (UC 14200)"
* status = #completed
* subject = Reference(LisaGuggisberg)
* performedDateTime = "2021-07-09"
* code = $sct#43748006 "Removal of urinary bladder catheter (procedure)"
* encounter = Reference(Encounter-44371210708)