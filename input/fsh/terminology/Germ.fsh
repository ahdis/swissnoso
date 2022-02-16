CodeSystem: SwissnosoGerm
Id: swissnoso-germ
Title: "Swissnoso Germ"
Description: "This code system contains codes defined by Swissnoso to define the germ."
* ^caseSensitive = false
* ^content = #complete

* #1 "E. coli"
* #1 ^designation[0].language = #de-CH
* #1 ^designation[=].value = "E. coli"
* #1 ^designation[+].language = #fr-CH
* #1 ^designation[=].value = "E. coli"
* #1 ^designation[+].language = #it-CH
* #1 ^designation[=].value = "E. coli"

* #2 "Proteus sp."
* #2 ^designation[0].language = #de-CH
* #2 ^designation[=].value = "Proteus sp."
* #2 ^designation[+].language = #fr-CH
* #2 ^designation[=].value = "Proteus sp."
* #2 ^designation[+].language = #it-CH
* #2 ^designation[=].value = "Proteus sp."

* #3 "Klebsiella sp."
* #3 ^designation[0].language = #de-CH
* #3 ^designation[=].value = "Klebsiella sp."
* #3 ^designation[+].language = #fr-CH
* #3 ^designation[=].value = "Klebsiella sp."
* #3 ^designation[+].language = #it-CH
* #3 ^designation[=].value = "Klebsiella sp."

* #4 "Enterococcus sp."
* #4 ^designation[0].language = #de-CH
* #4 ^designation[=].value = "Enterococcus sp."
* #4 ^designation[+].language = #fr-CH
* #4 ^designation[=].value = "Enterococcus sp."
* #4 ^designation[+].language = #it-CH
* #4 ^designation[=].value = "Enterococcus sp."

* #5 "P. aeruginosa"
* #5 ^designation[0].language = #de-CH
* #5 ^designation[=].value = "P. aeruginosa"
* #5 ^designation[+].language = #fr-CH
* #5 ^designation[=].value = "P. aeruginosa"
* #5 ^designation[+].language = #it-CH
* #5 ^designation[=].value = "P. aeruginosa"

* #6 "Other germ"
* #6 ^designation[0].language = #de-CH
* #6 ^designation[=].value = "Anderer Keim"
* #6 ^designation[+].language = #fr-CH
* #6 ^designation[=].value = "Autre germe"
* #6 ^designation[+].language = #it-CH
* #6 ^designation[=].value = "Altro batterio"



ValueSet: SwissnosoGerm
Id: swissnoso-germ
Title: "Swissnoso Germ"
Description: "This value set includes the codes defined in the code system 'Swissnoso Germ'."
* include codes from system SwissnosoGerm
