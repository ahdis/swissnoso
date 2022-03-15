// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationNumberOfDifferentGerms
Parent: SwissnosoObservation
Id: swissnoso-observation-number-of-different-germs
Title: "Swissnoso Observation Number of Different Germs"
Description: "This profile constrains the Observation resource to represent the number of different swissnoso-germs in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Number of Different Germs"

* valueCodeableConcept from SwissnosoNumberOfDifferentGerms (required)
* valueCodeableConcept. ^short = "Number of different germs (0, 1, 2, >2)"
* valueCodeableConcept 1..

* code = $sct#309470003
* code. ^short = "Identification of microorganisms in urine culture (procedure)"

* effectiveDateTime 1..

* partOf only Reference(SwissnosoProcedureMicrobiology)
* partOf 1..1

* hasMember only Reference(SwissnosoObservationGerm)
* hasMember ..2



// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoObservationNumberOfDifferentGerms
Source: SwissnosoObservationNumberOfDifferentGerms
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* valueCodeableConcept  -> "1.1 c) 1.2.1 Number of different germs (0, 1, 2, >2)"

