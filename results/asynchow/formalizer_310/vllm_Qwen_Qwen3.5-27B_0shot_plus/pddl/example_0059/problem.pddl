(define (problem weekend_night_task)
  (:domain weekend_night_planning)
  
  (:init
    (make_plan_pending)
    (call_friends_pending)
    (shop_groceries_pending)
    (fill_gas_pending)
    (pickup_friends_pending)
  )

  (:goal (and
    (make_plan_done)
    (call_friends_done)
    (shop_groceries_done)
    (fill_gas_done)
    (pickup_friends_done)
  ))
)
