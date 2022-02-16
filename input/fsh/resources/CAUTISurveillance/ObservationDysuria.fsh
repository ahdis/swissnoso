
// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationDysuria
Parent: SwissnosoObservation
Id: swissnoso-observation-dysuria
Title: "Swissnoso Observation Dysuria"
Description: "This profile constrains the Observation resource to represent the presence/absence of the symptom dysuria in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Dysuria"

* valueBoolean. ^short = "Dysuria (yes/no)"
* valueBoolean 1..

* code = $swissnoso-clinical-symptom#6
* code. ^short = "Dysuria"

* effectiveDateTime. ^short = "Date of symptom onset"
* effectiveDateTime 1..



// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoObservationDysuria
Source: SwissnosoObservationDysuria
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* valueBoolean      -> "1.1 c) 2.6 Dysuria (yes/no)"
* effectiveDateTime -> "1.1 c) 2.6 Dysuria - date of symptom onset"


// --------------- Instances --------------- //
Instance: NoDysuria-20210709-44371210708
InstanceOf: SwissnosoObservationDysuria
Usage: #example
Title: "No Dysuria (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#6 "Dysurie"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-Unit-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = false