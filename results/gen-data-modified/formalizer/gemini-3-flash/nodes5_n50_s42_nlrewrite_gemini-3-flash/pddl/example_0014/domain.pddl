(define (domain alcohol_breath_cure)
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

  (:durative-action rinse_mouthwash
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step1_pending)) (at start (step3_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action eat_garlic_onions
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action brush_teeth
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step3_pending)) (at start (step2_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action chew_herbs
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step4_pending)) (at start (step5_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action drink_water
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)