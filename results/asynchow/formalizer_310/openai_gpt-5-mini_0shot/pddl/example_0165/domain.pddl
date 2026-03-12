(define (domain rental-yield)
  (:requirements :durative-actions)
  (:predicates
    (total_pending)
    (total_done)
    (value_pending)
    (value_done)
    (compute_pending)
    (compute_done)
  )

  (:durative-action total_income
    :parameters ()
    :duration (= ?duration 31536000) ; 1 year = 365 days in seconds
    :condition (at start (total_pending))
    :effect (and (at start (not (total_pending))) (at end (total_done)))
  )

  (:durative-action find_value
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (value_pending))
    :effect (and (at start (not (value_pending))) (at end (value_done)))
  )

  (:durative-action compute_yield
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (compute_pending)) (at start (total_done)) (at start (value_done)))
    :effect (and (at start (not (compute_pending))) (at end (compute_done)))
  )
)
