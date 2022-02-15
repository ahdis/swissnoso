// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationGerm
Parent: SwissnosoObservation
Id: swissnoso-observation-germ
Title: "Swissnoso Observation Germ"
Description: "This profile constrains the Observation resource to represent the germ in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Germ"

* code from Germ (preferred)

* effectiveDateTime 1..

* valueCodeableConcept from BacterialCountInUrine (preferred)
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
* code                  -> "1.1 c) 1.2.2/1.2.4 Germ (E. coli, Proteus sp., Klebsiella sp., Enterococcus sp., P. aeruginosa, another germ)"
* valueCodeableConcept  -> "1.1 c) 1.2.3/1.2.5 Bacterial count in urine (<10E5 CFU/ml, >=10E5 CFU/ml)"




// --------------- Instances --------------- //
Instance: Germ1-20210709-44371210708
InstanceOf: SwissnosoObservationGerm
Usage: #example
Title: "Germ 1 (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $germ#1 "E. coli"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueCodeableConcept = $bacterialcountinurine#1 "<10E5 CFU/ml"
* partOf = Reference(Microbiology-20210709-44371210708)