// --------------- Structure Definition --------------- //
Profile: SwissnosoProcedureRemoveCatheter
Parent: SwissnosoProcedure
Id: swissnoso-procedure-remove-catheter
Title: "Swissnoso Procedure Remove Catheter"
Description: "This profile constrains the Procedure resource to represent the procedure of removing a catheter in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Procedure Remove Catheter"

* code = $sct#43748006
* code. ^short = "Removal of urinary bladder catheter (procedure)"

* performedDateTime 1..
* performedDateTime. ^short = "Date of removal"

* reasonReference 1..1
* reasonReference only Reference(SwissnosoProcedureInsertCatheter)


// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoProcedureRemoveCatheter
Source: SwissnosoProcedureRemoveCatheter
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* performedDateTime                 -> "1.1 b) 4. Date of removal"


