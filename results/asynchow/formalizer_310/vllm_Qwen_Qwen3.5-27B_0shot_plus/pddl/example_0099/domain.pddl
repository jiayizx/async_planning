(define (domain watch_big_game)
  (:requirements :durative-actions)
  
  (:predicates
    (buy_snacks_pending)
    (buy_snacks_done)
    (change_clothes_pending)
    (change_clothes_done)
    (sit_couch_pending)
    (sit_couch_done)
    (put_snacks_bowls_pending)
    (put_snacks_bowls_done)
    (turn_on_tv_pending)
    (turn_on_tv_done)
    (put_bowls_table_pending)
    (put_bowls_table_done)
    (flip_channel_pending)
    (flip_channel_done)
  )

  (:durative-action buy_snacks
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (buy_snacks_pending)))
    :effect (and (at start (not (buy_snacks_pending))) (at end (buy_snacks_done)))
  )

  (:durative-action change_clothes
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (change_clothes_pending)) (at start (buy_snacks_done)))
    :effect (and (at start (not (change_clothes_pending))) (at end (change_clothes_done)))
  )

  (:durative-action sit_couch
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (sit_couch_pending)) (at start (change_clothes_done)) (at start (put_bowls_table_done)))
    :effect (and (at start (not (sit_couch_pending))) (at end (sit_couch_done)))
  )

  (:durative-action put_snacks_bowls
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (put_snacks_bowls_pending)) (at start (buy_snacks_done)))
    :effect (and (at start (not (put_snacks_bowls_pending))) (at end (put_snacks_bowls_done)))
  )

  (:durative-action turn_on_tv
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (turn_on_tv_pending)) (at start (buy_snacks_done)))
    :effect (and (at start (not (turn_on_tv_pending))) (at end (turn_on_tv_done)))
  )

  (:durative-action put_bowls_table
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (put_bowls_table_pending)) (at start (put_snacks_bowls_done)))
    :effect (and (at start (not (put_bowls_table_pending))) (at end (put_bowls_table_done)))
  )

  (:durative-action flip_channel
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (flip_channel_pending)) (at start (turn_on_tv_done)))
    :effect (and (at start (not (flip_channel_pending))) (at end (flip_channel_done)))
  )
)
