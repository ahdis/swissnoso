CodeSystem: OrganizationUnit
Id: organization-unit
Title: "Organization Unit"
Description: "TBD"
* ^caseSensitive = false
* ^content = #complete
* #1 "Chirurgie (SUR)"
* #2 "Medizin (MED)"
* #3 "Gynäkologie/Geburtshilfe (G/O)"
* #4 "Intensivmedizin (ICU)"
* #5 "Pädiatrie (PED)"
* #6 "Neonatologie (NEO)"
* #7 "Geriatrie (GER)"
* #8 "Psychiatrie (PSY)"
* #9 "Rehabilitation (RHB)"
* #10 "Langzeitpflege (LTC)"
* #11 "Sonstige (OTH)"
* #12 "Gemischt (MIX)"



ValueSet: OrganizationUnit
Id: organization-unit
Title: "Organization Unit"
Description: "TBD"
* include codes from system OrganizationUnit



Instance: OrganizationUnit-to-SnomedCT
InstanceOf: ConceptMap
Usage: #definition
* name = "OrganizationUnitToSnomedCT"
* title = "OrganizationUnit to SNOMED CT mapping"
* status = #active
* description = "OrganizationUnit mapping from Swissnoso to SNOMED CT"

* sourceUri = "http://fhir.ch/ig/swissnoso/ValueSet/organization-unit"
* targetUri = "http://snomed.info/sct"
* group.source = "http://fhir.ch/ig/swissnoso/CodeSystem/organization-unit"
* group.target = "http://snomed.info/sct"

* group.element[+].code = #1 
* group.element[=].target.code = #309967005
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #2 
* group.element[=].target.code = #309912009
* group.element[=].target.equivalence = #equivalent