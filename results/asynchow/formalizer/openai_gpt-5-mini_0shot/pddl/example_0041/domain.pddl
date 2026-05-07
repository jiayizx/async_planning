(define (domain amusement-park)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (got_money_done)
    (park_found_done)
    (traveled_done)
    (pass_bought_done)
    (entered_done)
  )

  (:durative-action do_step1_get_money
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (got_money_done))
    )
  )

  (:durative-action do_step2_find_park
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (park_found_done))
    )
  )

  (:durative-action do_step3_travel
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step3)) (at start (park_found_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (traveled_done))
    )
  )

  (:durative-action do_step4_purchase_pass
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step4)) (at start (got_money_done)) (at start (traveled_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (pass_bought_done))
    )
  )

  (:durative-action do_step5_enter_park
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step5)) (at start (pass_bought_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (entered_done))
    )
  )
)
