Invariant: swissnoso-pat-1
Description: "Gender must be 'male' or 'female'"
Expression: "value = 'male' or value = 'female'"
Severity: #error

// https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/invariant.20fhirPath.20example
Invariant: swissnoso-pat-2
Description: "The format 'YYYY' must be used"
Expression: "value.length() = 4"
Severity: #error

Invariant: swissnoso-obs-1
Description: "If symptoms are present, then 6 'hasMember' entries are required, in case of an absence no entries are required"
Expression: "(valueBoolean = true and hasMember.count() = 6) or (valueBoolean = false and hasMember.count() =0 )"
Severity: #error

Invariant: swissnoso-obs-2
Description: "If this symptom exists (valueBoolean = true), then a date must be specified"
Expression: "(valueBoolean = true and effectiveDateTime.exists()) or (valueBoolean = false)"
Severity: #error