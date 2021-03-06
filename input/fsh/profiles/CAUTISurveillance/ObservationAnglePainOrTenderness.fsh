
// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationAnglePainOrTenderness 
Parent: SwissnosoObservation
Id: swissnoso-observation-angle-pain-or-tenderness 
Title: "Swissnoso Observation Angle Pain or Tenderness"
Description: "This profile constrains the Observation resource to represent the presence/absence of the symptom costovertebral angle pain or tenderness in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Angle Pain or Tenderness"

* valueBoolean. ^short = "Costovertebral angle pain or tenderness (yes/no)"
* valueBoolean 1..

* code = $swissnoso-clinical-symptom#3
* code. ^short = "Costovertebral angle pain or tenderness"

* obeys swissnoso-obs-2
* effectiveDateTime. ^short = "Date of symptom onset"
//* effectiveDateTime 1..



// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoObservationAnglePainOrTenderness
Source: SwissnosoObservationAnglePainOrTenderness
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* valueBoolean      -> "1.1 c) 2.3 Costovertebral angle pain or tenderness (yes/no)"
* effectiveDateTime -> "1.1 c) 2.3 Costovertebral angle pain or tenderness - date of symptom onset"

