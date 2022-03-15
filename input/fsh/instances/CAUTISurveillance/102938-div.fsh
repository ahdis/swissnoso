// Hospital
Instance: Encounter-102938210710
InstanceOf: SwissnosoEncounter
Usage: #example
Title: "Encounter 102938210710"
Description: "Example of a Swissnoso encounter (UC 102938)"
* identifier[VisitNumber].system = "http://fhir.bellevue.ch/fid"
* identifier[VisitNumber].value = "102938210710"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference(JeanLucRichard)
* period.start = "2021-07-10"
* period.end = "2021-07-21"
* serviceProvider = Reference(SpitalBellevue)
* extension[organizationalUnit].extension[unit].valueCoding = $ecdc-ward-specialty#1 "Chirurgie (SUR)"
* extension[organizationalUnit].extension[specialty].valueCoding = $ecdc-patient-consultant-specialty#2 "Abdominalchirurgie (SURDIG)"
* extension[admissionDateMonitoredUnit].valueDateTime = "2021-07-12"
* extension[dischargeDateMonitoredUnit].valueDateTime = "2021-07-21"


Instance: JeanLucRichard
InstanceOf: SwissnosoPatient
Usage: #example
Title: "Jean-Luc Richard"
Description: "Example of a Swissnoso patient (UC 102938)"
* identifier[LocalPid].system = "http://fhir.bellevue.ch/pid"
* identifier[LocalPid].value = "102938"
* gender = #male
* birthDate = "1945"


// Catheter
Instance: InsertCatheter-20210712-102938210710
InstanceOf: SwissnosoProcedureInsertCatheter
Usage: #example
Title: "Insert Catheter (12.07.2021)"
Description: "Example of a Swissnoso procedure (UC 102938)"
* status = #completed
* subject = Reference(JeanLucRichard)
* performedDateTime = "2021-07-12"
* code = $sct#410024004 "Catheterization of urinary bladder (procedure)"
* location = Reference(BettenstationBellevue)
* reasonCode = $swissnoso-indication#1 "Harnverhalt"
* extension[transurethralProcedure].valueBoolean = false
* encounter = Reference(Encounter-102938210710)
* extension[sequenceNumber].valuePositiveInt = 1


Instance: RemoveCatheter-20210716-102938210710
InstanceOf: SwissnosoProcedureRemoveCatheter
Usage: #example
Title: "Remove Catheter (16.07.2021)"
Description: "Example of a Swissnoso procedure (UC 102938)"
* status = #completed
* subject = Reference(JeanLucRichard)
* performedDateTime = "2021-07-16"
* code = $sct#43748006 "Removal of urinary bladder catheter (procedure)"
* encounter = Reference(Encounter-102938210710)
* reasonReference = Reference(InsertCatheter-20210712-102938210710)


// Symptoms

// Microbiology
