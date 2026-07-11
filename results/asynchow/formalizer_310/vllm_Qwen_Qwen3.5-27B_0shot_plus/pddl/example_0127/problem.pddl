(define (problem car_entry_problem)
  (:domain car_entry)
  
  (:init
    (grab_wallet_pending)
    (grab_keys_pending)
    (exit_garage_pending)
    (unlock_car_pending)
    (check_money_pending)
  )

  (:goal (and
    (grab_wallet_done)
    (grab_keys_done)
    (exit_garage_done)
    (unlock_car_done)
    (check_money_done)
  ))
)
