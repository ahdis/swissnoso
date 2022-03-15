// --------------- Structure Definition --------------- //
Profile: SwissnosoProcedureMicrobiology
Parent: SwissnosoProcedure
Id: swissnoso-procedure-microbiology
Title: "Swissnoso Procedure Microbiology"
Description: "This profile constrains the Procedure resource to represent the microbiology in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Procedure Microbiology"

* code 1..
* code = $sct#269934003
* code. ^short = "Microbiology (procedure)"

* performedDateTime 1..
* performedDateTime. ^short = "Sampling date"

* reasonReference only Reference(SwissnosoObservationSymptoms)
* reasonReference 1..1

* extension contains SwissnosoSequenceNumber named sequenceNumber 1..1
* extension[sequenceNumber]. ^short = "Sequence number of the microbiology"




// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoProcedureMicrobiology
Source: SwissnosoProcedureMicrobiology
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* performedDateTime     -> "1.1 c) 1.1 Sampling date (format: YYYY-MM-DD)"
* status                -> "1.1 c) 1. Microbiology done (yes/no)"

