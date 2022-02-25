// --------------- Structure Definition --------------- //
Profile: SwissnosoMessageHeaderCAUTISurveillance
Parent: MessageHeader
Id: swissnoso-messageheader-cauti-surveillance
Title: "Swissnoso MessageHeader CAUTI Surveillance"
Description: "This profile constrains the MessageHeader resource to represent the first entry in the message in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso MessageHeader CAUTI Surveillance"

* eventUri ^short = "Event this message represents"
* eventUri 1..

* source.endpoint ^short = "Address or id of actual message source application"

* focus 2..
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "resolve()"
* focus ^slicing.ordered = false
* focus ^slicing.rules = #open
* focus contains
    insertCatheter 1..* and
    removeCatheter 1..* and
    microbiology 0..* and
    numberOfDifferentGerms 0..*
* focus[insertCatheter] only Reference(SwissnosoProcedureInsertCatheter)
* focus[removeCatheter] only Reference(SwissnosoProcedureRemoveCatheter)
* focus[microbiology] only Reference(SwissnosoProcedureMicrobiology)
* focus[numberOfDifferentGerms] only Reference(SwissnosoObservationNumberOfDifferentGerms)




// --------------- Instances --------------- //
Instance: MessageHeaderUC14200
InstanceOf: SwissnosoMessageHeaderCAUTISurveillance
Usage: #example
Title: "MessageHeader UC 14200"
Description: "Example of a Swissnoso message header (UC 14200)"
* eventUri = "http://fhir.ch/ig/swissnoso/cauti-surveillance"
* source.endpoint = "http://example.ch/fhir"
* focus[insertCatheter] = Reference(InsertCatheter-20210701-14200210624)
* focus[removeCatheter] = Reference(RemoveCatheter-20210704-14200210624)