Profile: CancerRelatedProcedure
Parent: $mii-procedure
Id: sd-onko-cancer-related-procedure
Title: "Cancer Related Procedure"
* extension contains $CTCAE-Grade named sideEffect 0..1 MS

Profile: CancerRelatedRadiotherapy
Parent: sd-onko-cancer-related-procedure
Title: "Radiotherapy"
* performed[x] only Period
* code.coding[ops].code from onko-ops-radiationtherapy (required)
* extension contains onko-radiotherapy-termination-reason named terminationReason 0..1 MS
* category.coding[sct].code = #108290001 (exactly)
// TODO: adjust `durchfuehrungsabsicht` to fit intent

Profile: CancerRelatedSurgicalProcedure
Parent: sd-onko-cancer-related-procedure
Title: "Surgical Procedure"
* performed[x] only dateTime
* code.coding[ops].code from onko-ops-surgical-procedure (required)
* category.coding[sct].code = #387713003 (exactly)
// TODO: adjust `durchfuehrungsabsicht` to fit intent

Instance: onko-radiotherapy-example
InstanceOf: CancerRelatedRadiotherapy
Title: "Radiotherapy Example"
* code.coding[ops]
  * code = #8-52
  * version = #2023
* status = #preparation
* performedPeriod.start = 2023-01-01
* subject = Reference(PatientExample)
