(define (domain watch_big_game)
  (:requirements :durative-actions)
  (:predicates
    (buy_snacks_pending)
    (buy_snacks_done)
    (change_clothes_pending)
    (change_clothes_done)
    (sit_couch_pending)
    (sit_couch_done)
    (snacks_in_bowls_pending)
    (snacks_in_bowls_done)
    (tv_on_pending)
    (tv_on_done)
    (bowls_on_table_pending)
    (bowls_on_table_done)
    (flip_channel_pending)
    (flip_channel_done)
  )

  (:durative-action buy_snacks
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (buy_snacks_pending))
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
    :condition (and (at start (sit_couch_pending)) (at start (change_clothes_done)) (at start (bowls_on_table_done)))
    :effect (and (at start (not (sit_couch_pending))) (at end (sit_couch_done)))
  )

  (:durative-action snacks_in_bowls
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (snacks_in_bowls_pending)) (at start (buy_snacks_done)))
    :effect (and (at start (not (snacks_in_bowls_pending))) (at end (snacks_in_bowls_done)))
  )

  (:durative-action tv_on
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (tv_on_pending)) (at start (buy_snacks_done)))
    :effect (and (at start (not (tv_on_pending))) (at end (tv_on_done)))
  )

  (:durative-action bowls_on_table
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (bowls_on_table_pending)) (at start (snacks_in_bowls_done)))
    :effect (and (at start (not (bowls_on_table_pending))) (at end (bowls_on_table_done)))
  )

  (:durative-action flip_channel
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (flip_channel_pending)) (at start (tv_on_done)))
    :effect (and (at start (not (flip_channel_pending))) (at end (flip_channel_done)))
  )
)
