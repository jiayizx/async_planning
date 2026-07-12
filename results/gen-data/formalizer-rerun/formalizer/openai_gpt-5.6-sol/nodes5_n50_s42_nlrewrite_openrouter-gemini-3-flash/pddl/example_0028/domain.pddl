(define (domain gastritis-cure)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    step1type step2type step3type step4type step5type - step
  )

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (antibiotic_course_completed)
    (consultation_scheduled)
    (bland_diet_adopted)
    (endoscopy_completed)
    (recovery_confirmed)
  )

  (:durative-action complete_antibiotic_course
    :parameters (?s - step1type)
    :duration (= ?duration 1209600)
    :condition (and
      (at start (step_pending ?s))
      (at start (endoscopy_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (antibiotic_course_completed))
    )
  )

  (:durative-action schedule_initial_consultation
    :parameters (?s - step2type)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (consultation_scheduled))
    )
  )

  (:durative-action switch_to_bland_diet
    :parameters (?s - step3type)
    :duration (= ?duration 2592000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bland_diet_adopted))
    )
  )

  (:durative-action undergo_diagnostic_endoscopy
    :parameters (?s - step4type)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (consultation_scheduled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (endoscopy_completed))
    )
  )

  (:durative-action attend_followup_breath_test
    :parameters (?s - step5type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (bland_diet_adopted))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (recovery_confirmed))
    )
  )
)