Instance: MessageUC181521
InstanceOf: SwissnosoMessageCAUTISurveillance
Usage: #example
Title: "Message UC 181521"
Description: "Example of a Swissnoso message (UC 181521)"
* type = #message
* entry[+].fullUrl = "http://example.ch/fhir/MessageHeader/MessageHeaderUC181521"
* entry[=].resource = MessageHeaderUC181521
// focus entries
* entry[+].fullUrl = "http://example.ch/fhir/Procedure/InsertCatheter1-20210706-181521210706"
* entry[=].resource = InsertCatheter1-20210706-181521210706
* entry[+].fullUrl = "http://example.ch/fhir/Procedure/RemoveCatheter1-20210709-181521210706"
* entry[=].resource = RemoveCatheter1-20210709-181521210706
* entry[+].fullUrl = "http://example.ch/fhir/Procedure/InsertCatheter2-20210709-181521210706"
* entry[=].resource = InsertCatheter2-20210709-181521210706
* entry[+].fullUrl = "http://example.ch/fhir/Procedure/RemoveCatheter2-20210710-181521210706"
* entry[=].resource = RemoveCatheter2-20210710-181521210706
// all other entries
* entry[+].fullUrl = "http://example.ch/fhir/Patient/FridolinMueller"
* entry[=].resource = FridolinMueller
* entry[+].fullUrl = "http://example.ch/fhir/Encounter/Encounter-181521210706"
* entry[=].resource = Encounter-181521210706
* entry[+].fullUrl = "http://example.ch/fhir/Organization/SpitalTannenwald"
* entry[=].resource = SpitalTannenwald
* entry[+].fullUrl = "http://example.ch/fhir/Location/NotfallstationTannenwald"
* entry[=].resource = NotfallstationTannenwald
* entry[+].fullUrl = "http://example.ch/fhir/Location/BettenstationTannenwald"
* entry[=].resource = BettenstationTannenwald

* entry[+].fullUrl = "http://example.ch/fhir/Observation/Symptoms-20210706-181521210706"
* entry[=].resource = Symptoms-20210706-181521210706
* entry[+].fullUrl = "http://example.ch/fhir/Observation/Fever-20210706-181521210706"
* entry[=].resource = Fever-20210706-181521210706
* entry[+].fullUrl = "http://example.ch/fhir/Observation/SuprapubicTenderness-20210706-181521210706"
* entry[=].resource = SuprapubicTenderness-20210706-181521210706
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NoAnglePainOrTenderness-20210706-181521210706"
* entry[=].resource = NoAnglePainOrTenderness-20210706-181521210706
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NoUrinaryUrgency-20210706-181521210706"
* entry[=].resource = NoUrinaryUrgency-20210706-181521210706
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NoUrinaryFrequency-20210706-181521210706"
* entry[=].resource = NoUrinaryFrequency-20210706-181521210706
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NoDysuria-20210706-181521210706"
* entry[=].resource = NoDysuria-20210706-181521210706

* entry[+].fullUrl = "http://example.ch/fhir/Procedure/Microbiology-20210706-181521210706"
* entry[=].resource = Microbiology-20210706-181521210706
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NumberOfDifferentGerms-20210706-181521210706"
* entry[=].resource = NumberOfDifferentGerms-20210706-181521210706
* entry[+].fullUrl = "http://example.ch/fhir/Observation/Germ1-20210706-181521210706"
* entry[=].resource = Germ1-20210706-181521210706
* entry[+].fullUrl = "http://example.ch/fhir/Observation/Germ2-20210706-181521210706"
* entry[=].resource = Germ2-20210706-181521210706



Instance: MessageHeaderUC181521
InstanceOf: SwissnosoMessageHeaderCAUTISurveillance
Usage: #example
Title: "MessageHeader UC 181521"
Description: "Example of a Swissnoso message header (UC 181521)"
* eventUri = "http://fhir.ch/ig/swissnoso/cauti-surveillance"
* source.endpoint = "http://example.ch/fhir"
* focus[insertCatheter][+] = Reference(InsertCatheter1-20210706-181521210706)
* focus[insertCatheter][+] = Reference(InsertCatheter2-20210709-181521210706)
* focus[removeCatheter][+] = Reference(RemoveCatheter1-20210709-181521210706)
* focus[removeCatheter][+] = Reference(RemoveCatheter2-20210710-181521210706)
* focus[microbiology][+] = Reference(Microbiology-20210706-181521210706)
* focus[numberOfDifferentGerms][+] = Reference(NumberOfDifferentGerms-20210706-181521210706)