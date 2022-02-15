Invariant: swissnoso-pat-1
Description: "Gender must be 'male' or 'female'"
Expression: "value='male' or value='female'"
Severity: #error

// https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/invariant.20fhirPath.20example
Invariant: swissnoso-pat-2
Description: "The format YYYY must be used"
Expression: "value.length()=4"
Severity: #error
