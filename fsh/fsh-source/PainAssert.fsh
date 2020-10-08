Profile: PainAssertion
Parent: Condition
Id: pain-assertion
Title: "Pain Assertion"
Description: "A statement that an individual is experiencing pain.  Included are the qualifiers, modifiers and other elements that would accompany this assertion."
* extension contains
    Duration named duration 0..1 and
    PainRadiation named painRadiaion 0..* and
    ExacerbatingFactor named exacerbatingFactor 0..* and
    AlleviatingFactor named alleviatingFactor 0..* and
    PainCharacter named painCharacter 0..* and
    TemporalPattern named temporalPattern 0..1 and
    SpeedOfOnset named speedOfOnset 0..1 and
    PainSeverityScore named painSeverityScore 0..1 and
    Periodicity named periodicity 0..* and
    Course named course 0..1 and
    Trend named trend 0..1 and
    NonverbalPainIndicator named nonverbalPainIndicator 0..* and
    BodyLocation named bodyLocation 0..1 and
    AssociatedCondition named associatedCondition 0..* and
    AssociatedSituation named associatedSituation 0..* and 
    AssociatedSignAndSymptom named associatedSignAndSymptom 0..*
* modifierExtension contains
    HistoricalIndicator named historicalIndicator 0..1
* category from PainCategoryVS (extensible)
* code = SCT#22253000 "Pain (finding)"
* bodySite from PainBodyLocationPrecoordVS (preferred)

Extension: Duration
Id: duration-extension
Title: "Duration"
Description: "An extension to describe how long the pain lasts."
* value[x] only Quantity
* value[x].code from TimeUnitsVS (preferred)

Extension: PainRadiation
Id: pain-radiation-extension
Title: "Pain Radiation"
Description: "An extension to describe if pain starts in an area and extends to another area or areas."
* extension contains
    BodyLocationOrientation named BodyLocationOrientation 0..1 and
    BodySide named BodySide 0..1 and
    Aggregate named Aggregate 0..1 and
    BodySite named BodySite 0..1
* value[x] 0..0

Extension: BodyLocationOrientation
Id: body-location-orientation-extension
Title: "Body Location Orientation"
Description: "An extension to describe the spacial orientation of a body locaation, organ, or other body part, such as inferior, superior, etc."
* value[x] only CodeableConcept
* value[x] from BodyLocationOrientationVS (preferred)

Extension: BodySide
Id: body-side-extension
Title: "Body Side"
Description: "An extension to describe which side of the body a location or other body part is on."
* value[x] only CodeableConcept
* value[x] from BodySideVS (preferred)

Extension: Aggregate
Id: aggregate-extension
Title: "Aggregate"
Description: "An extension that captures the textual representation (original text) of a coded element or combination of coded elements."
* value[x] only string

Extension: BodySite
Id: boy-site
Title: "Body Site"
Description: "An extension for the location on an individual's body where a procedure was done, an assertion is being made about, or a specimen was obtained, etc."
* value[x] only CodeableConcept
* value[x] from BodySiteVS (preferred)

Extension: ExacerbatingFactor
Id: exacerbating-factor-extension
Title: "Exacerbating Factor"
Description: "An extension to describe a thing or things that make a condition or problem worse."
* value[x] only CodeableConcept
* value[x] from PainExacerbatingFactorVS (preferred)

Extension: AlleviatingFactor
Id: alleviating-factor-extension
Title: "Alleviating Factor"
Description: "An extension that describes a thing or things that help make a problem or condition better."
* value[x] only CodeableConcept
* value[x] from PainAlleviatingFactorVS (preferred)

Extension: PainCharacter
Id: pain-character-extension
Title: "Pain Character"
Description: "An extension that describes what the pain is like.  E.g. burning, crushing, stabbing, aching, etc."
* value[x] only CodeableConcept
* value[x] from PainCharacterVS (preferred)

Extension: TemporalPattern
Id: temporal-pattern-extension
Title: "Temporal Pattern"
Description: "An extension that describes the timing characteristics of the problem or condition."
* value[x] only CodeableConcept
* value[x] from PainTemporalPatternVS (preferred)

Extension: SpeedOfOnset
Id: speed-of-onset-extension
Title: "Speed of Onset"
Description: "An extension that describes how quickly a condition or problem manifested."
* value[x] only CodeableConcept
* value[x] from PainSpeedOfOnsetVS (preferred)

Invariant: zero-to-ten
Description: "Value must be and integer from zero to ten."
Expression: "$this >= 0 and $this <= 10"
Severity: #error

Extension: PainSeverityScore
Id: pain-severity-score-extension
Title: "Pain Severity Score"
Description: "A refrence to an observation about how severe the pain is said to be."
* value[x] only integer
* value[x] obeys zero-to-ten

