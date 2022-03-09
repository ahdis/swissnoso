Instance: MessageUC44371
InstanceOf: SwissnosoMessageCAUTISurveillance
Usage: #example
Title: "Message UC 44371"
Description: "Example of a Swissnoso message (UC 44371)"
* type = #message
* entry[+].fullUrl = "http://example.ch/fhir/MessageHeader/MessageHeaderUC181521"
* entry[=].resource = MessageHeaderUC44371
// focus entries
* entry[+].fullUrl = "http://example.ch/fhir/Procedure/InsertCatheter-20210708-44371210708"
* entry[=].resource = InsertCatheter-20210708-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Procedure/RemoveCatheter-20210709-44371210708"
* entry[=].resource = RemoveCatheter-20210709-44371210708
// all other entries
* entry[+].fullUrl = "http://example.ch/fhir/Patient/LisaGuggisberg"
* entry[=].resource = LisaGuggisberg
* entry[+].fullUrl = "http://example.ch/fhir/Encounter/Encounter-44371210708"
* entry[=].resource = Encounter-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Organization/SpitalTannenwald"
* entry[=].resource = SpitalTannenwald
* entry[+].fullUrl = "http://example.ch/fhir/Location/BettenstationTannenwald"
* entry[=].resource = BettenstationTannenwald

* entry[+].fullUrl = "http://example.ch/fhir/Observation/Symptoms1-20210709-44371210708"
* entry[=].resource = Symptoms1-20210709-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NoFever1-20210709-44371210708"
* entry[=].resource = NoFever1-20210709-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/SuprapubicTenderness1-20210709-44371210708"
* entry[=].resource = SuprapubicTenderness1-20210709-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NoAnglePainOrTenderness1-20210709-44371210708"
* entry[=].resource = NoAnglePainOrTenderness1-20210709-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NoUrinaryUrgency1-20210709-44371210708"
* entry[=].resource = NoUrinaryUrgency1-20210709-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NoUrinaryFrequency1-20210709-44371210708"
* entry[=].resource = NoUrinaryFrequency1-20210709-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NoDysuria1-20210709-44371210708"
* entry[=].resource = NoDysuria1-20210709-44371210708

* entry[+].fullUrl = "http://example.ch/fhir/Procedure/Microbiology1-20210709-44371210708"
* entry[=].resource = Microbiology1-20210709-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NumberOfDifferentGerms-20210709-44371210708"
* entry[=].resource = NumberOfDifferentGerms-20210709-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/Germ1-20210709-44371210708"
* entry[=].resource = Germ1-20210709-44371210708


* entry[+].fullUrl = "http://example.ch/fhir/Observation/Symptoms2-20210714-44371210708"
* entry[=].resource = Symptoms2-20210714-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NoFever2-20210714-44371210708"
* entry[=].resource = NoFever2-20210714-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/SuprapubicTenderness2-20210714-44371210708"
* entry[=].resource = SuprapubicTenderness2-20210714-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NoAnglePainOrTenderness2-20210714-44371210708"
* entry[=].resource = NoAnglePainOrTenderness2-20210714-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/UrinaryUrgency2-20210714-44371210708"
* entry[=].resource = UrinaryUrgency2-20210714-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/UrinaryFrequency2-20210714-44371210708"
* entry[=].resource = UrinaryFrequency2-20210714-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/Dysuria2-20210714-44371210708"
* entry[=].resource = Dysuria2-20210714-44371210708

* entry[+].fullUrl = "http://example.ch/fhir/Procedure/Microbiology2-20210714-44371210708"
* entry[=].resource = Microbiology2-20210714-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/NumberOfDifferentGerms-20210714-44371210708"
* entry[=].resource = NumberOfDifferentGerms-20210714-44371210708
* entry[+].fullUrl = "http://example.ch/fhir/Observation/Germ1-20210714-44371210708"
* entry[=].resource = Germ1-20210714-44371210708


Instance: MessageHeaderUC44371
InstanceOf: SwissnosoMessageHeaderCAUTISurveillance
Usage: #example
Title: "MessageHeader UC 44371"
Description: "Example of a Swissnoso message header (UC 44371)"
* eventUri = "http://fhir.ch/ig/swissnoso/cauti-surveillance"
* source.endpoint = "http://example.ch/fhir"
* focus[insertCatheter][+] = Reference(InsertCatheter-20210708-44371210708)
* focus[removeCatheter][+] = Reference(RemoveCatheter-20210709-44371210708)
* focus[microbiology][+] = Reference(Microbiology1-20210709-44371210708)
* focus[microbiology][+] = Reference(Microbiology2-20210714-44371210708)
* focus[numberOfDifferentGerms][+] = Reference(NumberOfDifferentGerms-20210709-44371210708)
* focus[numberOfDifferentGerms][+] = Reference(NumberOfDifferentGerms-20210714-44371210708)