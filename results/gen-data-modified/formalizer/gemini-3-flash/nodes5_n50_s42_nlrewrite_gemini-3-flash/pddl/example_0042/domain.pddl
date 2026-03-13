(define (domain fruit_punch_preparation)
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

  (:durative-action wash_and_slice_fruit
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action stir_juices_and_fruit
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step2_pending)) (at start (step3_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action chill_concentrated_juices
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action macerate_fruit
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step4_pending)) (at start (step1_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action add_ice_and_ginger_ale
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)