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
