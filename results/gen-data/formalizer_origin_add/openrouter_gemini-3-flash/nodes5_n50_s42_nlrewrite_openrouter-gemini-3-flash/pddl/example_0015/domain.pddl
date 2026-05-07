(define (domain lemon_bars_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (oven_preheated)
    (filling_whisked)
    (lemons_processed)
    (crust_prepared)
    (bars_baked)
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated)))
  )

  (:durative-action zest_and_juice_lemons
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lemons_processed)))
  )

  (:durative-action whisk_filling
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (lemons_processed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (filling_whisked)))
  )

  (:durative-action prepare_crust
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (lemons_processed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (crust_prepared)))
  )

  (:durative-action bake_bars
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (oven_preheated)) (at start (filling_whisked)) (at start (crust_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bars_baked)))
  )
)