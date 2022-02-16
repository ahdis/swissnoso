// --------------- Structure Definition --------------- //
Profile: SwissnosoEncounter
Parent: $ChCoreEncounter
Id: swissnoso-encounter
Title: "Swissnoso Encounter"
Description: "This profile constrains the Encounter resource to represent the characteristics of a encounter in the context of a report to Swissnoso."
* . ^short = "Swissnoso Encounter"

* subject 1..
* subject only Reference(SwissnosoPatient)


// --------------- Instances --------------- //
Instance: Encounter-14200210624
InstanceOf: SwissnosoEncounter
Usage: #example
Title: "Encounter 14200210624"
Description: "Example of a Swissnoso encounter (UC 14200)"
* identifier[VisitNumber].system = "http://fhir.tannenwald.ch/fid"
* identifier[VisitNumber].value = "14200210624"
* status = #finished
* class = $v3-ActCode#IMP
* subject = Reference(AnnaMeier)
* period.start = "2021-06-24"
* period.end = "2021-07-08"
* serviceProvider = Reference(SpitalTannenwald)


Instance: Encounter-44371210708
InstanceOf: SwissnosoEncounter
Usage: #example
Title: "Encounter 44371210708"
Description: "Example of a Swissnoso encounter (UC 44371)"
* identifier[VisitNumber].system = "http://fhir.tannenwald.ch/fid"
* identifier[VisitNumber].value = "44371210708"
* status = #finished
* class = $v3-ActCode#IMP
* subject = Reference(LisaGuggisberg)
* period.start = "2021-07-08"
* period.end = "2021-07-14"
* serviceProvider = Reference(SpitalTannenwald)
* serviceType = $swissnoso-specialization#22 "Allgemeinmedizin (MEDGEN)"