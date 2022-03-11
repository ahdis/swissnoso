// --------------- Structure Definition --------------- //
Profile: SwissnosoObservationGerm
Parent: SwissnosoObservation
Id: swissnoso-observation-germ
Title: "Swissnoso Observation Germ"
Description: "This profile constrains the Observation resource to represent the germ in the context of the CAUTI Surveillance module."
* . ^short = "Swissnoso Observation Germ"

* code = $lnc#87829-8	
* code. ^short = "Bacteria [Presence] in Urine"

* effectiveDateTime 1..

* value[x] 0..0

* partOf only Reference(SwissnosoProcedureMicrobiology)
* partOf 1..1

* component 2..2
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    bacteria 1..1 and
    bacterialCount 1..1

* component[bacteria].code = $lnc#630-4	
* component[bacteria].code. ^short = "Bacteria identified in Urine by Culture"
* component[bacteria].valueCodeableConcept from SwissnosoGerm (required)
* component[bacteria].valueCodeableConcept. ^short = "Germ"
* component[bacteria].valueCodeableConcept 1..

* component[bacterialCount].code = $lnc#51480-2	
* component[bacterialCount].code. ^short = "Bacteria [#/volume] in Urine by Automated count"
* component[bacterialCount].valueCodeableConcept from SwissnosoBacterialCountInUrine (required)
* component[bacterialCount].valueCodeableConcept. ^short = "Bacterial count in urine (<10E5 CFU/ml, >=10E5 CFU/ml)"
* component[bacterialCount].valueCodeableConcept 1..



// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoObservationGerm
Source: SwissnosoObservationGerm
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* component[bacteria].valueCodeableConcept        -> "1.1 c) 1.2.2/1.2.4 Germ (E. coli, Proteus sp., Klebsiella sp., Enterococcus sp., P. aeruginosa, another germ)"
* component[bacterialCount].valueCodeableConcept  -> "1.1 c) 1.2.3/1.2.5 Bacterial count in urine (<10E5 CFU/ml, >=10E5 CFU/ml)"

