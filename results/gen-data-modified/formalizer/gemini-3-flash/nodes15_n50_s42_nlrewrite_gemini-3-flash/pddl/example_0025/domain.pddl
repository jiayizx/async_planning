(define (domain rhubarb_prep)
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
    (step11_pending) (step11_done)
    (step12_pending) (step12_done)
    (step13_pending) (step13_done)
    (step14_pending) (step14_done)
    (step15_pending) (step15_done)
  )

  (:durative-action harvest_rhubarb
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action wash_stalks
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step3_pending)) (at start (step1_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action toss_sugar
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step4_pending)) (at start (step15_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action combine_butter_oats
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step5_pending)) (at start (step6_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action measure_dry
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step6_pending)) (at start (step8_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action trim_leaves
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step7_pending)) (at start (step3_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action clean_workspace
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (step8_pending)) (at start (step12_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action spread_rhubarb
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step9_pending)) (at start (step4_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action whip_cream
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step10_pending)) (at start (step3_done)) (at start (step11_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action chill_cream
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step11_pending))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action sharpen_knife
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step12_pending))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action place_in_oven
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step13_pending)) (at start (step2_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action sprinkle_topping
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step14_pending)) (at start (step5_done)) (at start (step7_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action slice_stalks
    :parameters ()
    :duration (= ?duration 420)
    :condition (and (at start (step15_pending)) (at start (step3_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )
)