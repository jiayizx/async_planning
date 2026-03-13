(define (domain community_help)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending)
    (step1_done)
    (step2_pending)
    (step2_done)
    (step3_pending)
    (step3_done)
    (step4_pending)
    (step4_done)
    (step5_pending)
    (step5_done)
  )

  (:durative-action research_orgs
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action contact_coordinator
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step3_pending)) (at start (step1_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action design_flyers
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step4_pending)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action gather_items
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step5_pending)) (at start (step3_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action deliver_donations
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step2_pending)) (at start (step5_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )
)