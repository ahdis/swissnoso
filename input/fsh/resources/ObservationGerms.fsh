

// --------------- Instances --------------- //
Instance: NumberOfDifferentGerms44371210708
InstanceOf: Observation
Usage: #example
Title: "Number of Different Germs (44371210708)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $sct#tbd "Anzahl Keime"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter44371210708)
* effectiveDateTime = "2021-07-09"
* valueInteger = 1
* partOf = Reference(Microbiology44371210708)
* hasMember = Reference(Germ144371210708)


Instance: Germ144371210708
InstanceOf: Observation
Usage: #example
Title: "Germ 1 (44371210708)"
Description: "Example of a Swissnoso observation (UC 44371)"
* status = #final
* code = $germ#1 "E. coli"
* subject = Reference(LisaGuggisberg)
* encounter = Reference(Encounter44371210708)
* effectiveDateTime = "2021-07-09"
// <10E5 CFU/ml
// TBD: comparator wird noch nicht im IG generiert
* valueQuantity.comparator = #<
* valueQuantity = 1000000 '[CFU]/mL' "colony forming unit per milliliter"
* partOf = Reference(Microbiology44371210708)