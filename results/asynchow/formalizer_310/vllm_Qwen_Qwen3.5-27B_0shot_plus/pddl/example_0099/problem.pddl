(define (problem watch_big_game_instance)
  (:domain watch_big_game)
  
  (:init
    (buy_snacks_pending)
    (change_clothes_pending)
    (sit_couch_pending)
    (put_snacks_bowls_pending)
    (turn_on_tv_pending)
    (put_bowls_table_pending)
    (flip_channel_pending)
  )

  (:goal (and
    (buy_snacks_done)
    (change_clothes_done)
    (sit_couch_done)
    (put_snacks_bowls_done)
    (turn_on_tv_done)
    (put_bowls_table_done)
    (flip_channel_done)
  ))
)
