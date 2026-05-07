(define (domain haunted_house_setup)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (at_store)
    (aisles_searched)
    (supplies_bought)
    (design_ready)
    (tools_ready)
  )

  (:durative-action go_to_store
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_store)))
  )

  (:durative-action look_for_supplies
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (at_store)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (aisles_searched)))
  )

  (:durative-action buy_supplies
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (aisles_searched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (supplies_bought)))
  )

  (:durative-action design_layout
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (design_ready)))
  )

  (:durative-action get_tools
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (design_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tools_ready)))
  )
)