(define (domain nintendo_ds)
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

  (:durative-action insert_cartridge
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step1_pending)) (at start (step5_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action calibrate_touchscreen
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step2_pending)) (at start (step8_done)) (at start (step9_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action locate_console
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action charge_battery
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step4_pending)) (at start (step6_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action connect_adapter
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action power_on
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step6_pending)) (at start (step2_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action select_game
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (step7_pending)) (at start (step1_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action clean_exterior
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step8_pending))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action configure_clock
    :parameters ()
    :duration (= ?duration 90)
    :condition (and (at start (step9_pending)) (at start (step10_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action open_lid
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (step10_pending)) (at start (step3_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
)