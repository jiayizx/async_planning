(define (domain coffee_grounds_garden)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (compost_added)
    (soil_acidified)
    (ph_balanced)
    (nutrients_added)
    (liquid_food_made)
  )

  (:durative-action add_compost
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (compost_added)))
  )

  (:durative-action acidify_soil
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (soil_acidified)))
  )

  (:durative-action balance_ph
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (soil_acidified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ph_balanced)))
  )

  (:durative-action add_nutrients
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (nutrients_added)))
  )

  (:durative-action make_liquid_food
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (liquid_food_made)))
  )
)