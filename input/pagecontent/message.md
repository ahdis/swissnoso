Swissnoso is dedicated to the reduction of nosocomial infections and multiresistant germs. For the monitoring and prevention of healthcare-associated infections, [various modules](https://www.swissnoso.ch/module/uebersicht-module) are available. A key element here are the regular reports of module-specific results to Swissnoso.    
FHIR exchange formats are now being defined iteratively for the various modules for reporting to Swissnoso. FHIR resources with required case data are sent bundled in a FHIR message.

### FHIR Message (Bundle)
The [message](https://www.hl7.org/fhir/messaging.html) consists of a [Bundle](https://www.hl7.org/fhir/bundle.html) identified by the [type](https://www.hl7.org/fhir/bundle-definitions.html#Bundle.type) `message`, with the first resource in the Bundle being a [MessageHeader](https://www.hl7.org/fhir/messageheader.html) resource.    
The MessageHeader resource defines so-called [focus](https://www.hl7.org/fhir/messageheader-definitions.html#MessageHeader.focus) elements. Only the root resources, depending on the corresponding Swissnoso module, are specified here. The resources that are referenced (e.g. Patient, Encounter) are contained in the Bundle as further entries, but are not listed here.


{% include img.html img="message.png" caption="Fig.: FHIR message using the example of CAUTI Surveillance" width="30%" %}

### Swissnoso Messages
* CAUTI Surveillance
   * Profiles: [Message (Bundle)](StructureDefinition-swissnoso-message-cauti-surveillance.html), [MessageHeader](StructureDefinition-swissnoso-messageheader-cauti-surveillance.html), further [profiles](profiles.html#cauti-surveillance)
   * Examples: [UC 14200](Bundle-MessageUC14200.html), [UC 181521](tbd), [UC 44371](tbd), [UC 102938](tbd)