
// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationAnglePainOrTenderness 
Parent: SwissnosoObservation
Id: swissnoso-observation-anglepainortenderness 
Title: "Swissnoso Observation Angle Pain or Tenderness"
Description: "This profile constrains the Observation resource to represent the presence/absence of the symptom costovertebral angle pain or tenderness in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Angle Pain or Tenderness"

* valueBoolean. ^short = "Costovertebral angle pain or tenderness"
* valueBoolean 1..

* code = $clinicalsymptom#3
* code. ^short = "Costovertebral angle pain or tenderness"

* effectiveDateTime. ^short = "Date of symptom onset"
* effectiveDateTime 1..



// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoObservationAnglePainOrTenderness
Source: SwissnosoObservationAnglePainOrTenderness
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* valueBoolean      -> "1.1 c) 2.3 Costovertebral angle pain or tenderness (yes/no)"
* effectiveDateTime -> "1.1 c) 2.3 Costovertebral angle pain or tenderness - date of symptom onset"


// --------------- Instances --------------- //

Instance: NoAnglePainOrTenderness-20210709-44371210708
InstanceOf: SwissnosoObservationAnglePainOrTenderness
Usage: #example
Title: "No Angle Pain or Tenderness (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinicalsymptom#3 "Flankenschmerzen oder -klopfdolenz"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = false
