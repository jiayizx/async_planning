(define (problem purchase_soil_problem)
  (:domain purchase_soil_domain)
  
  (:init
    (grab_wallet_pending)
    (grab_keys_pending)
    (exit_house_pending)
    (get_in_car_pending)
    (drive_to_store_pending)
  )

  (:goal (and
    (grab_wallet_done)
    (grab_keys_done)
    (exit_house_done)
    (get_in_car_done)
    (drive_to_store_done)
  ))
)
