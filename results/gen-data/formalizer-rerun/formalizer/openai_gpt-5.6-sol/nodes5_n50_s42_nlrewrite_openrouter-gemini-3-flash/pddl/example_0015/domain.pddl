(define (domain lemon-bars)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (oven_preheated)
    (filling_whisked)
    (lemons_zested_and_juiced)
    (crust_dough_prepared)
    (bars_baked)
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (oven_preheated))
    )
  )

  (:durative-action whisk_filling
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (lemons_zested_and_juiced))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (filling_whisked))
    )
  )

  (:durative-action zest_and_juice_lemons
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lemons_zested_and_juiced))
    )
  )

  (:durative-action prepare_crust_dough
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (lemons_zested_and_juiced))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (crust_dough_prepared))
    )
  )

  (:durative-action bake_crust_and_filling
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (oven_preheated))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bars_baked))
    )
  )
)