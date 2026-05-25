(define (domain eggless_cake_baking)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (sifted)
    (whisked)
    (oven_preheated)
    (pans_greased)
    (cake_baked)
  )

  (:durative-action sift_dry_ingredients
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sifted)))
  )

  (:durative-action whisk_ingredients
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (sifted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (whisked)))
  )

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated)))
  )

  (:durative-action grease_pans
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (oven_preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pans_greased)))
  )

  (:durative-action mix_and_bake
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (whisked)) (at start (sifted)) (at start (pans_greased)) (at start (oven_preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cake_baked)))
  )
)