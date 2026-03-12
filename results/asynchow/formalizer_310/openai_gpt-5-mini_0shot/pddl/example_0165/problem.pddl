(define (problem compute-rental-yield)
  (:domain rental-yield)
  (:init
    (total_pending)
    (value_pending)
    (compute_pending)
  )
  (:goal (and
    (total_done)
    (value_done)
    (compute_done)
  ))
)
