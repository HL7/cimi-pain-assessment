Profile: PainQuestionnaire
Parent: Questionnaire
Id: pain-questionnaire
Title: "Pain Assessment Questionnaire"
Description: "A list of questions about the nature of and individual's pain."
* item ^slicing.discriminator.type = #exists
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item ^slicing.ordered = true
* item contains
    Q1 0..1 and
    Q2 0..1 and
    Q3 0..1 and
    Q4 0..1 and
    Q5 0..1 and
    Q6 0..1 and
    Q7 0..1 and
    Q8 0..1 and
    Q9 0..1 and
    Q10 0..1 and
    Q11 0..1 and
    Q12 0..1 and
    Q13 0..1 and
    Q14 0..1 and
    Q15 0..1 and
    Q16 0..1 and
    Q17 0..1 and
    Q18 0..1
* item[Q1].linkId = "1"
* item[Q1].prefix = "Duration"
* item[Q1].text = "How long does or did the pain last?"
* item[Q1].answerOption.value[x] only Reference
* item[Q1].code = LNC#38207-7 "Pain duration - Reported"
* item[Q2].linkId = "2"
* item[Q2].prefix = "Pain Radiation"
* item[Q2].text = "Does the pain radiate to another site on your body?"
* item[Q2].code = LNC#38205-1 "Pain radiation"
* item[Q3].linkId = "3"
* item[Q3].prefix = "Exacerbating Factor"
* item[Q3].text = "Are there things that make the pain worse?"
* item[Q3].answerOption.value[x] only Coding
* item[Q3].answerOption.value[x] from PainExacerbatingFactorVS (preferred)
* item[Q3].code = LNC#38209-3 "Pain exacerbating factors - Reported"
* item[Q4].linkId = "4"
* item[Q4].prefix = "Alleviating Factor"
* item[Q4].text = "Ane there things that make the pain better or go away?"
* item[Q4].answerOption.value[x] only Coding
* item[Q4].answerOption.value[x] from PainAlleviatingFactorVS (preferred)
* item[Q4].code = LNC#38210-1 "Pain alleviating factors - Reported"
* item[Q5].linkId = "5"
* item[Q5].prefix = "Pain Sensation Quality"
* item[Q5].text = "What is the pain like?"
* item[Q5].answerOption.value[x] only Coding
* item[Q5].answerOption.value[x] from PainCharacterVS (preferred)
* item[Q5].code = LNC#32419-4 "Pain quality"
* item[Q6].linkId = "6"
* item[Q6].prefix = "Temporal Pattern"
* item[Q6].text = "Is the pain continuous or intermittent?"
* item[Q6].answerOption.value[x] only Coding
* item[Q6].answerOption.value[x] from PainTemporalPatternVS (preferred)
* item[Q6].code = LNC#38206-9 "Pain temporal pattern - Reported"
* item[Q7].linkId = "7"
* item[Q7].prefix = "Speed of Onset"
* item[Q7].text = "How quickly does the pain come on?"
* item[Q7].answerOption.value[x] only Coding
* item[Q7].answerOption.value[x] from PainSpeedOfOnsetVS (preferred)
* item[Q7].code = LNC#38203-6 "Speed of pain onset - Reported"
* item[Q8].linkId = "8"
* item[Q8].prefix = "Pain Severity Score"
* item[Q8].text = "On a scale from 0 to 10, how bad is the pain?"
* item[Q8].answerOption.value[x] only integer
* item[Q8].code = LNC#38208-5 "Pain severity - reported"
* item[Q9].linkId = "9"
* item[Q9].prefix = "Periodicity"
* item[Q9].text = "How frequently do you experience the pain, once, very infrequently, infrequently, or frequently?"
* item[Q9].answerOption.value[x] only Coding
* item[Q9].answerOption.value[x] from PainPeriodicityVS (preferred)
* item[Q10].linkId = "10"
* item[Q10].prefix = "Course"
* item[Q10].text = "How long have you been experiencing the pain?"
* item[Q10].answerOption.value[x] only Coding
* item[Q10].answerOption.value[x] from PainCourseVS (preferred)
* item[Q10].code = LNC#89261-2 "Clinical course"
* item[Q11].linkId = "11"
* item[Q11].prefix = "Trend"
* item[Q11].text = "Is the pain getting better or worse?"
* item[Q11].answerOption.value[x] only Coding
* item[Q11].answerOption.value[x] from PainTrendVS (preferred)
* item[Q11].code = LNC#89253-9 "Trend"
* item[Q12].linkId = "12"
* item[Q12].prefix = "Nonverbal Pain Indicator of Pain"
* item[Q12].text = "What behaviors or body language does the individual display that indicate the presence of pain?"
* item[Q12].answerOption.value[x] only Coding
* item[Q12].answerOption.value[x] from NonverbalPainIndicatorVS (preferred)
* item[Q12].code = LNC#94084-1 "Nonverbal pain indicators"
* item[Q13].linkId = "13"
* item[Q13].prefix = "Body Location"
* item[Q13].text = "Where is the pain located?"
* item[Q14].linkId = "14"
* item[Q14].prefix = "Associated Condition"
* item[Q14].text = "Are there any conditions that are related or underling to the pain; injuries, wounds, precedures, diseases, etc.?"
* item[Q14].answerOption.value[x] only Coding
* item[Q14].answerOption.value[x] from AssociatedConditionVS (preferred)
* item[Q15].linkId = "15"
* item[Q15].prefix = "Associated Situation"
* item[Q15].text = "Does the pain situational, accurs during activity, after activity, etc.?"
* item[Q15].answerOption.value[x] only Coding
* item[Q15].answerOption.value[x] from AssociatedSituationVS (preferred)
* item[Q16].linkId = "16"
* item[Q16].prefix = "Associated Sign and Symptom"
* item[Q16].text = "Do you have any other symptoms that accompany the pain; stiffness, anxiety, fatigue, feelingn irritable, etc.?"
* item[Q16].answerOption.value[x] only Coding
* item[Q16].answerOption.value[x] from AssociatedSignAndSymptomVS (preferred)
* item[Q17].linkId = "17"
* item[Q17].prefix = "Certainty of Presence"
* item[Q17].text = "How sure are you, as a healthcare provider that the pain exists?"
* item[Q17].answerOption.value[x] only Coding
* item[Q17].answerOption.value[x] from CertaintyOfPresenceVS (preferred)
* item[Q18].linkId = "18"
* item[Q18].prefix = "Historical Indicator"
* item[Q18].text = "Is this a new occurence of pain or one that occured in the past?"
* item[Q18].answerOption.value[x] only Coding
* item[Q18].answerOption.value[x] from HistoricalIndicatorVS (preferred)

Extension: Duration
Id: duration-extension
Title: "Duration"
Description: "An extension to describe how long the pain lasts."
* value[x] only Quantity
* valueQuantity.code from TimeUnitsVS (preferred)