(define (domain travel_world)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    (purchase_done ?s - step)
    (pack_done ?s - step)
    (food_done ?s - step)
    (gas_done ?s - step)
    (depart_done ?s - step)
  )

  (:durative-action do_step1_purchase_rv
    :duration (= ?duration 10800)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (purchase_done step1))
            )
  )

  (:durative-action do_step2_pack_belongings
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step2)) (at start (purchase_done step1)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (pack_done step2))
            )
  )

  (:durative-action do_step3_fill_food
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step3)) (at start (pack_done step2)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (food_done step3))
            )
  )

  (:durative-action do_step4_fill_gas
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (pack_done step2)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (gas_done step4))
            )
  )

  (:durative-action do_step5_set_out_on_road
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step5)) (at start (food_done step3)) (at start (gas_done step4)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (depart_done step5))
            )
  )
)
