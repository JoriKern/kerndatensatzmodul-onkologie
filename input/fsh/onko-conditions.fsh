Profile: CancerDiagnosis
Parent: $MIIDiagnose
Id: sd-onko-cancer-diagnosis
Title: "Cancer Diagnosis"
* code.coding[alpha-id] 0..0
* code.coding[sct] 0..0
* code.coding[orphanet] 0..0
* stage.assessment ^slicing.discriminator.type = #profile
* stage.assessment ^slicing.discriminator.path = "$this"
* stage.assessment ^slicing.rules = #open
* stage.assessment ^slicing.ordered = false
* stage.assessment contains classification 0..1 MS
* stage.assessment[classification] only Reference($TNMClassification)
