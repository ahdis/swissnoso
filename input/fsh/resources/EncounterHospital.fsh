// --------------- Structure Definition --------------- //
Profile: SwissnosoEncounterHospital
Parent: $ChCoreEncounter
Id: swissnoso-encounter-hospital
Title: "Swissnoso Encounter Hospital"
Description: "This profile constrains the Encounter resource to represent the characteristics of an encounter in the hospital in the context of a report to Swissnoso."
* . ^short = "Swissnoso Encounter Hospital"

* identifier[VisitNumber]. ^short = "Case number"

* class = $v3-ActCode#IMP

* subject 1..
* subject only Reference(SwissnosoPatient)

* serviceProvider 1..
* serviceProvider only Reference(SwissnosoOrganizationHospital)

* period 1..
* period.start 1..
* period.start. ^short = "Date of admission to hospital"
* period.end 1..
* period.end. ^short = "Date of discharge from hospital"


// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoEncounterHospital
Source: SwissnosoEncounterHospital
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* identifier[VisitNumber]   -> "1.1 a) 2. Case number"
* period.start              -> "1.1 a) 7. Date of admission to hospital"
* period.end                -> "1.1 a) 9. Date of discharge from hospital"



// --------------- Instances --------------- //
Instance: Encounter-Hospital-14200210624
InstanceOf: SwissnosoEncounterHospital
Usage: #example
Title: "Encounter 14200210624"
Description: "Example of a Swissnoso encounter (UC 14200)"
* identifier[VisitNumber].system = "http://fhir.tannenwald.ch/fid"
* identifier[VisitNumber].value = "14200210624"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference(AnnaMeier)
* period.start = "2021-06-24"
* period.end = "2021-07-08"
* serviceProvider = Reference(SpitalTannenwald)


Instance: Encounter-Hospital-44371210708
InstanceOf: SwissnosoEncounterHospital
Usage: #example
Title: "Encounter 44371210708"
Description: "Example of a Swissnoso encounter (UC 44371)"
* identifier[VisitNumber].system = "http://fhir.tannenwald.ch/fid"
* identifier[VisitNumber].value = "44371210708"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference(LisaGuggisberg)
* period.start = "2021-07-08"
* period.end = "2021-07-14"
* serviceProvider = Reference(SpitalTannenwald)
