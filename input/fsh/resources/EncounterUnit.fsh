// --------------- Structure Definition --------------- //
Profile: SwissnosoEncounterUnit
Parent: $ChCoreEncounter
Id: swissnoso-encounter-unit
Title: "Swissnoso Encounter Unit"
Description: "This profile constrains the Encounter resource to represent the characteristics of an encounter in the unit (as part of an encounter in the hospital) in the context of a report to Swissnoso."
* . ^short = "Swissnoso Encounter Unit"

* identifier[VisitNumber]. ^short = "Case number"

* class = $v3-ActCode#IMP

* subject 1..
* subject only Reference(SwissnosoPatient)

* partOf 1..
* partOf only Reference(SwissnosoEncounterHospital)

* serviceProvider 1..
* serviceProvider only Reference(SwissnosoOrganizationUnit)

* period 1..
* period.start 1..
* period.start. ^short = "Date of admission to the monitored organizational units"
* period.end 1..
* period.end. ^short = "Date of discharge from the monitored organizational units"

* serviceType from SwissnosoSpecialization (preferred)
* serviceType. ^short = "Specialty"


// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoEncounterUnit
Source: SwissnosoEncounterUnit
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* identifier[VisitNumber]   -> "1.1 a) 2. Case number"
* period.start              -> "1.1 a) 8. Date of admission to the monitored organizational units"
* period.end                -> "1.1 a) 10. Date of discharge from the monitored organizational units"
* serviceType               -> "1.1 a) 6. Specialty"


// --------------- Instances --------------- //

Instance: Encounter-Unit-14200210624
InstanceOf: SwissnosoEncounterUnit
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
* partOf = Reference(Encounter-Hospital-14200210624)
* serviceProvider = Reference(AbteilungChirurgie)



Instance: Encounter-Unit-44371210708
InstanceOf: SwissnosoEncounterUnit
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
* partOf = Reference(Encounter-Hospital-44371210708)
* serviceProvider = Reference(AbteilungMedizin)
* serviceType = $swissnoso-specialization#22 "Allgemeinmedizin (MEDGEN)"