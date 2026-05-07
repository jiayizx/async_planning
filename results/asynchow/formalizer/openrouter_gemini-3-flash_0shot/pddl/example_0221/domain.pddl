(define (domain annualize_return)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (report_obtained)
    (rate_found)
    (periods_calculated)
  )

  (:durative-action obtain_report
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (report_obtained)))
  )

  (:durative-action find_rate
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (report_obtained)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rate_found)))
  )

  (:durative-action calculate_periods
    :parameters (?s - step)
    :duration (= ?duration 2592000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (periods_calculated)))
  )
)