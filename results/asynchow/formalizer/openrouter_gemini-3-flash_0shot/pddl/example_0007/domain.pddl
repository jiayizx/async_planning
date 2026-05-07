(define (domain do_something_different)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (considered_normal)
    (plans_brainstormed)
    (plans_written)
    (plans_evaluated)
    (plan_selected)
  )

  (:durative-action consider_normal
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (considered_normal)))
  )

  (:durative-action brainstorm_plans
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (considered_normal)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plans_brainstormed)))
  )

  (:durative-action write_plans
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (plans_brainstormed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plans_written)))
  )

  (:durative-action evaluate_plans
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (plans_brainstormed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plans_evaluated)))
  )

  (:durative-action select_plan
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (plans_written)) (at start (plans_evaluated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plan_selected)))
  )
)