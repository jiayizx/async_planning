(define (domain starfish_acclimation)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
  )

  (:durative-action float_bag
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step1_pending)) (at start (step3_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action setup_drip
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step2_pending)) (at start (step3_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action prepare_quarantine
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action add_tank_water
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step4_pending)) (at start (step1_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action transfer_starfish
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step5_pending)) (at start (step2_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)