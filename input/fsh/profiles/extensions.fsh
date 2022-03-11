Extension: SwissnosoTransurethralProcedure
Id: swissnoso-transurethral-procedure
Title: "Swissnoso Transurethral Procedure"
Description: "Extension defined by Swissnoso to describe whether the procedure was performed as part of a transurethral procedure."
* value[x] only boolean
* value[x] 1..



Extension: SwissnosoOrganizationalUnit
Id: swissnoso-organizational-unit
Title: "Swissnoso Organizational Unit"
Description: "Extension defined by Swissnoso to describe the organizational unit with its specialty."
* extension contains
    unit 1..1 and
    specialty 0..1

* extension[unit] ^short = "Organizational unit"
* extension[unit].value[x] only Coding
* extension[unit].valueCoding 1..
* extension[unit].valueCoding from SwissnosoOrganizationalUnit (required)

* extension[specialty] ^short = "Specialty"
* extension[specialty].value[x] only Coding
* extension[specialty].valueCoding 1..
* extension[specialty].valueCoding from SwissnosoSpecialty (required)

// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoOrganizationalUnit
Source: SwissnosoOrganizationalUnit
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* extension[unit]       -> "1.1 a) 5. Organizational Unit"
* extension[specialty]  -> "1.1 a) 6. Specialty"



Extension: SwissnosoAdmissionDateMonitoredUnit
Id: swissnoso-admission-date-monitored-unit
Title: "Swissnoso Admission Date Monitored Unit"
Description: "Extension defined by Swissnoso to describe the date of admission to the monitored organizational unit."
* value[x] only dateTime
* value[x] 1..

Extension: SwissnosoDischargeDateMonitoredUnit
Id: swissnoso-discharge-date-monitored-unit
Title: "Swissnoso Discharge Date Monitored Unit"
Description: "Extension defined by Swissnoso to describe the date of discharge from the monitored organizational unit."
* value[x] only dateTime
* value[x] 1..