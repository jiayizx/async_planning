(define (domain leave_house)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
  )

  (:durative-action do_step1_put_on_heavy_winter_coat
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step1_pending)) (at start (step3_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action do_step2_put_car_keys_in_pocket
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step2_pending)) (at start (step1_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action do_step3_check_stove_and_lights_off
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step3_pending)) (at start (step5_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action do_step4_set_home_security_alarm
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step4_pending)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action do_step5_find_wallet_and_phone
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)
