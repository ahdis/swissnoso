
// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationSuprapubicTenderness 
Parent: SwissnosoObservation
Id: swissnoso-observation-suprapubictenderness 
Title: "Swissnoso Observation Suprapubic Tenderness"
Description: "This profile constrains the Observation resource to represent the presence/absence of the symptom suprapubic tenderness in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Suprapubic Tenderness"

* valueBoolean. ^short = "Suprapubic tenderness (yes/no)"
* valueBoolean 1..

* code = $clinicalsymptom#2 
* code. ^short = "Suprapubic tenderness"

* effectiveDateTime. ^short = "Date of symptom onset"
* effectiveDateTime 1..



// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoObservationSuprapubicTenderness
Source: SwissnosoObservationSuprapubicTenderness
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* valueBoolean      -> "1.1 c) 2.2 Suprapubic tenderness (yes/no)"
* effectiveDateTime -> "1.1 c) 2.2 Suprabucic tenderness - date of symptom onset"


// --------------- Instances --------------- //
Instance: NoSuprapubicTenderness-20210709-44371210708
InstanceOf: SwissnosoObservationSuprapubicTenderness
Usage: #example
Title: "No Suprapubic Tenderness (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinicalsymptom#2 "Suprapubische Druckdolenz"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = false