Extension: Periodicity
Id: periodicity-extension
Title: "Periodicity"
Description: "An extension that describes how long and how often a condition or problem occurs."
* value[x] only CodeableConcept
* value[x] from PainPeriodicityVS (preferred)

Extension: Course
Id: course-extension
Title: "Course"
Description: "An extension that describes whether a condition or problem is getting better or worse."
* value[x] only CodeableConcept
* value[x] from PainCourseVS (preferred)

Extension: Trend
Id: trend-extension
Title: "Trend"
Description: "An extension that describes the general way in which something is developing or changing.  E.g. improving, decreasing, deteriorating, increasing, getting better, getting worse, etc."
* value[x] only CodeableConcept
* value[x] from PainTrendVS (preferred)

Extension: NonverbalPainIndicator
Id: nonverbal-pain-indicator-extension
Title: "Nonverbal Pain Indicator"
Description: "An extension that describes body language or behaviors that indicate the presence of pain without it being reported verbally."
* value[x] only CodeableConcept
* value[x] from NonverbalPainIndicatorVS (preferred)

Extension: HistoricalIndicator
Id: historical-indicator-extension
Title: "Historical Indicator"
Description: "An extension that records whether or not an assertion is being made for something that occured or existed in the past."
* value[x] only CodeableConcept
* value[x] from HistoricalIndicatorVS (preferred)

Extension: AssociatedCondition
Id: associated-condition-extension
Title: "Associated Condition"
Description: "An extension that describes any condition or problem that exists along with the condition or problem being asserted."
* value[x] only CodeableConcept
* value[x] from AssociatedConditionVS (preferred)

Extension: AssociatedSituation
Id: associated-situation-extension
Title: "Associated Situation"
Description: "An extension that describes a situation or accurance that is co-occurant with the condition or problem being asserted."
* value[x] only CodeableConcept
* value[x] from AssociatedSituationVS (preferred)

Extension: AssociatedSignAndSymptom
Id: associated-sign-and-symptom-extension
Title: "Associated Sign and Symptom"
Description: "An extension that describes a sign and/or symptom that accompanies the asserted probelm or condition."
* value[x] only CodeableConcept
* value[x] from AssociatedSignAndSymptomVS (preferred)

Extension: BodyLocation
Id: body-location-extension
Title: "Body Location"
Description: "A complex extension that describes a body location in detail including orientation, side, qualifiers, landmarks, etc."
* extension contains
    BodyLocationOrientation 0..1 and 
    BodySide 0..1 and
    BodyLocationQualifier 0..1 and
    BodySite 0..1 and
    UdnerlyingAnatomicalStructure 0..1 and
    BodyLandmarkOrientation 0..1 and 
    BodyLocationPrecoord 0..1
* value[x] 0..0

Extension: BodyLocationQualifier
Id: body-location-qualifier-extension
Title: "Body Location Qualifier"
Description: "An extension for qualifying information about the body location."
* value[x] only CodeableConcept
* value[x] from BodyLocationQualifierVS (preferred)

Extension: UdnerlyingAnatomicalStructure
Id: underlying-anatomical-structure-extension
Title: "Underlying Anatomical Structure"
Description: "An extension that describes any notable body structures that are underneath a give body site."
* value[x] only CodeableConcept
//* value[x] from UdnerlyingAnatomicalStructureVS (preferred)

Extension: BodyLandmarkOrientation
Id: body-landmark-orientation-extension
Title: "Body Landmark Orientation"
Description: "A complex extension that describes how a given body site is located in ralation to a specific body landmark."
* extension contains
    LandmarkDescription 0..1 and
    ClockFacePosition 0..1 and
    DistanceFromLandmark 0..1
* value[x] 0..0

Extension: LandmarkDescription
Id: landmark-description-extension
Title: "Landmark Description"
Description: "An extension for the coded representation of a body landmak."
* value[x] only CodeableConcept
//* value[x] from LandmarkDescriptionVS (preferred)

Extension: ClockFacePosition
Id: clockface-position-extension
Title: "Clockface Position"
Description: "An extension for the description of the direction of a body location away from a landmark, represented as direction given by the hour hand of a clock.  E.g. The body location lies in the 3 o'clock direction away from the landmark."
* value[x] only CodeableConcept
* value[x] from ClockFacePositionVS (preferred)

Extension: DistanceFromLandmark
Id: distance-from-landmark-extension
Title: "Distance From Landmark"
Description: "An extension that gives the length in cm away from the landmark that the body location lies."
* value[x] only Quantity
* value[x].code = UCUM#cm

Extension: BodyLocationPrecoord
Id: body-location-precoord-extension
Title: "Body Location Precoordinated"
Description: "An extnesion for the codified represenatios of pre-coordiated body locations, such as left hand, upper arm, etc."
* value[x] only CodeableConcept
//* value[x] from PainBodyLocationPrecoordVS (preferred)
// comment for commit
