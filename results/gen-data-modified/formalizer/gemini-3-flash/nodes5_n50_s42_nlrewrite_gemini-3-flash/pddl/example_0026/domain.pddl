(define (domain drum_customization)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
  )

  (:durative-action apply_vinyl_wraps
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step1_pending)) (at start (step3_done)) (at start (step4_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action research_wood_stain
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action sand_shells
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step3_pending)) (at start (step2_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action order_hardware
    :parameters ()
    :duration (= ?duration 432000)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action install_hardware_tune
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (step5_pending)) (at start (step1_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)