// --------------- Structure Definition --------------- //
Profile: SwissnosoOrganizationUnit
Parent: $ChCoreOrganization
Id: swissnoso-organization-unit
Title: "Swissnoso Organization Unit"
Description: "This profile constrains the Organization resource to represent the characteristics of an organization as an unit in the context of a report to Swissnoso."
* . ^short = "Swissnoso Organization Unit"

* partOf 1..
* partOf only Reference(SwissnosoOrganizationHospital)

* type from SwissnosoOrganizationUnit (preferred)
* type. ^short = "Organizational unit"
* type 1..



// --------------- Mapping --------------- //
Mapping: CAUTISurveillanceVariables-for-SwissnosoOrganizationUnit
Source: SwissnosoOrganizationUnit
Target: "https://www.swissnoso.ch/fileadmin/module/cauti_surveillance/Dokumente_D/211222_CAUTI_Surveillance_Variablen_und_Analyseplan.pdf"
Id: CAUTISurveillanceVariables
Title: "CAUTI Surveillance Variables"
* type -> "1.1 a) 5. Organizational Unit"



// --------------- Instances --------------- //
Instance: AbteilungChirurgie
InstanceOf: SwissnosoOrganizationUnit
Usage: #example
Title: "Abteilung Chirurgie"
Description: "Example of a Swissnoso organization (department)"
* name = "Chirurgische Abteilung"
* partOf = Reference(SpitalTannenwald)
* type = $swissnoso-organization-unit#1 "Chirurgie (SUR)"


Instance: AbteilungMedizin
InstanceOf: SwissnosoOrganizationUnit
Usage: #example
Title: "Abteilung Medizin"
Description: "Example of a Swissnoso organization (department)"
* name = "Medizinische Abteilung"
* partOf = Reference(SpitalTannenwald)
* type = $swissnoso-organization-unit#2 "Medizin (MED)"