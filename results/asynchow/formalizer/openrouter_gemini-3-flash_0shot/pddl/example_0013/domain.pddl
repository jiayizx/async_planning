(define (domain pasta_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (at_store)
    (ingredients_bought)
    (at_home)
    (stove_on)
    (pots_placed)
    (tools_ready)
  )

  (:durative-action go_to_store
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_store)))
  )

  (:durative-action buy_ingredients
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (at_store)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ingredients_bought)))
  )

  (:durative-action drive_home
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (ingredients_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_home)))
  )

  (:durative-action turn_on_stove
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (at_home)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stove_on)))
  )

  (:durative-action place_pots
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (at_home)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pots_placed)))
  )

  (:durative-action prepare_tools
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (at_home)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tools_ready)))
  )
)