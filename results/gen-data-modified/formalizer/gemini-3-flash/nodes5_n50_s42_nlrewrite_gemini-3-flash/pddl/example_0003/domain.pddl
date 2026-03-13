(define (domain hang_planters)
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

  (:durative-action attach_hanger
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step1_pending)) (at start (step3_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action place_plant
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step2_pending)) (at start (step5_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action tie_knots
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step3_pending)) (at start (step4_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action measure_cut
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action transfer_plant
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)