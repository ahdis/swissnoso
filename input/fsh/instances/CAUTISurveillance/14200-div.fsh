// Hospital
Instance: Encounter-14200210624
InstanceOf: SwissnosoEncounter
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
* extension[organizationalUnit].extension[unit].valueCoding = $swissnoso-organizational-unit#1 "Chirurgie (SUR)"



// TBD: https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Narrative.20Content.20-.3E.20Patient.2EbirthDate
// TBD: Anonymous Patient (no stated gender) 1933-01-01 ( Medical record number: 14200)
Instance: AnnaMeier
InstanceOf: SwissnosoPatient
Usage: #example
Title: "Anna Meier"
Description: "Example of a Swissnoso patient (UC 14200)"
* identifier[LocalPid].system = "http://fhir.tannenwald.ch/pid"
* identifier[LocalPid].value = "14200"
* gender = #female
* birthDate = "1933"


// Catheter

// Symptoms

// Microbiology
