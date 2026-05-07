(define (domain make_apartment)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (couch_done)
    (table_done)
    (tv_done)
    (apartment_prepared)
  )

  (:durative-action do_step1_put_couch
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (couch_done))
    )
  )

  (:durative-action do_step2_put_coffee_table
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step2)) (at start (couch_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (table_done))
    )
  )

  (:durative-action do_step3_get_small_tv
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (tv_done))
    )
  )

  (:durative-action do_step4_put_waste_can
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (couch_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (apartment_prepared))
    )
  )
)
