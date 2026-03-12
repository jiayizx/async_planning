(define (domain camera_purchase)
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

  (:durative-action research_models
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action visit_store
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step3_pending)) (at start (step1_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action transfer_funds
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step2_pending)) (at start (step3_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action check_discounts
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step7_pending)) (at start (step3_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action order_camera
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step4_pending)) (at start (step7_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action purchase_accessories
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step5_pending)) (at start (step2_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action clear_shelf
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step6_pending))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action shipping_delivery
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (step8_pending)) (at start (step4_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action charge_battery
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step10_pending)) (at start (step8_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action unbox_setup
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step9_pending)) (at start (step6_done)) (at start (step8_done)) (at start (step10_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )
)