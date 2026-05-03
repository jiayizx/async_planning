(define (problem rv_travel_problem)
  (:domain rv_travel)
  
  (:init
    (purchase_rv_pending)
    (pack_belongings_pending)
    (fill_food_pending)
    (fill_gas_pending)
    (set_out_pending)
  )

  (:goal (and
    (purchase_rv_done)
    (pack_belongings_done)
    (fill_food_done)
    (fill_gas_done)
    (set_out_done)
  ))
)
