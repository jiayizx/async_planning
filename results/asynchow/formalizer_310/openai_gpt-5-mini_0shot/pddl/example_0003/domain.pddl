(define (domain take_bath)
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

  (:durative-action do_step1_take_off_clothes
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step1_pending))
    :effect (and
              (at start (not (step1_pending)))
              (at end (step1_done))
            )
  )

  (:durative-action do_step2_add_bubble_bath
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step2_pending)) (at start (step1_done)))
    :effect (and
              (at start (not (step2_pending)))
              (at end (step2_done))
            )
  )

  (:durative-action do_step3_turn_off_running_water
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step3_pending)) (at start (step2_done)) (at start (step5_done)))
    :effect (and
              (at start (not (step3_pending)))
              (at end (step3_done))
            )
  )

  (:durative-action do_step4_fill_up_bath_tub
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step4_pending))
    :effect (and
              (at start (not (step4_pending)))
              (at end (step4_done))
            )
  )

  (:durative-action do_step5_set_out_a_towel
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and
              (at start (not (step5_pending)))
              (at end (step5_done))
            )
  )
)
