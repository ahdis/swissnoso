CodeSystem: SwissnosoClinicalSymptom
Id: swissnoso-clinical-symptom
Title: "Swissnoso Clinical Symptom"
Description: "This code system contains codes defined by Swissnoso for representing the clinical symptom. 
The selection of the clinical symptoms are based on the CAUTI definition of the National Healthcare Safety Network (NHSN), 
see the corresponding [NHSN manual](https://www.cdc.gov/nhsn/pdfs/pscmanual/7psccauticurrent.pdf)."
* ^caseSensitive = false
* ^content = #complete

* #1 "Fever >38.0°C (ear)"
* #1 ^designation[0].language = #de-CH
* #1 ^designation[=].value = "Fieber >38.0°C (Ohr)"
* #1 ^designation[+].language = #fr-CH
* #1 ^designation[=].value = "Fièvre >38.0°C (oreille)"
* #1 ^designation[+].language = #it-CH
* #1 ^designation[=].value = "Febbre >38.0 °C (orecchio)"

* #2 "Suprapubic tenderness"
* #2 ^designation[0].language = #de-CH
* #2 ^designation[=].value = "Suprapubische Druckdolenz"
* #2 ^designation[+].language = #fr-CH
* #2 ^designation[=].value = "Douleurs à la palpation sus-pubienne"
* #2 ^designation[+].language = #it-CH
* #2 ^designation[=].value = "Sensibilità alla pressione sovrapubica"

* #3 "Costovertebral angle pain or tenderness"
* #3 ^designation[0].language = #de-CH
* #3 ^designation[=].value = "Flankenschmerzen oder -klopfdolenz"
* #3 ^designation[+].language = #fr-CH
* #3 ^designation[=].value = "Douleurs sur les flancs ou douleur à la percussion"
* #3 ^designation[+].language = #it-CH
* #3 ^designation[=].value = "Dolori o sensibilità alla percussione dei fianchi"

* #4 "Urinary urgency"
* #4 ^designation[0].language = #de-CH
* #4 ^designation[=].value = "Harndrang"
* #4 ^designation[+].language = #fr-CH
* #4 ^designation[=].value = "Besoin pressant d’uriner"
* #4 ^designation[+].language = #it-CH
* #4 ^designation[=].value = "Urgenza urinaria"

* #5 "Urinary frequency"
* #5 ^designation[0].language = #de-CH
* #5 ^designation[=].value = "Pollakisurie"
* #5 ^designation[+].language = #fr-CH
* #5 ^designation[=].value = "Pollakiurie"
* #5 ^designation[+].language = #it-CH
* #5 ^designation[=].value = "Pollachiuria"

* #6 "Dysuria"
* #6 ^designation[0].language = #de-CH
* #6 ^designation[=].value = "Dysurie"
* #6 ^designation[+].language = #fr-CH
* #6 ^designation[=].value = "Dysurie"
* #6 ^designation[+].language = #it-CH
* #6 ^designation[=].value = "Disuria"




ValueSet: SwissnosoClinicalSymptom
Id: swissnoso-clinical-symptom
Title: "Swissnoso Clinical Symptom"
Description: "This value set includes the codes defined in the code system 'Swissnoso Clinical Symptom'."
* include codes from system SwissnosoClinicalSymptom
