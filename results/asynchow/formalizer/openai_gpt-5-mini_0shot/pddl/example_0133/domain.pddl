(define (domain make_mocha)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (coffee_made)
    (milk_in_jug)
    (chocolate_added)
  )

  (:durative-action do_step1_make_coffee
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (coffee_made))
            )
  )

  (:durative-action do_step2_prepare_milk
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (milk_in_jug))
            )
  )

  (:durative-action do_step3_add_chocolate
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (coffee_made)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (chocolate_added))
            )
  )
)
