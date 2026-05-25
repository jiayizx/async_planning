(define (domain lemon_bars)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (preheated)
    (whisked)
    (zested)
    (crust_prepared)
    (baked)
  )

  (:durative-action preheat_oven
    :duration (= ?duration 900)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (preheated)) ) )

  (:durative-action whisk_filling
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (zested)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (whisked)) ) )

  (:durative-action zest_and_juice
    :duration (= ?duration 600)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (zested)) ) )

  (:durative-action prepare_crust
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step4)) (at start (zested)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (crust_prepared)) ) )

  (:durative-action bake_together
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step5)) (at start (preheated)) (at start (whisked)) (at start (crust_prepared)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (baked)) ) )
)
