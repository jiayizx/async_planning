(define (domain british-shorthair-identification)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type
    step11-type step12-type step13-type step14-type step15-type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (coat_examined)
    (leg_height_measured)
    (body_profile_observed)
    (ears_inspected)
    (breed_documentation_researched)
    (coat_color_guide_downloaded)
    (paws_checked)
    (tail_analyzed)
    (face_compared)
    (eyes_checked)
    (temperament_weight_checked)
    (whisker_smile_verified)
    (identification_report_finalized)
    (examination_area_cleaned)
    (records_filed)
  )

  (:durative-action examine-coat
    :parameters (?s - step1-type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (coat_examined))))

  (:durative-action measure-leg-height
    :parameters (?s - step2-type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (temperament_weight_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (leg_height_measured))))

  (:durative-action observe-body-profile
    :parameters (?s - step3-type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (temperament_weight_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (body_profile_observed))))

  (:durative-action inspect-ears
    :parameters (?s - step4-type)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (paws_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ears_inspected))))

  (:durative-action research-breed-documentation
    :parameters (?s - step5-type)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (breed_documentation_researched))))

  (:durative-action download-coat-color-guide
    :parameters (?s - step6-type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (breed_documentation_researched)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (coat_color_guide_downloaded))))

  (:durative-action check-paws
    :parameters (?s - step7-type)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (body_profile_observed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (paws_checked))))

  (:durative-action analyze-tail
    :parameters (?s - step8-type)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (whisker_smile_verified)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tail_analyzed))))

  (:durative-action compare-face
    :parameters (?s - step9-type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (coat_color_guide_downloaded)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (face_compared))))

  (:durative-action check-eyes
    :parameters (?s - step10-type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (ears_inspected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eyes_checked))))

  (:durative-action check-temperament-and-weight
    :parameters (?s - step11-type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (tail_analyzed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (temperament_weight_checked))))

  (:durative-action verify-whisker-smile
    :parameters (?s - step12-type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (face_compared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (whisker_smile_verified))))

  (:durative-action finalize-identification-report
    :parameters (?s - step13-type)
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending ?s))
      (at start (coat_examined))
      (at start (eyes_checked))
      (at start (temperament_weight_checked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (identification_report_finalized))))

  (:durative-action clean-examination-area
    :parameters (?s - step14-type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (examination_area_cleaned))))

  (:durative-action file-identification-records
    :parameters (?s - step15-type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (examination_area_cleaned)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (records_filed))))
)