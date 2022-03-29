// Hospital
Instance: Encounter-44371210708
InstanceOf: SwissnosoEncounter
Usage: #example
Title: "Encounter 44371210708"
Description: "Example of a Swissnoso encounter (UC 44371)"
* identifier[VisitNumber].system = "http://fhir.santamaria.ch/fid"
* identifier[VisitNumber].value = "44371210708"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference(GiuliaRossi)
* period.start = "2021-07-08"
* period.end = "2021-07-16"
* serviceProvider = Reference(OspedaleSantaMaria)
* extension[organizationalUnit].extension[unit].valueCoding = $ecdc-ward-specialty#2 "Medicina (MED)"
* extension[organizationalUnit].extension[specialty].valueCoding = $ecdc-patient-consultant-specialty#22 "Medicina interna, medicina generale (MEDGEN)"


Instance: GiuliaRossi
InstanceOf: SwissnosoPatient
Usage: #example
Title: "Giulia Rossi"
Description: "Example of a Swissnoso patient (UC 44371)"
* identifier[LocalPid].system = "http://fhir.santamaria.ch/pid"
* identifier[LocalPid].value = "44371"
* gender = #female
* birthDate = "1943"


// Catheter
Instance: InsertCatheter-20210708-44371210708
InstanceOf: SwissnosoProcedureInsertCatheter
Usage: #example
Title: "Insert Catheter (08.07.2021)"
Description: "Example of a Swissnoso procedure (UC 44371)"
* status = #completed
* subject = Reference(GiuliaRossi)
* performedDateTime = "2021-07-08"
* code = $sct#410024004 "Catheterization of urinary bladder (procedure)"
* location = Reference(DegenzaSantaMaria)
* reasonCode = $swissnoso-indication#1 "Ritenzione urinaria"
* extension[transurethralProcedure].valueBoolean = false
* encounter = Reference(Encounter-44371210708)
* extension[sequenceNumber].valuePositiveInt = 1


Instance: RemoveCatheter-20210709-44371210708
InstanceOf: SwissnosoProcedureRemoveCatheter
Usage: #example
Title: "Remove Catheter (09.07.2021)"
Description: "Example of a Swissnoso procedure (UC 44371)"
* status = #completed
* subject = Reference(GiuliaRossi)
* performedDateTime = "2021-07-09"
* code = $sct#43748006 "Removal of urinary bladder catheter (procedure)"
* encounter = Reference(Encounter-44371210708)
* reasonReference = Reference(InsertCatheter-20210708-44371210708)

// ------------------------------------------------------------------------------------------------ //

// Symptoms 1
Instance: Symptoms1-20210709-44371210708
InstanceOf: SwissnosoObservationSymptoms
Usage: #example
Title: "Symptoms 1 (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $lnc#75325-1 "Symptom"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = true

* hasMember[fever] = Reference(NoFever1-20210709-44371210708)
* hasMember[suprapubicTenderness] = Reference(SuprapubicTenderness1-20210709-44371210708)
* hasMember[anglePainOrTenderness] = Reference(NoAnglePainOrTenderness1-20210709-44371210708)
* hasMember[urinaryUrgency] = Reference(NoUrinaryUrgency1-20210709-44371210708)
* hasMember[urinaryFrequency] = Reference(NoUrinaryFrequency1-20210709-44371210708)
* hasMember[dysuria] = Reference(NoDysuria1-20210709-44371210708)


Instance: NoFever1-20210709-44371210708
InstanceOf: SwissnosoObservationFever
Usage: #example
Title: "No Fever 1 (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#1 "Febbre >38.0 °C (orecchio)"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
//* effectiveDateTime = "2021-07-09"
* valueBoolean = false

Instance: SuprapubicTenderness1-20210709-44371210708
InstanceOf: SwissnosoObservationSuprapubicTenderness
Usage: #example
Title: "Suprapubic Tenderness 1 (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#2 "Sensibilità alla pressione sovrapubica"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = true

Instance: NoAnglePainOrTenderness1-20210709-44371210708
InstanceOf: SwissnosoObservationAnglePainOrTenderness
Usage: #example
Title: "No Angle Pain or Tenderness 1 (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#3 "Dolori o sensibilità alla percussione dei fianchi"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
//* effectiveDateTime = "2021-07-09"
* valueBoolean = false

Instance: NoUrinaryUrgency1-20210709-44371210708
InstanceOf: SwissnosoObservationUrinaryUrgency
Usage: #example
Title: "No Urinary Urgency 1 (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#4 "Urgenza urinaria"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
//* effectiveDateTime = "2021-07-09"
* valueBoolean = false

Instance: NoUrinaryFrequency1-20210709-44371210708
InstanceOf: SwissnosoObservationUrinaryFrequency
Usage: #example
Title: "No Urinary Frequency 1 (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#5 "Pollachiuria"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
//* effectiveDateTime = "2021-07-09"
* valueBoolean = false

Instance: NoDysuria1-20210709-44371210708
InstanceOf: SwissnosoObservationDysuria
Usage: #example
Title: "No Dysuria 1 (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#6 "Disuria"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
//* effectiveDateTime = "2021-07-09"
* valueBoolean = false


// Microbiology 1
Instance: Microbiology1-20210709-44371210708
InstanceOf: SwissnosoProcedureMicrobiology
Usage: #example
Title: "Microbiology 1 (09.07.2021)"
Description: "Example of a Swissnoso procedure (UC 44371)"
* status = #completed
* subject = Reference(GiuliaRossi)
* performedDateTime = "2021-07-09"
* code = $sct#269934003 "Microbiology (procedure)"
* encounter = Reference(Encounter-44371210708)
* reasonReference = Reference(Symptoms1-20210709-44371210708)
* extension[sequenceNumber].valuePositiveInt = 1


