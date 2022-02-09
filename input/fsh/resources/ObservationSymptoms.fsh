// --------------- Instances --------------- //
Instance: Symptoms44371210708
InstanceOf: Observation
Usage: #example
Title: "Symptoms (44371210708)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $sct#tbd "Symptome"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = true

* hasMember[+] = Reference(NoFever144371210708)
* hasMember[+] = Reference(NoPressureDolence144371210708)
* hasMember[+] = Reference(NoFlankPain144371210708)
* hasMember[+] = Reference(UrinaryUrgency144371210708)
* hasMember[+] = Reference(NoPollakiuria144371210708)
* hasMember[+] = Reference(NoDysuria144371210708)


Instance: NoFever144371210708
InstanceOf: Observation
Usage: #example
Title: "No Fever (44371210708)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinical-symptom#1 "Fieber >38.0°C"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = false

Instance: NoPressureDolence144371210708
InstanceOf: Observation
Usage: #example
Title: "No Pressure Dolence (44371210708)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinical-symptom#2 "Suprapubische Druckdolenz"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = false


Instance: NoFlankPain144371210708
InstanceOf: Observation
Usage: #example
Title: "No Flank Pain (44371210708)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinical-symptom#3 "Flankenschmerzen oder -klopfdolenz"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = false


Instance: UrinaryUrgency144371210708
InstanceOf: Observation
Usage: #example
Title: "Urinary Urgency (44371210708)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinical-symptom#4 "Harndrang"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = true

Instance: NoPollakiuria144371210708
InstanceOf: Observation
Usage: #example
Title: "No Pollakiuria (44371210708)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinical-symptom#5 "Pollakisurie"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = false

Instance: NoDysuria144371210708
InstanceOf: Observation
Usage: #example
Title: "No Dysuria (44371210708)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinical-symptom#6 "Dysurie"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = false