// --------------- Structure Definition --------------- //
Profile: SwissnosoProcedureInsertCatheter
Parent: SwissnosoProcedure
Id: swissnoso-procedure-insert-catheter
Title: "Swissnoso Procedure Insert Catheter"
Description: "This profile constrains the Procedure resource to represent the procedure of inserting a catheter in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Procedure Insert Catheter"

* extension contains SwissnosoTransurethralProcedure named transurethralProcedure 0..1
* extension[transurethralProcedure]. ^short = "Insertion of the catheter as part of a transurethral procedure"

* code = $sct#410024004
* code. ^short = "Catheterization of urinary bladder (procedure)"

* performedDateTime 1..
* performedDateTime. ^short = "Date of insertion"

* location only Reference(SwissnosoLocation)
* location. ^short = "Place of insertion"

* reasonCode ..1
* reasonCode from SwissnosoIndication (preferred)
* reasonCode. ^short = "Indication"


// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoProcedureInsertCatheter
Source: SwissnosoProcedureInsertCatheter
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* extension[transurethralProcedure] -> "1.1 b) 3. Insertion of the catheter as part of a transurethral procedure (yes/no)"
* performedDateTime                 -> "1.1 b) 1. Date of insertion"
* location                          -> "1.1 b) 2. Place of insertion"
* reasonCode                        -> "1.1 b) 5. Indication"





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
* reasonCode = $swissnoso-indication#3 "Operation"
* extension[transurethralProcedure].valueBoolean = false
* encounter = Reference(Encounter-14200210624)




