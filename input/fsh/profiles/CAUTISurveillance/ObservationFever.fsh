
// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationFever
Parent: SwissnosoObservation
Id: swissnoso-observation-fever
Title: "Swissnoso Observation Fever"
Description: "This profile constrains the Observation resource to represent the presence/absence of the symptom fever in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Fever"

* valueBoolean. ^short = "Fever >38.0°C (ear) (yes/no)"
* valueBoolean 1..

* code = $swissnoso-clinical-symptom#1 
* code. ^short = "Fever >38.0°C (ear)"

* obeys swissnoso-obs-2
* effectiveDateTime. ^short = "Date of symptom onset"
//* effectiveDateTime 1..



// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoObservationFever
Source: SwissnosoObservationFever
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* valueBoolean      -> "1.1 c) 2.1 Fever >38.0°C (ear) (yes/no)"
* effectiveDateTime -> "1.1 c) 2.1 Fever >38.0°C (ear) - date of symptom onset"
