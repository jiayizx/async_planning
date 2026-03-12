(define (domain kidney_donor)
  (:requirements :durative-actions)
  (:predicates
    (recover_in_hospital_pending)
    (recover_in_hospital_done)
    (manage_pain_pending)
    (manage_pain_done)
    (prepare_followups_pending)
    (prepare_followups_done)
  )

  (:durative-action recover_in_hospital
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (recover_in_hospital_pending))
    :effect (and
      (at start (not (recover_in_hospital_pending)))
      (at end (recover_in_hospital_done))
    )
  )

  (:durative-action manage_pain
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and
      (at start (manage_pain_pending))
      (at start (recover_in_hospital_done))
    )
    :effect (and
      (at start (not (manage_pain_pending)))
      (at end (manage_pain_done))
    )
  )

  (:durative-action prepare_followups
    :parameters ()
    :duration (= ?duration 4838400)
    :condition (and
      (at start (prepare_followups_pending))
      (at start (recover_in_hospital_done))
    )
    :effect (and
      (at start (not (prepare_followups_pending)))
      (at end (prepare_followups_done))
    )
  )
)
