[Swissnoso](https://www.swissnoso.ch/) is dedicated to the reduction of nosocomial infections and multi-resistant germs. For the monitoring and prevention of healthcare-associated infections, [various modules](https://www.swissnoso.ch/module/uebersicht-module) are available. A key element of the monitoring modules is the regular delivery of module-specific data to Swissnoso.   
The exchange format for data transmission is defined as a so-called FHIR message, the structure of which is described below.

### FHIR Message (Bundle)
The [message](https://www.hl7.org/fhir/messaging.html) consists of a [Bundle](https://www.hl7.org/fhir/bundle.html) identified by the [type](https://www.hl7.org/fhir/bundle-definitions.html#Bundle.type) `message`, with the first resource in the Bundle being a [MessageHeader](https://www.hl7.org/fhir/messageheader.html) resource.    
The MessageHeader resource defines so-called [focus](https://www.hl7.org/fhir/messageheader-definitions.html#MessageHeader.focus) elements. Only the root resources, depending on the corresponding Swissnoso module, are specified here. The resources that are referenced (e.g. Patient, Encounter) are contained in the Bundle as further entries, but are not listed here.


{% include img.html img="message.png" caption="Fig.: FHIR message using the example of CAUTI Surveillance" width="30%" %}

### Swissnoso Messages
* CAUTI Surveillance
   * Profiles: [Message (Bundle)](StructureDefinition-swissnoso-message-cauti-surveillance.html), [MessageHeader](StructureDefinition-swissnoso-messageheader-cauti-surveillance.html), further [profiles](profiles.html#cauti-surveillance)
   * Examples: [UC 14200](Bundle-MessageUC14200.html), [UC 181521](Bundle-MessageUC181521.html), [UC 44371](Bundle-MessageUC44371.html), [UC 102938](tbd)