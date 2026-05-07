(define (domain rental_yield_calculation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (income_totaled)
    (value_found)
    (yield_calculated)
  )

  (:durative-action total_income
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (income_totaled))
    )
  )

  (:durative-action find_value
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (value_found))
    )
  )

  (:durative-action calculate_yield
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (income_totaled))
      (at start (value_found))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (yield_calculated))
    )
  )
)