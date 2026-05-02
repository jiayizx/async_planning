(define (domain dental-assistant-tx)
  (:requirements :durative-actions)
  (:predicates
    (submit_application_pending)
    (submit_application_done)
    (enroll_program_pending)
    (enroll_program_done)
    (complete_cpr_pending)
    (complete_cpr_done)
    (complete_training_pending)
    (complete_training_done)
    (pass_exam_pending)
    (pass_exam_done)
  )

  (:durative-action submit_application
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and
      (at start (submit_application_pending))
      (at start (complete_cpr_done))
      (at start (complete_training_done))
      (at start (pass_exam_done))
    )
    :effect (and
      (at start (not (submit_application_pending)))
      (at end (submit_application_done))
    )
  )

  (:durative-action enroll_program
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (enroll_program_pending))
    :effect (and
      (at start (not (enroll_program_pending)))
      (at end (enroll_program_done))
    )
  )

  (:durative-action complete_cpr
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (complete_cpr_pending))
    :effect (and
      (at start (not (complete_cpr_pending)))
      (at end (complete_cpr_done))
    )
  )

  (:durative-action complete_training
    :parameters ()
    :duration (= ?duration 23328000)
    :condition (and
      (at start (complete_training_pending))
      (at start (enroll_program_done))
    )
    :effect (and
      (at start (not (complete_training_pending)))
      (at end (complete_training_done))
    )
  )

  (:durative-action pass_exam
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (pass_exam_pending))
      (at start (complete_cpr_done))
    )
    :effect (and
      (at start (not (pass_exam_pending)))
      (at end (pass_exam_done))
    )
  )
)
