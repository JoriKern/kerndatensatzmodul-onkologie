ValueSet: OpsRadiationtherapy
Id: onko-ops-radiationtherapy
Title: "OPS Radiotherapy"
Description: "OPS-Codes specifying an oncological radiotherapies"
* include codes from system $OPS where concept is-a #8-52

ValueSet: RadiotherapyTerminationReason
Id: vs-onko-radiotherapy-termination-reason
Title: "Radiotherapy Termination Reason"
Description: "Reasons a radiotherapy was terminated"
* include codes from system cs-onko-radiationtherapy-termination-reason

ValueSet: Intent
Id: vs-onko-intent
Title: "Intent"
Description: "Intents for a procedure or a medication treatment"
* include codes from system cs-onko-intent
