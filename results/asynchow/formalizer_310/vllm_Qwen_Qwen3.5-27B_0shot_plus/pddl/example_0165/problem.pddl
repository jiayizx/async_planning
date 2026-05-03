(define (problem rental_yield_task)
  (:domain rental_yield)
  
  (:init
    (income_totalled_pending)
    (property_valued_pending)
    (yield_calculated_pending)
  )

  (:goal (and
    (income_totalled_done)
    (property_valued_done)
    (yield_calculated_done)
  ))
)
