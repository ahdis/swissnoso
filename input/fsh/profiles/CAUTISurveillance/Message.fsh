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

