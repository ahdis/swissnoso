### Swissnoso Basic
The base profiles contain general definitions that apply to all reports to Swissnoso, independent of the module.

* [Swissnoso Patient](StructureDefinition-swissnoso-patient.html)   
This profile constrains the Patient resource to represent the characteristics of a patient in the context of a report to Swissnoso.

* [Swissnoso Encounter Hospital](StructureDefinition-swissnoso-encounter-hospital.html)   
This profile constrains the Encounter resource to represent the characteristics of an encounter in the hospital in the context of a report to Swissnoso.
   * [Swissnoso Encounter Unit](StructureDefinition-swissnoso-encounter-unit.html)   
   This profile constrains the Encounter resource to represent the characteristics of an encounter in the unit (as part of an encounter in the hospital) in the context of a report to Swissnoso.

* [Swissnoso Organization Hospital](StructureDefinition-swissnoso-organization-hospital.html)	  
This profile constrains the Organization resource to represent the characteristics of an organization as a hospital in the context of a report to Swissnoso.
   * [Swissnoso Organization Unit](StructureDefinition-swissnoso-organization-unit.html)	   
   This profile constrains the Organization resource to represent the characteristics of an organization as an unit in the context of a report to Swissnoso.

* [Swissnoso Location](StructureDefinition-swissnoso-location.html)    
This profile constrains the Location resource to represent the characteristics of a location in the context of a report to Swissnoso.

* [Swissnoso Procedure](StructureDefinition-swissnoso-procedure.html)     
This profile constrains the Procedure resource to represent the characteristics of a procedure in the context of a report to Swissnoso.
* [Swissnoso Observation](StructureDefinition-swissnoso-observation.html)    
This profile constrains the Observation resource to represent the characteristics of a observation in the context of a report to Swissnoso.


### CAUTI Surveillance
The CAUTI Surveillance profiles define the context for this specific Swissnoso module.

{% include img.html img="profiles-cauti.png" caption="Fig. 1: Profiles for the context of CAUTI Surveillance" width="100%" %}

* [Swissnoso Procedure Insert Catheter](StructureDefinition-swissnoso-procedure-insert-catheter.html)      
This profile constrains the Procedure resource to represent the procedure of inserting a catheter in the context of the CAUTI Surveillance module.
* [Swissnoso Procedure Remove Catheter](StructureDefinition-swissnoso-procedure-remove-catheter.html)      
This profile constrains the Procedure resource to represent the procedure of removing a catheter in the context of the CAUTI Surveillance module.

* [Swissnoso Procedure Microbiology](StructureDefinition-swissnoso-procedure-microbiology.html)   
This profile constrains the Procedure resource to represent the microbiology in the context of the CAUTI Surveillance module.

* [Swissnoso Observation Number of Different Germs](StructureDefinition-swissnoso-observation-number-of-different-germs.html)   
This profile constrains the Observation resource to represent the number of different germs in the context of the CAUTI Surveillance module.
   * [Swissnoso Observation Germ](StructureDefinition-swissnoso-observation-germ.html)   
   This profile constrains the Observation resource to represent the germ in the context of the CAUTI Surveillance module.

* [Swissnoso Observation Symptoms](StructureDefinition-swissnoso-observation-symptoms.html)   
This profile constrains the Observation resource to represent the presence/absence of symptoms in the context of the CAUTI Surveillance module.
   * [Swissnoso Observation Fever](StructureDefinition-swissnoso-observation-fever.html)    
   This profile constrains the Observation resource to represent the presence/absence of the symptom fever in the context of the CAUTI Surveillance module.
   * [Swissnoso Observation Suprapubic Tenderness](StructureDefinition-swissnoso-observation-suprapubic-tenderness.html)   
   This profile constrains the Observation resource to represent the presence/absence of the symptom suprapubic tenderness in the context of the CAUTI Surveillance module.
   * [Swissnoso Observation Angle Pain or Tenderness](StructureDefinition-swissnoso-observation-angle-pain-or-tenderness.html)   
   This profile constrains the Observation resource to represent the presence/absence of the symptom costovertebral angle pain or tenderness in the context of the CAUTI Surveillance module.
   * [Swissnoso Observation Urinary Urgency](StructureDefinition-swissnoso-observation-urinary-urgency.html)   
   This profile constrains the Observation resource to represent the presence/absence of the symptom urinary urgency in the context of the CAUTI Surveillance module.
   * [Swissnoso Observation Urinary Frequency](StructureDefinition-swissnoso-observation-urinary-frequency.html)   
   This profile constrains the Observation resource to represent the presence/absence of the symptom urinary frequency in the context of the CAUTI Surveillance module.
   * [Swissnoso Observation Dysuria](StructureDefinition-swissnoso-observation-dysuria.html)   
   This profile constrains the Observation resource to represent the presence/absence of the symptom dysuria in the context of the CAUTI Surveillance module.

