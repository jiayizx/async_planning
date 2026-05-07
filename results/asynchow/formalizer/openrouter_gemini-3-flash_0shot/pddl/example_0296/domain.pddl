(define (domain mushroom_cooking)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (oil_heated)
    (mushrooms_prepared)
    (mushrooms_added)
    (mushrooms_cooked)
    (mushrooms_served)
  )

  (:durative-action heat_oil
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oil_heated)))
  )

  (:durative-action prepare_mushrooms
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mushrooms_prepared)))
  )

  (:durative-action add_mushrooms
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (oil_heated)) (at start (mushrooms_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mushrooms_added)))
  )

  (:durative-action cook_mushrooms
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (mushrooms_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mushrooms_cooked)))
  )

  (:durative-action season_and_serve
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (mushrooms_cooked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mushrooms_served)))
  )
)