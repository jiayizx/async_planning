(define (domain roast_turnips)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
  )

  (:durative-action season_turnips
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step1_pending)) (at start (step8_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step2_pending)) (at start (step9_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action roast_turnips
    :parameters ()
    :duration (= ?duration 2100)
    :condition (and (at start (step3_pending)) (at start (step7_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action peel_turnips
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step4_pending)) (at start (step5_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action wash_turnips
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action place_baking_sheet
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step6_pending)) (at start (step2_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action arrange_turnips
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step7_pending)) (at start (step10_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action purchase_turnips
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step8_pending))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action take_baking_sheet
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step9_pending))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action dice_turnips
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step10_pending)) (at start (step4_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)