Instance: NumberOfDifferentGerms-20210709-44371210708
InstanceOf: SwissnosoObservationNumberOfDifferentGerms
Usage: #example
Title: "Number of Different Germs (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso#number-germs "Number of different germs"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueCodeableConcept = $swissnoso-number-of-different-germs#1 "1"
* partOf = Reference(Microbiology1-20210709-44371210708)
* hasMember = Reference(Germ1-20210709-44371210708)


Instance: Germ1-20210709-44371210708
InstanceOf: SwissnosoObservationGerm
Usage: #example
Title: "Germ 1 (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $lnc#87829-8 "Bacteria [Presence] in Urine"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* partOf = Reference(Microbiology1-20210709-44371210708)
* component[bacteria].code = $lnc#630-4	"Bacteria identified in Urine by Culture"
* component[bacteria].valueCodeableConcept = $sct#112283007 "Escherichia coli (organism)"
* component[bacterialCount].code = $lnc#51480-2 "Bacteria [#/volume] in Urine by Automated count"
* component[bacterialCount].valueCodeableConcept = $swissnoso-bacterial-count-in-urine#1 "<10E5 CFU/ml"

// ------------------------------------------------------------------------------------------------ //

// Symptoms 2
Instance: Symptoms2-20210714-44371210708
InstanceOf: SwissnosoObservationSymptoms
Usage: #example
Title: "Symptoms 2 (14.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $lnc#75325-1 "Symptom"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-14"
* valueBoolean = true

* hasMember[fever] = Reference(NoFever2-20210714-44371210708)
* hasMember[suprapubicTenderness] = Reference(SuprapubicTenderness2-20210714-44371210708)
* hasMember[anglePainOrTenderness] = Reference(NoAnglePainOrTenderness2-20210714-44371210708)
* hasMember[urinaryUrgency] = Reference(UrinaryUrgency2-20210714-44371210708)
* hasMember[urinaryFrequency] = Reference(UrinaryFrequency2-20210714-44371210708)
* hasMember[dysuria] = Reference(Dysuria2-20210714-44371210708)


Instance: NoFever2-20210714-44371210708
InstanceOf: SwissnosoObservationFever
Usage: #example
Title: "No Fever 2 (14.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#1 "Febbre >38.0 °C (orecchio)"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
//* effectiveDateTime = "2021-07-14"
* valueBoolean = false

Instance: SuprapubicTenderness2-20210714-44371210708
InstanceOf: SwissnosoObservationSuprapubicTenderness
Usage: #example
Title: "Suprapubic Tenderness 2 (14.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#2 "Sensibilità alla pressione sovrapubica"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-14"
* valueBoolean = true

Instance: NoAnglePainOrTenderness2-20210714-44371210708
InstanceOf: SwissnosoObservationAnglePainOrTenderness
Usage: #example
Title: "No Angle Pain or Tenderness 2 (14.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#3 "Dolori o sensibilità alla percussione dei fianchi"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
//* effectiveDateTime = "2021-07-14"
* valueBoolean = false

Instance: UrinaryUrgency2-20210714-44371210708
InstanceOf: SwissnosoObservationUrinaryUrgency
Usage: #example
Title: "Urinary Urgency 2 (14.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#4 "Urgenza urinaria"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-14"
* valueBoolean = true

Instance: UrinaryFrequency2-20210714-44371210708
InstanceOf: SwissnosoObservationUrinaryFrequency
Usage: #example
Title: "Urinary Frequency 2 (14.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#5 "Pollachiuria"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-14"
* valueBoolean = true

Instance: Dysuria2-20210714-44371210708
InstanceOf: SwissnosoObservationDysuria
Usage: #example
Title: "Dysuria 2 (14.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#6 "Disuria"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-14"
* valueBoolean = true


// Microbiology 2
Instance: Microbiology2-20210714-44371210708
InstanceOf: SwissnosoProcedureMicrobiology
Usage: #example
Title: "Microbiology 2 (14.07.2021)"
Description: "Example of a Swissnoso procedure (UC 44371)"
* status = #completed
* subject = Reference(GiuliaRossi)
* performedDateTime = "2021-07-14"
* code = $sct#269934003 "Microbiology (procedure)"
* encounter = Reference(Encounter-44371210708)
* reasonReference = Reference(Symptoms2-20210714-44371210708)
* extension[sequenceNumber].valuePositiveInt = 2


Instance: NumberOfDifferentGerms-20210714-44371210708
InstanceOf: SwissnosoObservationNumberOfDifferentGerms
Usage: #example
Title: "Number of Different Germs (14.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso#number-germs "Number of different germs"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-14"
* valueCodeableConcept = $swissnoso-number-of-different-germs#1 "1"
* partOf = Reference(Microbiology2-20210714-44371210708)
* hasMember = Reference(Germ1-20210714-44371210708)


Instance: Germ1-20210714-44371210708
InstanceOf: SwissnosoObservationGerm
Usage: #example
Title: "Germ 1 (14.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $lnc#87829-8 "Bacteria [Presence] in Urine"
* subject = Reference(GiuliaRossi)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-14"
* partOf = Reference(Microbiology2-20210714-44371210708)
* component[bacteria].code = $lnc#630-4	"Bacteria identified in Urine by Culture"
* component[bacteria].valueCodeableConcept = $sct#112283007 "Escherichia coli (organism)"
* component[bacterialCount].code = $lnc#51480-2 "Bacteria [#/volume] in Urine by Automated count"
* component[bacterialCount].valueCodeableConcept = $swissnoso-bacterial-count-in-urine#2 ">=10E5 CFU/ml"