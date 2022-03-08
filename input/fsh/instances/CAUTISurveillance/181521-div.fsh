// Hospital
Instance: Encounter-181521210706
InstanceOf: SwissnosoEncounter
Usage: #example
Title: "Encounter 181521210706"
Description: "Example of a Swissnoso encounter (UC 181521)"
* identifier[VisitNumber].system = "http://fhir.tannenwald.ch/fid"
* identifier[VisitNumber].value = "181521210706"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference(FridolinMueller)
* period.start = "2021-07-06"
* period.end = "2021-07-10"
* serviceProvider = Reference(SpitalTannenwald)
* extension[organizationalUnit].extension[unit].valueCoding = $swissnoso-organizational-unit#2 "Medizin (MED)"



Instance: FridolinMueller
InstanceOf: SwissnosoPatient
Usage: #example
Title: "Fridolin Müller"
Description: "Example of a Swissnoso patient (UC 181521)"
* identifier[LocalPid].system = "http://fhir.tannenwald.ch/pid"
* identifier[LocalPid].value = "181521"
* gender = #male
* birthDate = "1931"


// Catheter 1
Instance: InsertCatheter1-20210706-181521210706
InstanceOf: SwissnosoProcedureInsertCatheter
Usage: #example
Title: "Insert Catheter 1 (06.07.2021)"
Description: "Example of a Swissnoso procedure (UC 181521)"
* status = #completed
* subject = Reference(FridolinMueller)
* performedDateTime = "2021-07-06"
* code = $sct#410024004 "Catheterization of urinary bladder (procedure)"
* location = Reference(Notfallstation)
* reasonCode = $swissnoso-indication#4 "Decubitalulzera plus Inkontinenz"
* extension[transurethralProcedure].valueBoolean = false
* encounter = Reference(Encounter-181521210706)


Instance: RemoveCatheter1-20210709-181521210706
InstanceOf: SwissnosoProcedureRemoveCatheter
Usage: #example
Title: "Remove Catheter 1 (09.07.2021)"
Description: "Example of a Swissnoso procedure (UC 181521)"
* status = #completed
* subject = Reference(FridolinMueller)
* performedDateTime = "2021-07-09"
* code = $sct#43748006 "Removal of urinary bladder catheter (procedure)"
* encounter = Reference(Encounter-181521210706)
* reasonReference = Reference(InsertCatheter1-20210706-181521210706)


// Catheter 2
Instance: InsertCatheter2-20210709-181521210706
InstanceOf: SwissnosoProcedureInsertCatheter
Usage: #example
Title: "Insert Catheter 2 (09.07.2021)"
Description: "Example of a Swissnoso procedure (UC 181521)"
* status = #completed
* subject = Reference(FridolinMueller)
* performedDateTime = "2021-07-09"
* code = $sct#410024004 "Catheterization of urinary bladder (procedure)"
* location = Reference(Bettenstation)
* reasonCode = $swissnoso-indication#1 "Harnverhalt"
* extension[transurethralProcedure].valueBoolean = false
* encounter = Reference(Encounter-181521210706)


Instance: RemoveCatheter2-20210710-181521210706
InstanceOf: SwissnosoProcedureRemoveCatheter
Usage: #example
Title: "Remove Catheter 2 (10.07.2021)"
Description: "Example of a Swissnoso procedure (UC 181521)"
* status = #completed
* subject = Reference(FridolinMueller)
* performedDateTime = "2021-07-10"
* code = $sct#43748006 "Removal of urinary bladder catheter (procedure)"
* encounter = Reference(Encounter-181521210706)
* reasonReference = Reference(InsertCatheter2-20210709-181521210706)


// Symptoms
Instance: Symptoms-20210706-181521210706
InstanceOf: SwissnosoObservationSymptoms
Usage: #example
Title: "Symptoms (06.07.2021)"
Description: "Example of a Swissnoso observation (UC 181521)"
* status = #final
* code = $sct#249274008 "Urinary symptoms (finding)"
* subject = Reference(FridolinMueller)
* encounter = Reference(Encounter-181521210706)
* effectiveDateTime = "2021-07-06"
* valueBoolean = true

* hasMember[fever] = Reference(Fever-20210706-181521210706)
* hasMember[suprapubicTenderness] = Reference(SuprapubicTenderness-20210706-181521210706)
* hasMember[anglePainOrTenderness] = Reference(NoAnglePainOrTenderness-20210706-181521210706)
* hasMember[urinaryUrgency] = Reference(NoUrinaryUrgency-20210706-181521210706)
* hasMember[urinaryFrequency] = Reference(NoUrinaryFrequency-20210706-181521210706)
* hasMember[dysuria] = Reference(NoDysuria-20210706-181521210706)


Instance: Fever-20210706-181521210706
InstanceOf: SwissnosoObservationFever
Usage: #example
Title: "No Fever (06.07.2021)"
Description: "Example of a Swissnoso observation (UC 181521)"
* status = #final
* code = $swissnoso-clinical-symptom#1 "Fieber >38.0°C (Ohr)"
* subject = Reference(FridolinMueller)
* encounter = Reference(Encounter-181521210706)
* effectiveDateTime = "2021-07-06"
* valueBoolean = true

