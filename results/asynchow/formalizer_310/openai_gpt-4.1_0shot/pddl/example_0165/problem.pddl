(define (problem rental-yield-problem)
  (:domain rental-yield)
  (:init
    (rental_income_pending)
    (property_value_pending)
    (yield_calc_pending)
  )
  (:goal (and
    (rental_income_done)
    (property_value_done)
    (yield_calc_done)
  ))
)
