(define (problem amusement-park-instance)
  (:domain amusement-park)
  
  (:init
    (get_money_pending)
    (find_park_pending)
    (travel_to_park_pending)
    (purchase_pass_pending)
    (go_into_park_pending)
  )

  (:goal (and
    (get_money_done)
    (find_park_done)
    (travel_to_park_done)
    (purchase_pass_done)
    (go_into_park_done)
  ))
)