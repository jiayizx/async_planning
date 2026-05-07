(define (domain kidney-donor)
  (:requirements :durative-actions)
  
  (:predicates
    (recover_pending)
    (recover_done)
    (manage_pain_pending)
    (manage_pain_done)
    (prepare_followups_pending)
    (prepare_followups_done)
  )

  (:durative-action recover_in_hospital
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (recover_pending))
    :effect (and (at start (not (recover_pending))) (at end (recover_done)))
  )

  (:durative-action manage_pain
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (manage_pain_pending)) (at start (recover_done)))
    :effect (and (at start (not (manage_pain_pending))) (at end (manage_pain_done)))
  )

  (:durative-action prepare_followups
    :parameters ()
    :duration (= ?duration 4838400)
    :condition (and (at start (prepare_followups_pending)) (at start (recover_done)))
    :effect (and (at start (not (prepare_followups_pending))) (at end (prepare_followups_done)))
  )
)
