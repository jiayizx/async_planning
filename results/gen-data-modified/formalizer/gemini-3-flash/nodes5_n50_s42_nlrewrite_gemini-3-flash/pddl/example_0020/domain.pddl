(define (domain chicken_curry)
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

  (:durative-action brown_chicken
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step1_pending)) (at start (step3_done)) (at start (step4_done)) (at start (step5_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action simmer_curry
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step2_pending)) (at start (step1_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action dice_aromatics
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action gather_ingredients
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action saute_aromatics
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)