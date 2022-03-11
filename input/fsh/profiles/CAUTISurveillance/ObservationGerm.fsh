// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationGerm
Parent: SwissnosoObservation
Id: swissnoso-observation-germ
Title: "Swissnoso Observation Germ"
Description: "This profile constrains the Observation resource to represent the germ in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Germ"

* code = $lnc#87829-8	
* code. ^short = "Bacteria [Presence] in Urine"

* extension contains SwissnosoGerm named germ 1..1
* extension[germ]. ^short = "Germ"

* effectiveDateTime 1..

* valueCodeableConcept from SwissnosoBacterialCountInUrine (required)
* valueCodeableConcept. ^short = "Bacterial count in urine (<10E5 CFU/ml, >=10E5 CFU/ml)"
* valueCodeableConcept 1..

* partOf only Reference(SwissnosoProcedureMicrobiology)
* partOf 1..1



// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoObservationGerm
Source: SwissnosoObservationGerm
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* extension[germ]       -> "1.1 c) 1.2.2/1.2.4 Germ (E. coli, Proteus sp., Klebsiella sp., Enterococcus sp., P. aeruginosa, another germ)"
* valueCodeableConcept  -> "1.1 c) 1.2.3/1.2.5 Bacterial count in urine (<10E5 CFU/ml, >=10E5 CFU/ml)"

