// --------------- Structure Definition --------------- //
Profile: SwissnosoMessageCAUTISurveillance
Parent: Bundle
Id: swissnoso-message-cauti-surveillance
Title: "Swissnoso Message CAUTI Surveillance"
Description: "This profile constrains the Bundle resource to represent the message in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Message CAUTI Surveillance"

* type = #message (exactly)

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains messageHeader 1..1
* entry[messageHeader] ^short = "MessageHeader"
* entry[messageHeader].resource 1..
* entry[messageHeader].resource only SwissnosoMessageHeaderCAUTISurveillance




// --------------- Instances --------------- //
Instance: MessageUC14200
InstanceOf: SwissnosoMessageCAUTISurveillance
Usage: #example
Title: "Message UC 14200"
Description: "Example of a Swissnoso message (UC 14200)"
* type = #message
* entry[+].fullUrl = "http://example.ch/fhir/MessageHeader/MessageHeaderUC14200"
* entry[=].resource = MessageHeaderUC14200
// focus entries
* entry[+].fullUrl = "http://example.ch/fhir/Procedure/InsertCatheter-20210701-14200210624"
* entry[=].resource = InsertCatheter-20210701-14200210624
* entry[+].fullUrl = "http://example.ch/fhir/Procedure/RemoveCatheter-20210704-14200210624"
* entry[=].resource = RemoveCatheter-20210704-14200210624
// all other entries
* entry[+].fullUrl = "http://example.ch/fhir/Patient/AnnaMeier"
* entry[=].resource = AnnaMeier
* entry[+].fullUrl = "http://example.ch/fhir/Encounter/Encounter-14200210624"
* entry[=].resource = Encounter-14200210624
* entry[+].fullUrl = "http://example.ch/fhir/Organization/SpitalTannenwald"
* entry[=].resource = SpitalTannenwald
* entry[+].fullUrl = "http://example.ch/fhir/Location/Bettenstation"
* entry[=].resource = Bettenstation
