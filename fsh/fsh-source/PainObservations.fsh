
Invariant: zero-to-two
Description: "Value must be an integer from zero to two."
Expression: "$this >= 0 and $this <= 2"
Severity: #error

Invariant: zero-to-ten
Description: "Value must be and integer from zero to ten."
Expression: "$this >= 0 and $this <= 10"
Severity: #error

Profile: FLACCPainAssessmentScale
Parent: Observation
Id: flacc-pain-assessment-scale
Title: "FLACC Pain Assessment Scale"
Description: "An assessment of an individual's pain based on observations of his/her *F*acial expressions, behavior of their *L*egs, their *A*ctivity, their *C*ry, and their *C*onsolability."
* code = LNC#38213-5 "FLACC pain assessment panel"
* value[x] 0..0
* component ^slicing.discriminator.type = #exists
* component ^slicing.discriminator.path = "component.code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component contains
    PainSeverityFaceFLACC 0..1 and
    PainSeverityLegsFLACC 0..1 and
    PainSeverityActivityFLACC 0..1 and
    PainSeverityCryFLACC 0..1 and
    PainSeverityConsolabilityFLACC 0..1 and
    PainSeverityTotalScore 0..1
* component[PainSeverityFaceFLACC].code = LNC#38216-8 "Pain severity Face FLACC"
* component[PainSeverityFaceFLACC].value[x] only integer 
* component[PainSeverityFaceFLACC].value[x] obeys zero-to-two
* component[PainSeverityLegsFLACC].code = LNC#38217-6 "Pain severity Legs FLACC"
* component[PainSeverityLegsFLACC].value[x] only integer 
* component[PainSeverityLegsFLACC].value[x] obeys zero-to-two
* component[PainSeverityActivityFLACC].code = LNC#38218-4 "Pain severity Activity FLACC"
* component[PainSeverityActivityFLACC].value[x] only integer
* component[PainSeverityActivityFLACC].value[x] obeys zero-to-two
* component[PainSeverityCryFLACC].code = LNC#38219-2 "Pain severity Cry FLACC"
* component[PainSeverityCryFLACC].value[x] only integer
* component[PainSeverityCryFLACC].value[x] obeys zero-to-two
* component[PainSeverityConsolabilityFLACC].code = LNC#38220-0 "Pain severity Consolability FLACC"
* component[PainSeverityConsolabilityFLACC].value[x] only integer
* component[PainSeverityConsolabilityFLACC].value[x] obeys zero-to-two
* component[PainSeverityTotalScore].code = LNC#38215-0 "Pain severity total [Score] FLACC"
* component[PainSeverityTotalScore].value[x] only integer
* component[PainSeverityTotalScore].value[x] obeys zero-to-ten

Profile: PainSeverityWongBakerFACESPainRatingScale
Parent: Observation
Id: pain-severity-wong-baker-faces-pain-rating-scale
Title: "Pain Severity Wong-Baker FACES Pain Rating Scale"
Description: "An assement of the severity of an individual's pain based on facial expressions."
* code = LNC#38221-8 "Pain severity Wong-Baker FACES pain rating scale"
* value[x] only integer 
* value[x] obeys zero-to-ten

