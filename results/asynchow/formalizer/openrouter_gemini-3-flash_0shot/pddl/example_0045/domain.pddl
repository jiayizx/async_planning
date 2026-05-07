(define (domain travel_world)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (rv_purchased)
    (belongings_packed)
    (food_filled)
    (gas_filled)
    (journey_started)
  )

  (:durative-action purchase_rv
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rv_purchased)))
  )

  (:durative-action pack_belongings
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (rv_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (belongings_packed)))
  )

  (:durative-action fill_food
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (belongings_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (food_filled)))
  )

  (:durative-action fill_gas
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (belongings_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gas_filled)))
  )

  (:durative-action set_out
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (food_filled)) (at start (gas_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (journey_started)))
  )
)