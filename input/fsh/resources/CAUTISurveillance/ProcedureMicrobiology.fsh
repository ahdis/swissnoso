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




// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoProcedureMicrobiology
Source: SwissnosoProcedureMicrobiology
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* performedDateTime     -> "1.1 c) 1.1 Sampling date (format: YYYY-MM-DD)"
* status                -> "1.1 c) 1. Microbiology done (yes/no)"



// --------------- Instances --------------- //
Instance: Microbiology-20210709-44371210708
InstanceOf: SwissnosoProcedureMicrobiology
Usage: #example
Title: "Microbiology (09.07.2021)"
Description: "Example of a Swissnoso procedure (UC 44371)"
* status = #completed
* subject = Reference(LisaGuggisberg)
* performedDateTime = "2021-07-09"
* code = $sct#269934003 "Microbiology (procedure)"
* encounter = Reference(Encounter-44371210708)
* reasonReference = Reference(Symptoms-20210709-44371210708)
