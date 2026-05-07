(define (problem buy_beer_task)
  (:domain beer_buying)
  
  (:init
    (get_into_car_pending)
    (count_money_pending)
    (give_money_pending)
    (drive_to_store_pending)
    (show_id_pending)
  )

  (:goal (and
    (get_into_car_done)
    (count_money_done)
    (give_money_done)
    (drive_to_store_done)
    (show_id_done)
  ))
)
