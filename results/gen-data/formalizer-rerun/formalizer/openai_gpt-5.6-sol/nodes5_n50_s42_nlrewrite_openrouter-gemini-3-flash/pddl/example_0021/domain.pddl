(define (domain canine-liver-treatment)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (ultrasound_completed)
    (consultation_scheduled)
    (enzyme_monitoring_completed)
    (diet_and_supplements_administered)
    (liver_biopsy_completed)
  )

  (:durative-action conduct_abdominal_ultrasound
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (consultation_scheduled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ultrasound_completed))
    )
  )

  (:durative-action schedule_initial_consultation
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (consultation_scheduled))
    )
  )

  (:durative-action monitor_enzyme_levels
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (diet_and_supplements_administered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (enzyme_monitoring_completed))
    )
  )

  (:durative-action administer_prescription_diet_and_supplements
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (diet_and_supplements_administered))
    )
  )

  (:durative-action perform_liver_needle_biopsy
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (ultrasound_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (liver_biopsy_completed))
    )
  )
)