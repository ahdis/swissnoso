### Introduction

[Swissnoso](https://www.swissnoso.ch/) is dedicated to the reduction of nosocomial infections and multi-resistant germs. For the monitoring and prevention of healthcare-associated infections, [various modules](https://www.swissnoso.ch/module/uebersicht-module) are available. A key element of the monitoring modules is the regular delivery of module-specific data to Swissnoso.

The purpose of this implementation guide is to specify the exchange format for data transmission within the framework of the [Swissnoso CAUTI Surveillance module](https://www.swissnoso.ch/module/cauti-surveillance/ueber-cauti-surveillance/das-modul) based on the [FHIR®](https://www.hl7.org/fhir/) standard from [HL7®](https://www.hl7.org/).

The CAUTI Surveillance module, which has been available to all Swiss acute care hospitals since January 2022, is used to monitor symptomatic CAUTI as well as catheter use as an indicator of the frequency of CAUTI and non-infectious complications of urinary catheterization. Optionally, hospitals may also record the indication for urinary catheterization. Mandated by the Federal Office of Public Health (FOPH), Swissnoso established the module in 2021 based on the pilot program "progress! Safe urinary catheterization" that Patient Safety Switzerland and Swissnoso conducted together from 2015 to 2018.

### About this IG
#### Scope
* Use Cases ([de](usecases-de.html), [fr](usecases-fr.html), [it](usecases-it.html)) - illustrate possible scenarios in a simple way to help the users understand the context.
* [Messages](message.html) - are defined as FHIR exchange format for the data transmission to Swissnoso.
* [Profiles](profiles.html) - are constraints of FHIR resources for the context of reporting to Swissnoso.
* [Extensions](extensions.html) - are FHIR extensions that are added to be able to represent the complete context.
* [Terminologies](terminology.html) - have been defined and represented to allow the exchange of coded data.
* [Artifacts](artifacts.html) - provides a list of the FHIR artifacts included in this implementation guide.

#### Download
You can download this implementation guide in the [NPM package](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) format from [here](package.tgz).

#### Change Log
[Significant changes](changelog.html) to this specification since its initial version, open and closed issues.

### Copyright
This specification includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation ([IHTSDO](http://snomed.org/)) and distributed by agreement between IHTSDO and HL7. Implementers of these specification must have the appropriate SNOMED CT Affiliate license - for more information contact 
<https://www.snomed.org/snomed-ct/getsnomed> or <info@snomed.org>.

This specification contains content from LOINC® (<http://loinc.org>). The LOINC table, LOINC codes, and LOINC panels and forms file are copyright © 1995-2014, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and available at no cost under the license at <http://loinc.org/terms-of-use>.

This specification includes content from the European Centre for Disease Prevention and Control, which is copyright © ECDC 2005-2022. For more information see <https://www.ecdc.europa.eu/en/copyright>.