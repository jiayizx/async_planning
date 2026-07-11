(define (problem make_pasta)
  (:domain pasta_making)
  
  (:init
    (go_to_store_pending)
    (buy_ingredients_pending)
    (drive_home_pending)
    (turn_on_stove_pending)
    (put_pots_pending)
    (take_out_board_pending)
  )

  (:goal (and
    (go_to_store_done)
    (buy_ingredients_done)
    (drive_home_done)
    (turn_on_stove_done)
    (put_pots_done)
    (take_out_board_done)
  ))
)
