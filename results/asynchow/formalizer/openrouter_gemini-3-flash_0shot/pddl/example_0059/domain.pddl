(define (domain weekend_night)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (plan_made)
    (friends_invited)
    (groceries_bought)
    (gas_filled)
    (friends_picked_up)
  )

  (:durative-action make_plan
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plan_made)))
  )

  (:durative-action invite_friends
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (plan_made)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friends_invited)))
  )

  (:durative-action grocery_shopping
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (plan_made)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (groceries_bought)))
  )

  (:durative-action fill_gas
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (friends_invited)) (at start (groceries_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gas_filled)))
  )

  (:durative-action pickup_friends
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (gas_filled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friends_picked_up)))
  )
)