// --------------- Structure Definition --------------- //
Profile: SwissnosoPatient
Parent: $ChCorePatient
Id: swissnoso-patient
Title: "Swissnoso Patient"
Description: "This profile constrains the Patient resource to represent the characteristics of a patient in the context of a report to Swissnoso."
* . ^short = "Swissnoso Patient"

// Patienten-Nummer (PID) / PatientenNummer_4
* identifier[LocalPid]. ^short = "Patient number (PID)"
* identifier[LocalPid] 1..1

// 4.Geschlecht (1. männlich, 2. weiblich)
* gender. ^short = "Gender (male, female)"
* gender 1..
// TBD: * gender obeys swissnoso-pat-

// Geburtsjahr / Geburtsjahr_370
* birthDate. ^short = "Birth year (format: YYYY)"
* birthDate 1..
// TBD: * birthDate obeys swissnoso-pat-


// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoPatient
Source: SwissnosoPatient
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* identifier[LocalPid] -> "1.1 a) 1. Patienten-Nummer (PID)"
* gender -> "1.1 a) 4. Geschlecht (1. männlich, 2. weiblich)"
* birthDate -> "1.1 a) 3. Geburtsjahr"


// --------------- Instances --------------- //
Instance: AnnaMeier
InstanceOf: SwissnosoPatient
Usage: #example
Title: "Anna Meier"
Description: "Example of a Swissnoso patient (integrated in use case 14200)"
* identifier[LocalPid].system = "http://fhir.tannenwald.ch/pid"
* identifier[LocalPid].value = "14200"
* gender = #female
* birthDate = "1933"
