CodeSystem: SwissnosoInsertionPlace
Id: swissnoso-insertion-place
Title: "Swissnoso Insertion Place"
Description: "TBD"
* ^caseSensitive = false
* ^content = #complete

* #1 "Emergency ward"
* #1 ^designation[0].language = #de-CH
* #1 ^designation[=].value = "Notfallstation"
* #1 ^designation[+].language = #fr-CH
* #1 ^designation[=].value = "Service des urgences"
* #1 ^designation[+].language = #it-CH
* #1 ^designation[=].value = "Pronto soccorso"

* #2 "Bed ward"
* #2 ^designation[0].language = #de-CH
* #2 ^designation[=].value = "Bettenstation"
* #2 ^designation[+].language = #fr-CH
* #2 ^designation[=].value = "Unité hospitalière"
* #2 ^designation[+].language = #it-CH
* #2 ^designation[=].value = "Degenza"

* #3 "Intensive care unit"
* #3 ^designation[0].language = #de-CH
* #3 ^designation[=].value = "Intensivstation"
* #3 ^designation[+].language = #fr-CH
* #3 ^designation[=].value = "Soins intensifs"
* #3 ^designation[+].language = #it-CH
* #3 ^designation[=].value = "Cure intensive"

* #4 "Operating room"
* #4 ^designation[0].language = #de-CH
* #4 ^designation[=].value = "Operationssaal"
* #4 ^designation[+].language = #fr-CH
* #4 ^designation[=].value = "Salle d’opération"
* #4 ^designation[+].language = #it-CH
* #4 ^designation[=].value = "Sala operatoria"

* #5 "Delivery room"
* #5 ^designation[0].language = #de-CH
* #5 ^designation[=].value = "Gebärsaal"
* #5 ^designation[+].language = #fr-CH
* #5 ^designation[=].value = "Salle d’accouchement"
* #5 ^designation[+].language = #it-CH
* #5 ^designation[=].value = "Sala parto"

* #6 "Other place"
* #6 ^designation[0].language = #de-CH
* #6 ^designation[=].value = "Anderer Ort"
* #6 ^designation[+].language = #fr-CH
* #6 ^designation[=].value = "Autre lieu"
* #6 ^designation[+].language = #it-CH
* #6 ^designation[=].value = "Altra sede"

* #7 "Hospital external place"
* #7 ^designation[0].language = #de-CH
* #7 ^designation[=].value = "Spitalexterner Ort"
* #7 ^designation[+].language = #fr-CH
* #7 ^designation[=].value = "En dehors du milieu hospitalier"
* #7 ^designation[+].language = #it-CH
* #7 ^designation[=].value = "Esterna all’ospedale"



ValueSet: SwissnosoInsertionPlace
Id: swissnoso-insertion-place
Title: "Swissnoso Insertion Place"
Description: "TBD"
* include codes from system SwissnosoInsertionPlace
