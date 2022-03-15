// --------------- Structure Definition --------------- //
Profile: SwissnosoProcedureInsertCatheter
Parent: SwissnosoProcedure
Id: swissnoso-procedure-insert-catheter
Title: "Swissnoso Procedure Insert Catheter"
Description: "This profile constrains the Procedure resource to represent the procedure of inserting a catheter in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Procedure Insert Catheter"

* extension contains SwissnosoTransurethralProcedure named transurethralProcedure 0..1
* extension[transurethralProcedure]. ^short = "Insertion of the catheter as part of a transurethral procedure"

* extension contains SwissnosoSequenceNumber named sequenceNumber 1..1
* extension[sequenceNumber]. ^short = "Sequence number of the catheter"

* code = $sct#410024004
* code. ^short = "Catheterization of urinary bladder (procedure)"

* performedDateTime 1..
* performedDateTime. ^short = "Date of insertion"

* location only Reference(SwissnosoLocation)
* location. ^short = "Place of insertion"

* reasonCode ..1
* reasonCode from SwissnosoIndication (required)
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

