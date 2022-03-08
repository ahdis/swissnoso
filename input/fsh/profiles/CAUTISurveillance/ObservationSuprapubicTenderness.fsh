
// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationSuprapubicTenderness 
Parent: SwissnosoObservation
Id: swissnoso-observation-suprapubic-tenderness 
Title: "Swissnoso Observation Suprapubic Tenderness"
Description: "This profile constrains the Observation resource to represent the presence/absence of the symptom suprapubic tenderness in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Suprapubic Tenderness"

* valueBoolean. ^short = "Suprapubic tenderness (yes/no)"
* valueBoolean 1..

* code = $swissnoso-clinical-symptom#2 
* code. ^short = "Suprapubic tenderness"

* obeys swissnoso-obs-2
* effectiveDateTime. ^short = "Date of symptom onset"
//* effectiveDateTime 1..



// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoObservationSuprapubicTenderness
Source: SwissnosoObservationSuprapubicTenderness
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* valueBoolean      -> "1.1 c) 2.2 Suprapubic tenderness (yes/no)"
* effectiveDateTime -> "1.1 c) 2.2 Suprabucic tenderness - date of symptom onset"

