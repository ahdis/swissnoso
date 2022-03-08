// Hospital
Instance: Encounter-44371210708
InstanceOf: SwissnosoEncounter
Usage: #example
Title: "Encounter 44371210708"
Description: "Example of a Swissnoso encounter (UC 44371)"
* identifier[VisitNumber].system = "http://fhir.tannenwald.ch/fid"
* identifier[VisitNumber].value = "44371210708"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference(LisaGuggisberg)
* period.start = "2021-07-08"
* period.end = "2021-07-14"
* serviceProvider = Reference(SpitalTannenwald)
* extension[organizationalUnit].extension[unit].valueCoding = $swissnoso-organizational-unit#2 "Medizin (MED)"
* extension[organizationalUnit].extension[specialty].valueCoding = $swissnoso-specialty#22 "Allgemeinmedizin (MEDGEN)"


Instance: LisaGuggisberg
InstanceOf: SwissnosoPatient
Usage: #example
Title: "Lisa Guggisberg"
Description: "Example of a Swissnoso patient (UC 44371)"
* identifier[LocalPid].system = "http://fhir.tannenwald.ch/pid"
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
* subject = Reference(LisaGuggisberg)
* performedDateTime = "2021-07-08"
* code = $sct#410024004 "Catheterization of urinary bladder (procedure)"
* location = Reference(Bettenstation)
* reasonCode = $swissnoso-indication#1 "Harnverhalt"
* extension[transurethralProcedure].valueBoolean = false
* encounter = Reference(Encounter-44371210708)


Instance: RemoveCatheter-20210709-44371210708
InstanceOf: SwissnosoProcedureRemoveCatheter
Usage: #example
Title: "Remove Catheter (09.07.2021)"
Description: "Example of a Swissnoso procedure (UC 44371)"
* status = #completed
* subject = Reference(LisaGuggisberg)
* performedDateTime = "2021-07-09"
* code = $sct#43748006 "Removal of urinary bladder catheter (procedure)"
* encounter = Reference(Encounter-44371210708)
* reasonReference = Reference(InsertCatheter-20210708-44371210708)


// Symptoms
Instance: Symptoms-20210709-44371210708
InstanceOf: SwissnosoObservationSymptoms
Usage: #example
Title: "Symptoms (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $sct#249274008 "Urinary symptoms (finding)"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = true

* hasMember[fever] = Reference(NoFever-20210709-44371210708)
* hasMember[suprapubicTenderness] = Reference(NoSuprapubicTenderness-20210709-44371210708)
* hasMember[anglePainOrTenderness] = Reference(NoAnglePainOrTenderness-20210709-44371210708)
* hasMember[urinaryUrgency] = Reference(UrinaryUrgency-20210709-44371210708)
* hasMember[urinaryFrequency] = Reference(NoUrinaryFrequency-20210709-44371210708)
* hasMember[dysuria] = Reference(NoDysuria-20210709-44371210708)


Instance: NoFever-20210709-44371210708
InstanceOf: SwissnosoObservationFever
Usage: #example
Title: "No Fever (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#1 "Fieber >38.0°C (Ohr)"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
//* effectiveDateTime = "2021-07-09"
* valueBoolean = false

Instance: NoSuprapubicTenderness-20210709-44371210708
InstanceOf: SwissnosoObservationSuprapubicTenderness
Usage: #example
Title: "No Suprapubic Tenderness (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#2 "Suprapubische Druckdolenz"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
//* effectiveDateTime = "2021-07-09"
* valueBoolean = false

Instance: NoAnglePainOrTenderness-20210709-44371210708
InstanceOf: SwissnosoObservationAnglePainOrTenderness
Usage: #example
Title: "No Angle Pain or Tenderness (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#3 "Flankenschmerzen oder -klopfdolenz"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
//* effectiveDateTime = "2021-07-09"
* valueBoolean = false

Instance: UrinaryUrgency-20210709-44371210708
InstanceOf: SwissnosoObservationUrinaryUrgency
Usage: #example
Title: "Urinary Urgency (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#4 "Harndrang"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = true

Instance: NoUrinaryFrequency-20210709-44371210708
InstanceOf: SwissnosoObservationUrinaryFrequency
Usage: #example
Title: "No Urinary Frequency (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#5 "Pollakisurie"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
//* effectiveDateTime = "2021-07-09"
* valueBoolean = false

Instance: NoDysuria-20210709-44371210708
InstanceOf: SwissnosoObservationDysuria
Usage: #example
Title: "No Dysuria (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $swissnoso-clinical-symptom#6 "Dysurie"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
//* effectiveDateTime = "2021-07-09"
* valueBoolean = false


// Microbiology
Instance: Microbiology-20210709-44371210708
InstanceOf: SwissnosoProcedureMicrobiology
Usage: #example
Title: "Microbiology (09.07.2021)"
Description: "Example of a Swissnoso procedure (UC 44371)"
* status = #completed
* subject = Reference(LisaGuggisberg)
* performedDateTime = "2021-07-09"
* code = $sct#269934003 "Microbiology (procedure)"
* encounter = Reference(Encounter-44371210708)
* reasonReference = Reference(Symptoms-20210709-44371210708)


Instance: NumberOfDifferentGerms-20210709-44371210708
InstanceOf: SwissnosoObservationNumberOfDifferentGerms
Usage: #example
Title: "Number of Different Germs (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $sct#number "Number of Different Germs"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueCodeableConcept = $swissnoso-number-of-different-germs#1 "1"
* partOf = Reference(Microbiology-20210709-44371210708)
* hasMember = Reference(Germ1-20210709-44371210708)


Instance: Germ1-20210709-44371210708
InstanceOf: SwissnosoObservationGerm
Usage: #example
Title: "Germ 1 (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $lnc#87829-8 "Bacteria [Presence] in Urine"
* extension[germ].valueCoding = $swissnoso-germ#1 "E. coli"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueCodeableConcept = $swissnoso-bacterial-count-in-urine#1 "<10E5 CFU/ml"
* partOf = Reference(Microbiology-20210709-44371210708)