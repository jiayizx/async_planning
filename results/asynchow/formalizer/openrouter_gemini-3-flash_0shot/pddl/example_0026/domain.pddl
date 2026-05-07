(define (domain sleepover_party)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (time_found)
    (friends_asked)
    (list_made)
    (at_store)
    (supplies_bought)
    (food_made)
    (supplies_out)
  )

  (:durative-action find_time
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (time_found)))
  )

  (:durative-action ask_friends
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (time_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friends_asked)))
  )

  (:durative-action make_list
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (friends_asked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (list_made)))
  )

  (:durative-action drive_to_store
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (list_made)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_store)))
  )

  (:durative-action buy_supplies
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (at_store)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_bought)))
  )

  (:durative-action make_food
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (supplies_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (food_made)))
  )

  (:durative-action get_out_supplies
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (supplies_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_out)))
  )
)