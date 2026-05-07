(define (domain vacation_savings)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (budget_created)
    (extra_hours_worked)
    (grocery_spending_reduced)
    (alcohol_spending_stopped)
    (eating_out_reduced)
  )

  (:durative-action create_budget
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (budget_created)))
  )

  (:durative-action work_extra_hours
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (budget_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (extra_hours_worked)))
  )

  (:durative-action reduce_grocery_spending
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (budget_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grocery_spending_reduced)))
  )

  (:durative-action stop_alcohol_spending
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (budget_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (alcohol_spending_stopped)))
  )

  (:durative-action reduce_eating_out
    :parameters (?s - step)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (budget_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eating_out_reduced)))
  )
)