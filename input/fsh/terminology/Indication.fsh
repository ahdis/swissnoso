CodeSystem: SwissnosoIndication
Id: swissnoso-indication
Title: "Swissnoso Indication"
Description: "TBD"
* ^caseSensitive = false
* ^content = #complete

* #1 "Urinary retention"
* #1 ^designation[0].language = #de-CH
* #1 ^designation[=].value = "Harnverhalt"
* #1 ^designation[+].language = #fr-CH
* #1 ^designation[=].value = "Rétention urinaire"
* #1 ^designation[+].language = #it-CH
* #1 ^designation[=].value = "Ritenzione urinaria"

* #2 "Urine monitoring/balancing"
* #2 ^designation[0].language = #de-CH
* #2 ^designation[=].value = "Urinmonitoring/Bilanzierung"
* #2 ^designation[+].language = #fr-CH
* #2 ^designation[=].value = "Bilan urinaire"
* #2 ^designation[+].language = #it-CH
* #2 ^designation[=].value = "Monitoraggio/bilancio urinario"

* #3 "Surgery"
* #3 ^designation[0].language = #de-CH
* #3 ^designation[=].value = "Operation"
* #3 ^designation[+].language = #fr-CH
* #3 ^designation[=].value = "Opération"
* #3 ^designation[+].language = #it-CH
* #3 ^designation[=].value = "Intervento chirurgico"

* #4 "Decubital ulcers plus incontinence"
* #4 ^designation[0].language = #de-CH
* #4 ^designation[=].value = "Decubitalulzera plus Inkontinenz"
* #4 ^designation[+].language = #fr-CH
* #4 ^designation[=].value = "Escarre plus incontinence"
* #4 ^designation[+].language = #it-CH
* #4 ^designation[=].value = "Ulcera da decubito più incontinenza"

* #5 "Prolonged immobilization"
* #5 ^designation[0].language = #de-CH
* #5 ^designation[=].value = "Prolongierte Immobilisation"
* #5 ^designation[+].language = #fr-CH
* #5 ^designation[=].value = "Immobilisation prolongée"
* #5 ^designation[+].language = #it-CH
* #5 ^designation[=].value = "Immobilizzazione prolungata"

* #6 "Palliation plus comfort"
* #6 ^designation[0].language = #de-CH
* #6 ^designation[=].value = "Palliation plus Komfort"
* #6 ^designation[+].language = #fr-CH
* #6 ^designation[=].value = "Soins palliatifs plus confort"
* #6 ^designation[+].language = #it-CH
* #6 ^designation[=].value = "Palliativo più comfort"

* #7 "Other indication"
* #7 ^designation[0].language = #de-CH
* #7 ^designation[=].value = "Andere Indikation"
* #7 ^designation[+].language = #fr-CH
* #7 ^designation[=].value = "Autre indication"
* #7 ^designation[+].language = #it-CH
* #7 ^designation[=].value = "Altro indicazione"



ValueSet: SwissnosoIndication
Id: swissnoso-indication
Title: "Swissnoso Indication"
Description: "TBD"
* include codes from system SwissnosoIndication
