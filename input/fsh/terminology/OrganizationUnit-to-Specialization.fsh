Instance: OrganizationUnit-to-Specialization
InstanceOf: ConceptMap
Usage: #definition
* name = "SpecializationMap"
* title = "Organization Unit to Specialization Mapping"
* status = #active
* description = "Mapping to describe the relationships between organization units and specialization"

* sourceUri = "http://fhir.ch/ig/swissnoso/ValueSet/organization-unit"
* targetUri = "http://fhir.ch/ig/swissnoso/ValueSet/specialization"
* group.source = "http://fhir.ch/ig/swissnoso/CodeSystem/organization-unit"
* group.target = "http://fhir.ch/ig/swissnoso/CodeSystem/specialization"

// Operative Fachgebiete (SUR)
* group.element[+].code = #1 
* group.element[=].target[+].code = #1
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #2
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #3
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #4
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #5
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #6
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #7
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #8
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #9
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #10
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #11
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #12
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #13
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #14
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #15
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #16
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #17
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #18
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #19
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #20
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #21
* group.element[=].target[=].equivalence = #specializes

// Konservative Fachgebiete (MED)
* group.element[+].code = #2 
* group.element[=].target[+].code = #1
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #23
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #24
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #25
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #26
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #27
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #28
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #29
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #30
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #31
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #32
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #33
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #34
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #35
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #36
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #37
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #38
* group.element[=].target[=].equivalence = #specializes

// Pädiatrie (PED)
* group.element[+].code = #5
* group.element[=].target[+].code = #39
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #40
* group.element[=].target[=].equivalence = #specializes

// Neonatologie (NEO)
* group.element[+].code = #6
* group.element[=].target[+].code = #41
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #42
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #43
* group.element[=].target[=].equivalence = #specializes

// Intensivmedizin (ICU)
* group.element[+].code = #4
* group.element[=].target[+].code = #44
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #45
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #46
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #47
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #48
* group.element[=].target[=].equivalence = #specializes

// Gynäkologie und Geburtshilfe (GO)
* group.element[+].code = #3
* group.element[=].target[+].code = #49
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #50
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #51
* group.element[=].target[=].equivalence = #specializes

// Geriatrie (GER)
* group.element[+].code = #7
* group.element[=].target[+].code = #52
* group.element[=].target[=].equivalence = #specializes

// Psychiatrie (PSY)
* group.element[+].code = #8
* group.element[=].target[+].code = #53
* group.element[=].target[=].equivalence = #specializes

// Rehabilitation (RHB)
* group.element[+].code = #9
* group.element[=].target[+].code = #54
* group.element[=].target[=].equivalence = #specializes

// Langzeitpflege (LTC)
* group.element[+].code = #10
* group.element[=].target[+].code = #55
* group.element[=].target[=].equivalence = #specializes

// Sonstige (OTH)
* group.element[+].code = #11
* group.element[=].target[+].code = #56
* group.element[=].target[=].equivalence = #specializes

// Gemischt (MIX)
* group.element[+].code = #12
* group.element[=].target[+].code = #57
* group.element[=].target[=].equivalence = #specializes
