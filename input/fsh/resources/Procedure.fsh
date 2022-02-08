Instance: InsertCatheter14200210624
InstanceOf: Procedure
Usage: #example
Title: "Insert Catheter (14200210624)"
Description: "Example of a Swissnoso procedure to insert a catheter (integrated in use case 14200)"
* status = #completed
* subject = Reference(AnnaMeier)
* performedDateTime = "2021-07-01"
* code = $sct#410024004 "Catheterization of urinary bladder (procedure)"
* location = Reference(Bettenstation)
* reasonCode = $indication#3 "Operation"


Instance: RemoveCatheter14200210624
InstanceOf: Procedure
Usage: #example
Title: "Remove Catheter (14200210624)"
Description: "Example of a Swissnoso procedure to remove a catheter (integrated in use case 14200)"
* status = #completed
* subject = Reference(AnnaMeier)
* performedDateTime = "2021-07-04"
* code = $sct#43748006 "Removal of urinary bladder catheter (procedure)"