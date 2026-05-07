(define (domain annualize-quarterly)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (obtained_report_done)
    (quarterly_rate_found)
    (periods_computed)
    (annualized)
  )

  ;; Step 1: Obtain the investment's quarterly report (1 week = 604800 seconds)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (obtained_report_done))
    )
  )

  ;; Step 2: Find the quarterly rate of return (86400 seconds)
  ;; Requires Step 1 to have been completed (obtained_report_done)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (obtained_report_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (quarterly_rate_found))
    )
  )

  ;; Step 3: Calculate how many time periods there are in a year (1 month = 2592000 seconds)
  ;; This step has no predecessors in the given ordering (only step1 -> step2 exists)
  ;; It produces the final semantic predicate 'annualized' so the goal requires this
  ;; and the planner cannot shorten the makespan by assigning the final predicate to a shorter step.
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (periods_computed))
      (at end (annualized))
    )
  )
)
