Instance: SwissnosoOrganizationalUnit-to-SwissnosoSpecialty
InstanceOf: ConceptMap
Usage: #definition
* name = "SwissnosoSpecialtyMap"
* title = "Swissnoso Organizational Unit to Swissnoso Specialty Mapping"
* status = #active
* description = "Mapping to describe the relationships between organization units and specialty."

* sourceUri = "http://fhir.ch/ig/swissnoso/ValueSet/swissnoso-organizational-unit"
* targetUri = "http://fhir.ch/ig/swissnoso/ValueSet/swissnoso-specialty"
* group.source = "http://fhir.ch/ig/swissnoso/CodeSystem/ecdc-ward-specialty"
* group.target = "http://fhir.ch/ig/swissnoso/CodeSystem/ecdc-patient-consultant-specialty"

// Operative Fachgebiete (SUR)
* group.element[+].code = #SUR
* group.element[=].target[+].code = #SURGEN
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURDIG
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURORTR
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURORTO
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURTR
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURCV
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURCARD
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURVASC
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURTHO
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURNEU
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURPED
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURTRANS
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURONCO
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURENT
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SUROPH
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURMAXFAC
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURSTODEN
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURBURN
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURURO
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SURPLAS
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #SUROTH
* group.element[=].target[=].equivalence = #specializes

// Konservative Fachgebiete (MED)
* group.element[+].code = #MED
* group.element[=].target[+].code = #SURGEN
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDGAST
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDHEP
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDENDO
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDONCO
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDHEMA
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDBMT
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDHEMBMT
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDCARD
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDDERM
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDNEPH
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDNEU
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDPNEU
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDRHEU
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDID
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDTR
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #MEDOTH
* group.element[=].target[=].equivalence = #specializes

// Pädiatrie (PED)
* group.element[+].code = #PED
* group.element[=].target[+].code = #PEDGEN
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #ICUPED
* group.element[=].target[=].equivalence = #specializes

// Neonatologie (NEO)
* group.element[+].code = #NEO
* group.element[=].target[+].code = #PEDNEO
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #PEDBAB
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #ICUNEO
* group.element[=].target[=].equivalence = #specializes

// Intensivmedizin (ICU)
* group.element[+].code = #ICU
* group.element[=].target[+].code = #ICUMED
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #ICUSUR
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #ICUMIX
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #ICUSPEC
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #ICUOTH
* group.element[=].target[=].equivalence = #specializes

// Gynäkologie und Geburtshilfe (GO)
* group.element[+].code = #GO
* group.element[=].target[+].code = #GOOBS
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #GOGYN
* group.element[=].target[=].equivalence = #specializes
* group.element[=].target[+].code = #GOBAB
* group.element[=].target[=].equivalence = #specializes

// Geriatrie (GER)
* group.element[+].code = #GER
* group.element[=].target[+].code = #GER
* group.element[=].target[=].equivalence = #specializes

// Psychiatrie (PSY)
* group.element[+].code = #PSY
* group.element[=].target[+].code = #PSY
* group.element[=].target[=].equivalence = #specializes

// Rehabilitation (RHB)
* group.element[+].code = #RHB
* group.element[=].target[+].code = #RHB
* group.element[=].target[=].equivalence = #specializes

// Langzeitpflege (LTC)
* group.element[+].code = #LTC
* group.element[=].target[+].code = #LTC
* group.element[=].target[=].equivalence = #specializes

// Sonstige (OTH)
* group.element[+].code = #OTH
* group.element[=].target[+].code = #OTH
* group.element[=].target[=].equivalence = #specializes

// Gemischt (MIX)
* group.element[+].code = #MIX
* group.element[=].target[+].code = #MIX
* group.element[=].target[=].equivalence = #specializes