Instance: SuprapubicTenderness-20210706-181521210706
InstanceOf: SwissnosoObservationSuprapubicTenderness
Usage: #example
Title: "No Suprapubic Tenderness (06.07.2021)"
Description: "Example of a Swissnoso observation (UC 181521)"
* status = #final
* code = $swissnoso-clinical-symptom#2 "Suprapubische Druckdolenz"
* subject = Reference(FridolinMueller)
* encounter = Reference(Encounter-181521210706)
* effectiveDateTime = "2021-07-06"
* valueBoolean = true

Instance: NoAnglePainOrTenderness-20210706-181521210706
InstanceOf: SwissnosoObservationAnglePainOrTenderness
Usage: #example
Title: "No Angle Pain or Tenderness (06.07.2021)"
Description: "Example of a Swissnoso observation (UC 181521)"
* status = #final
* code = $swissnoso-clinical-symptom#3 "Flankenschmerzen oder -klopfdolenz"
* subject = Reference(FridolinMueller)
* encounter = Reference(Encounter-181521210706)
//* effectiveDateTime = "2021-07-06"
* valueBoolean = false

Instance: NoUrinaryUrgency-20210706-181521210706
InstanceOf: SwissnosoObservationUrinaryUrgency
Usage: #example
Title: "Urinary Urgency (06.07.2021)"
Description: "Example of a Swissnoso observation (UC 181521)"
* status = #final
* code = $swissnoso-clinical-symptom#4 "Harndrang"
* subject = Reference(FridolinMueller)
* encounter = Reference(Encounter-181521210706)
//* effectiveDateTime = "2021-07-06"
* valueBoolean = false

Instance: NoUrinaryFrequency-20210706-181521210706
InstanceOf: SwissnosoObservationUrinaryFrequency
Usage: #example
Title: "No Urinary Frequency (06.07.2021)"
Description: "Example of a Swissnoso observation (UC 181521)"
* status = #final
* code = $swissnoso-clinical-symptom#5 "Pollakisurie"
* subject = Reference(FridolinMueller)
* encounter = Reference(Encounter-181521210706)
//* effectiveDateTime = "2021-07-06"
* valueBoolean = false

Instance: NoDysuria-20210706-181521210706
InstanceOf: SwissnosoObservationDysuria
Usage: #example
Title: "No Dysuria (06.07.2021)"
Description: "Example of a Swissnoso observation (UC 181521)"
* status = #final
* code = $swissnoso-clinical-symptom#6 "Dysurie"
* subject = Reference(FridolinMueller)
* encounter = Reference(Encounter-181521210706)
//* effectiveDateTime = "2021-07-06"
* valueBoolean = false


// Microbiology
Instance: Microbiology-20210706-181521210706
InstanceOf: SwissnosoProcedureMicrobiology
Usage: #example
Title: "Microbiology (06.07.2021)"
Description: "Example of a Swissnoso procedure (UC 181521)"
* status = #completed
* subject = Reference(FridolinMueller)
* performedDateTime = "2021-07-06"
* code = $sct#269934003 "Microbiology (procedure)"
* encounter = Reference(Encounter-181521210706)
* reasonReference = Reference(Symptoms-20210706-181521210706)


Instance: NumberOfDifferentGerms-20210706-181521210706
InstanceOf: SwissnosoObservationNumberOfDifferentGerms
Usage: #example
Title: "Number of Different Germs (06.07.2021)"
Description: "Example of a Swissnoso observation (UC 181521)"
* status = #final
* code = $sct#number "Number of Different Germs"
* subject = Reference(FridolinMueller)
* encounter = Reference(Encounter-181521210706)
* effectiveDateTime = "2021-07-06"
* valueCodeableConcept = $swissnoso-number-of-different-germs#2 "2"
* partOf = Reference(Microbiology-20210706-181521210706)
* hasMember[+] = Reference(Germ1-20210706-181521210706)
* hasMember[+] = Reference(Germ2-20210706-181521210706)


Instance: Germ1-20210706-181521210706
InstanceOf: SwissnosoObservationGerm
Usage: #example
Title: "Germ 1 (06.07.2021)"
Description: "Example of a Swissnoso observation (UC 181521)"
* status = #final
* code = $lnc#87829-8 "Bacteria [Presence] in Urine"
* extension[germ].valueCoding = $swissnoso-germ#1 "E. coli"
* subject = Reference(FridolinMueller)
* encounter = Reference(Encounter-181521210706)
* effectiveDateTime = "2021-07-06"
* valueCodeableConcept = $swissnoso-bacterial-count-in-urine#2 ">=10E5 CFU/ml"
* partOf = Reference(Microbiology-20210706-181521210706)

Instance: Germ2-20210706-181521210706
InstanceOf: SwissnosoObservationGerm
Usage: #example
Title: "Germ 2 (06.07.2021)"
Description: "Example of a Swissnoso observation (UC 181521)"
* status = #final
* code = $lnc#87829-8 "Bacteria [Presence] in Urine"
* extension[germ].valueCoding = $swissnoso-germ#4 "Enterococcus sp."
* subject = Reference(FridolinMueller)
* encounter = Reference(Encounter-181521210706)
* effectiveDateTime = "2021-07-06"
* valueCodeableConcept = $swissnoso-bacterial-count-in-urine#2 ">=10E5 CFU/ml"
* partOf = Reference(Microbiology-20210706-181521210706)