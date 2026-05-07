(define (domain cook_mushrooms)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (oil_heated)
    (mushrooms_prepared)
    (egg_beaten)
    (batter_ready)
    (mushrooms_coated)
    (mushrooms_fried)
    (mushrooms_served)
  )

  (:durative-action heat_oil
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_heated)))
  )

  (:durative-action prepare_mushrooms
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mushrooms_prepared)))
  )

  (:durative-action beat_egg
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (egg_beaten)))
  )

  (:durative-action add_batter_ingredients
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (egg_beaten)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batter_ready)))
  )

  (:durative-action coat_mushrooms
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (mushrooms_prepared)) (at start (batter_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mushrooms_coated)))
  )

  (:durative-action deep_fry
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (oil_heated)) (at start (mushrooms_coated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mushrooms_fried)))
  )

  (:durative-action drain_and_serve
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (mushrooms_fried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mushrooms_served)))
  )
)