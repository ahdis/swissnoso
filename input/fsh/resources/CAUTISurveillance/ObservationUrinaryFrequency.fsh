
// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationUrinaryFrequency
Parent: SwissnosoObservation
Id: swissnoso-observation-urinary-frequency
Title: "Swissnoso Observation Urinary Frequency"
Description: "This profile constrains the Observation resource to represent the presence/absence of the symptom urinary frequency in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Urinary Frequency"

* valueBoolean. ^short = "Urinary frequency (yes/no)"
* valueBoolean 1..

* code = $swissnoso-clinical-symptom#5
* code. ^short = "Urinary frequency"

* obeys swissnoso-obs-2
* effectiveDateTime. ^short = "Date of symptom onset"
//* effectiveDateTime 1..



// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoObservationUrinaryFrequency
Source: SwissnosoObservationUrinaryFrequency
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* valueBoolean      -> "1.1 c) 2.5 Urinary frequency (yes/no)"
* effectiveDateTime -> "1.1 c) 2.5 Urinary frequency - date of symptom onset"


// --------------- Instances --------------- //
Instance: NoUrinaryFrequency-20210709-44371210708
InstanceOf: SwissnosoObservationUrinaryFrequency
Usage: #example
Title: "No Urinary Frequency (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#5 "Pollakisurie"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-Unit-44371210708)
//* effectiveDateTime = "2021-07-09"
* valueBoolean = false

