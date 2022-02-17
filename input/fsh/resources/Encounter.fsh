// --------------- Structure Definition --------------- //
Profile: SwissnosoEncounter
Parent: $ChCoreEncounter
Id: swissnoso-encounter
Title: "Swissnoso Encounter"
Description: "This profile constrains the Encounter resource to represent the characteristics of an encounter in the context of a report to Swissnoso."
* . ^short = "Swissnoso Encounter"

* identifier[VisitNumber]. ^short = "Case number"

* class = $v3-ActCode#IMP

* subject 1..
* subject only Reference(SwissnosoPatient)

* serviceProvider 1..
* serviceProvider only Reference(SwissnosoOrganization)

* period 1..
* period.start 1..
* period.start. ^short = "Date of admission to hospital"
* period.end 1..
* period.end. ^short = "Date of discharge from hospital"

* extension contains SwissnosoOrganizationalUnit named organizationalUnit 1..1
* extension[organizationalUnit]. ^short = "Organizational unit with its specialty"

* extension contains SwissnosoAdmissionDateToMonitoredOrganizationalUnits named admissionDateOrganizationalUnits 0..1
* extension[admissionDateOrganizationalUnits]. ^short = "Date of admission to the monitored organizational units"

* extension contains SwissnosoDischargeDateFromMonitoredOrganizationalUnits named dischargeDateOrganizationalUnits 0..1
* extension[dischargeDateOrganizationalUnits]. ^short = "Date of discharge from the monitored organizational units"


// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoEncounter
Source: SwissnosoEncounter
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* identifier[VisitNumber]                       -> "1.1 a) 2. Case number"
* period.start                                  -> "1.1 a) 7. Date of admission to hospital"
* period.end                                    -> "1.1 a) 9. Date of discharge from hospital"
* extension[admissionDateOrganizationalUnits]   -> "1.1 a) 8. Date of admission to the monitored organizational units"
* extension[dischargeDateOrganizationalUnits]   -> "1.1 a) 10. Date of discharge from the monitored organizational units"



// --------------- Instances --------------- //
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


Instance: Encounter-44371210708
InstanceOf: SwissnosoEncounter
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
* extension[organizationalUnit].extension[unit].valueCoding = $swissnoso-organizational-unit#2 "Medizin (MED)"
* extension[organizationalUnit].extension[specialty].valueCoding = $swissnoso-specialty#22 "Allgemeinmedizin (MEDGEN)"
