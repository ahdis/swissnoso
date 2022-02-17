
// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationUrinaryUrgency
Parent: SwissnosoObservation
Id: swissnoso-observation-urinary-urgency
Title: "Swissnoso Observation Urinary Urgency"
Description: "This profile constrains the Observation resource to represent the presence/absence of the symptom urinary urgency in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Fever"

* valueBoolean. ^short = "Urinary urgency (yes/no)"
* valueBoolean 1..

* code = $swissnoso-clinical-symptom#4
* code. ^short = "Urinary urgency"

* obeys swissnoso-obs-2
* effectiveDateTime. ^short = "Date of symptom onset"
//* effectiveDateTime 1..



// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoObservationUrinaryUrgency
Source: SwissnosoObservationUrinaryUrgency
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* valueBoolean      -> "1.1 c) 2.4 Urinary urgency (yes/no)"
* effectiveDateTime -> "1.1 c) 2.4 Urinary urgency - date of symptom onset"


// --------------- Instances --------------- //
Instance: UrinaryUrgency-20210709-44371210708
InstanceOf: SwissnosoObservationUrinaryUrgency
Usage: #example
Title: "Urinary Urgency (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#4 "Harndrang"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = true

