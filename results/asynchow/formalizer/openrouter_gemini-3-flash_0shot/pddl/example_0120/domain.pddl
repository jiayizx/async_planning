(define (domain snack_preparation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (in_kitchen)
    (cupboard_open)
    (items_inspected)
    (decision_made)
    (food_obtained)
  )

  (:durative-action walk_to_kitchen
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (in_kitchen)))
  )

  (:durative-action open_cupboard
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (in_kitchen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cupboard_open)))
  )

  (:durative-action look_through_items
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (cupboard_open)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (items_inspected)))
  )

  (:durative-action decide_what_to_eat
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (cupboard_open)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (decision_made)))
  )

  (:durative-action reach_for_food
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (and (at start (step_pending ?s)) (at start (items_inspected)) (at start (decision_made)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (food_obtained)))
  )
)