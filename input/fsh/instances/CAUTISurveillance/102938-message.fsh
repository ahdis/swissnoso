Instance: MessageUC102938
InstanceOf: SwissnosoMessageCAUTISurveillance
Usage: #example
Title: "Message UC 102938"
Description: "Example of a Swissnoso message (UC 102938)"
* type = #message
* entry[+].fullUrl = "http://example.ch/fhir/MessageHeader/MessageHeaderUC102938"
* entry[=].resource = MessageHeaderUC102938
// focus entries
* entry[+].fullUrl = "http://example.ch/fhir/Procedure/InsertCatheter-20210712-102938210710"
* entry[=].resource = InsertCatheter-20210712-102938210710
* entry[+].fullUrl = "http://example.ch/fhir/Procedure/RemoveCatheter-20210716-102938210710"
* entry[=].resource = RemoveCatheter-20210716-102938210710
// all other entries
* entry[+].fullUrl = "http://example.ch/fhir/Patient/JeanLucRichard"
* entry[=].resource = JeanLucRichard
* entry[+].fullUrl = "http://example.ch/fhir/Encounter/Encounter-102938210710"
* entry[=].resource = Encounter-102938210710
* entry[+].fullUrl = "http://example.ch/fhir/Organization/SpitalBellevue"
* entry[=].resource = SpitalBellevue
* entry[+].fullUrl = "http://example.ch/fhir/Location/BettenstationBellevue"
* entry[=].resource = BettenstationBellevue





Instance: MessageHeaderUC102938
InstanceOf: SwissnosoMessageHeaderCAUTISurveillance
Usage: #example
Title: "MessageHeader UC 102938"
Description: "Example of a Swissnoso message header (UC 102938)"
* eventUri = "http://fhir.ch/ig/swissnoso/cauti-surveillance"
* source.endpoint = "http://example.ch/fhir"
* focus[insertCatheter][+] = Reference(InsertCatheter-20210712-102938210710)
* focus[removeCatheter][+] = Reference(RemoveCatheter-20210716-102938210710)
