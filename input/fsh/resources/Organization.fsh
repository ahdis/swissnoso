Instance: SpitalTannenwald
InstanceOf: $ChCoreOrganization
Usage: #example
Title: "Spital Tannenwald"
Description: "Example of a Swissnoso organization (hospital)"
* name = "Tannenwald"


Instance: ChirurgieSpitalTannenwald
InstanceOf: $ChCoreOrganization
Usage: #example
Title: "Chirurgie Spital Tannenwald"
Description: "Example of a Swissnoso organization (department)"
* name = "Chirurgische Abteilung des Spitals Tannenwald"
* partOf = Reference(SpitalTannenwald)
* type = $sct#394609007 "Chirurgie"