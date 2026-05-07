(define (domain prison_escape)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (plans_obtained)
    (schedule_learned)
    (spoon_stolen)
    (tunnel_dug)
    (escaped)
  )

  (:durative-action get_plans
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plans_obtained)))
  )

  (:durative-action watch_guards
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (schedule_learned)))
  )

  (:durative-action steal_spoon
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spoon_stolen)))
  )

  (:durative-action dig_tunnel
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (plans_obtained)) (at start (spoon_stolen)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tunnel_dug)))
  )

  (:durative-action run_tunnel
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (schedule_learned)) (at start (tunnel_dug)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (escaped)))
  )
)