// --------------- Structure Definition --------------- //
Profile: SwissnosoPatient
Parent: $ChCorePatient
Id: swissnoso-patient
Title: "Swissnoso Patient"
Description: "This profile constrains the Patient resource to represent the characteristics of a patient in the context of a report to Swissnoso."
* . ^short = "Swissnoso Patient"

* identifier[LocalPid]. ^short = "Patient number (PID)"
* identifier[LocalPid] 1..1

* gender. ^short = "Gender (male | female)"
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


// --------------- Instances --------------- //
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

Instance: FridolinMueller
InstanceOf: SwissnosoPatient
Usage: #example
Title: "Fridolin Müller"
Description: "Example of a Swissnoso patient (UC 181521)"
* identifier[LocalPid].system = "http://fhir.tannenwald.ch/pid"
* identifier[LocalPid].value = "181521"
* gender = #male
* birthDate = "1931"

Instance: LisaGuggisberg
InstanceOf: SwissnosoPatient
Usage: #example
Title: "Lisa Guggisberg"
Description: "Example of a Swissnoso patient (UC 44371)"
* identifier[LocalPid].system = "http://fhir.tannenwald.ch/pid"
* identifier[LocalPid].value = "44371"
* gender = #female
* birthDate = "1943"