
// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationSymptoms
Parent: SwissnosoObservation
Id: swissnoso-observation-symptoms
Title: "Swissnoso Observation Symptoms"
Description: "This profile constrains the Observation resource to represent the presence/absence of symptoms in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Symptoms"
* obeys swissnoso-obs-1

* valueBoolean. ^short = "Symptoms (yes/no)"
* valueBoolean 1..

* code = $lnc#75325-1
* code. ^short = "Symptom"

* effectiveDateTime 1..

* hasMember ..6
* hasMember only Reference(SwissnosoObservation)
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.ordered = false
* hasMember ^slicing.rules = #open
* hasMember contains
    fever 0..1 and
    suprapubicTenderness 0..1 and
    anglePainOrTenderness 0..1 and
    urinaryUrgency 0..1 and
    urinaryFrequency 0..1 and
    dysuria 0..1
* hasMember[fever] only Reference(SwissnosoObservationFever)
* hasMember[fever] ^short = "Fever >38.0°C (ear)"
* hasMember[suprapubicTenderness] only Reference(SwissnosoObservationSuprapubicTenderness)
* hasMember[suprapubicTenderness] ^short = "Suprapubic tenderness"
* hasMember[anglePainOrTenderness] only Reference(SwissnosoObservationAnglePainOrTenderness)
* hasMember[anglePainOrTenderness] ^short = "Costovertebral angle pain or tenderness"
* hasMember[urinaryUrgency] only Reference(SwissnosoObservationUrinaryUrgency)
* hasMember[urinaryUrgency] ^short = "Urinary urgency"
* hasMember[urinaryFrequency] only Reference(SwissnosoObservationUrinaryFrequency)
* hasMember[urinaryFrequency] ^short = "Urinary frequency"
* hasMember[dysuria] only Reference(SwissnosoObservationDysuria)
* hasMember[dysuria] ^short = "Dysuria"



// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoObservationSymptoms
Source: SwissnosoObservationSymptoms
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* valueBoolean  -> "1.1 c) 2. Symptoms (yes/no)"
