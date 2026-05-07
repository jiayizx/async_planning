(define (domain dog_ownership)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (searched)
    (driven)
    (looked)
    (picked)
    (paperwork_done)
    (supplies_bought)
    (food_bought)
  )

  (:durative-action search_stores
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (searched)))
  )

  (:durative-action drive_to_store
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (searched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (driven)))
  )

  (:durative-action look_at_dogs
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (driven)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (looked)))
  )

  (:durative-action pick_dog
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (looked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (picked)))
  )

  (:durative-action fill_paperwork
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (picked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (paperwork_done)))
  )

  (:durative-action shop_supplies
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (paperwork_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_bought)))
  )

  (:durative-action shop_food
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (paperwork_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (food_bought)))
  )
)