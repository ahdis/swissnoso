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
* entry[+].fullUrl = "http://example.ch/fhir/Location/BettenstationTannenwald"
* entry[=].resource = BettenstationTannenwald



Instance: MessageHeaderUC14200
InstanceOf: SwissnosoMessageHeaderCAUTISurveillance
Usage: #example
Title: "MessageHeader UC 14200"
Description: "Example of a Swissnoso message header (UC 14200)"
* eventUri = "http://fhir.ch/ig/swissnoso/cauti-surveillance"
* source.endpoint = "http://example.ch/fhir"
* focus[insertCatheter] = Reference(InsertCatheter-20210701-14200210624)
* focus[removeCatheter] = Reference(RemoveCatheter-20210704-14200210624)