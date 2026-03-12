(define (domain peanut-butter-sandwich)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
  )

  (:durative-action do_step1_go_to_kitchen
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step1_pending))
    :effect (and
      (at start (not (step1_pending)))
      (at end (step1_done))
    )
  )

  (:durative-action do_step2_open_cabinet
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step2_pending)) (at start (step1_done)))
    :effect (and
      (at start (not (step2_pending)))
      (at end (step2_done))
    )
  )

  (:durative-action do_step3_take_out_knife
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step3_pending)) (at start (step1_done)))
    :effect (and
      (at start (not (step3_pending)))
      (at end (step3_done))
    )
  )

  (:durative-action do_step4_take_out_plate
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step4_pending)) (at start (step1_done)))
    :effect (and
      (at start (not (step4_pending)))
      (at end (step4_done))
    )
  )

  (:durative-action do_step5_take_out_peanut_butter_and_bread
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step5_pending)) (at start (step2_done)))
    :effect (and
      (at start (not (step5_pending)))
      (at end (step5_done))
    )
  )
)
