// Hospital
Instance: Encounter-14200210624
InstanceOf: SwissnosoEncounter
Usage: #example
Title: "Encounter 14200210624"
Description: "Example of a Swissnoso encounter (UC 14200)"
* identifier[VisitNumber].system = "http://fhir.tannenwald.ch/fid"
* identifier[VisitNumber].value = "14200210624"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference(AnnaMeier)
* period.start = "2021-06-24"
* period.end = "2021-07-08"
* serviceProvider = Reference(SpitalTannenwald)
* extension[organizationalUnit].extension[unit].valueCoding = $ecdc-ward-specialty#1 "Chirurgie (SUR)"


Instance: AnnaMeier
InstanceOf: SwissnosoPatient
Usage: #example
Title: "Anna Meier"
Description: "Example of a Swissnoso patient (UC 14200)"
* identifier[LocalPid].system = "http://fhir.tannenwald.ch/pid"
* identifier[LocalPid].value = "14200"
* gender = #female
* birthDate = "1933"


// Catheter
Instance: InsertCatheter-20210701-14200210624
InstanceOf: SwissnosoProcedureInsertCatheter
Usage: #example
Title: "Insert Catheter (01.07.2021)"
Description: "Example of a Swissnoso procedure (UC 14200)"
* status = #completed
* subject = Reference(AnnaMeier)
* performedDateTime = "2021-07-01"
* code = $sct#410024004 "Catheterization of urinary bladder (procedure)"
* location = Reference(BettenstationTannenwald)
* reasonCode = $swissnoso-indication#3 "Operation"
* extension[transurethralProcedure].valueBoolean = false
* encounter = Reference(Encounter-14200210624)
* extension[sequenceNumber].valuePositiveInt = 1


Instance: RemoveCatheter-20210704-14200210624
InstanceOf: SwissnosoProcedureRemoveCatheter
Usage: #example
Title: "Remove Catheter (04.07.2021)"
Description: "Example of a Swissnoso procedure (UC 14200)"
* status = #completed
* subject = Reference(AnnaMeier)
* performedDateTime = "2021-07-04"
* code = $sct#43748006 "Removal of urinary bladder catheter (procedure)"
* encounter = Reference(Encounter-14200210624)
* reasonReference = Reference(InsertCatheter-20210701-14200210624)



// Symptoms

// Microbiology
