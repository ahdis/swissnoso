// --------------- Instances --------------- //
Instance: Symptoms-20210709-44371210708
InstanceOf: Observation
Usage: #example
Title: "Symptoms (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $sct#tbd "Symptome"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = true

* hasMember[+] = Reference(NoFever-20210709-44371210708)
* hasMember[+] = Reference(NoPressureDolence-20210709-44371210708)
* hasMember[+] = Reference(NoFlankPain-20210709-44371210708)
* hasMember[+] = Reference(UrinaryUrgency-20210709-44371210708)
* hasMember[+] = Reference(NoPollakiuria-20210709-44371210708)
* hasMember[+] = Reference(NoDysuria-20210709-44371210708)


Instance: NoFever-20210709-44371210708
InstanceOf: Observation
Usage: #example
Title: "No Fever (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinical-symptom#1 "Fieber >38.0°C"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = false

Instance: NoPressureDolence-20210709-44371210708
InstanceOf: Observation
Usage: #example
Title: "No Pressure Dolence (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinical-symptom#2 "Suprapubische Druckdolenz"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = false


Instance: NoFlankPain-20210709-44371210708
InstanceOf: Observation
Usage: #example
Title: "No Flank Pain (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinical-symptom#3 "Flankenschmerzen oder -klopfdolenz"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = false


Instance: UrinaryUrgency-20210709-44371210708
InstanceOf: Observation
Usage: #example
Title: "Urinary Urgency (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinical-symptom#4 "Harndrang"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = true

Instance: NoPollakiuria-20210709-44371210708
InstanceOf: Observation
Usage: #example
Title: "No Pollakiuria (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinical-symptom#5 "Pollakisurie"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = false

Instance: NoDysuria-20210709-44371210708
InstanceOf: Observation
Usage: #example
Title: "No Dysuria (09.07.2021)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $clinical-symptom#6 "Dysurie"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter-44371210708)
* effectiveDateTime = "2021-07-09"
* valueBoolean = false