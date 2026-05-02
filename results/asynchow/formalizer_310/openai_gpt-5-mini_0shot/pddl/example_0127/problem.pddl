(define (problem get_into_car_problem)
  (:domain get_into_car)
  (:init
    (grab_wallet_pending) (grab_keys_pending) (check_wallet_pending) (exit_garage_pending) (unlock_car_pending)
  )
  (:goal (and
    (grab_wallet_done)
    (grab_keys_done)
    (check_wallet_done)
    (exit_garage_done)
    (unlock_car_done)
  ))
)
