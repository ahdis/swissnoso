// --------------- Structure Definition --------------- //
Profile: SwissnosoPatient
Parent: $ChCorePatient
Id: swissnoso-patient
Title: "Swissnoso Patient"
Description: "This profile constrains the Patient resource to represent the characteristics of a patient in the context of a report to Swissnoso."
* . ^short = "Swissnoso Patient"

* identifier[LocalPid]. ^short = "Patient number (PID)"
* identifier[LocalPid] 1..1

* gender. ^short = "Gender (male, female)"
* gender 1..
* gender obeys swissnoso-pat-1

* birthDate. ^short = "Year of birth (format: YYYY)"
* birthDate 1..
* birthDate obeys swissnoso-pat-2


// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoPatient
Source: SwissnosoPatient
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* identifier[LocalPid]  -> "1.1 a) 1. Patient number (PID)"
* gender                -> "1.1 a) 4. Gender (1. male, 2. female)"
* birthDate             -> "1.1 a) 3. Year of birth"
