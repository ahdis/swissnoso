// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationNumberOfDifferentGerms
Parent: SwissnosoObservation
Id: swissnoso-observation-numberofdifferentgerms
Title: "Swissnoso Observation Number of Different Germs"
Description: "This profile constrains the Observation resource to represent the number of different germs in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Number of Different Germs"

* valueCodeableConcept from NumberOfDifferentGerms (preferred)
* valueCodeableConcept. ^short = "Number of different germs (0, 1, 2, >2)"
* valueCodeableConcept 1..

* code = $sct#number
* code. ^short = "Number of different germs"

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



// --------------- Instances --------------- //
Instance: NumberOfDifferentGerms-20210709-44371210708
InstanceOf: SwissnosoObservationNumberOfDifferentGerms
Usage: #example
Title: "Number of Different Germs (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $sct#number "Number of Different Germs"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueCodeableConcept = $numberofdifferentgerms#1 "1"
* partOf = Reference(Microbiology-20210709-44371210708)
* hasMember = Reference(Germ1-20210709-44371210708)

