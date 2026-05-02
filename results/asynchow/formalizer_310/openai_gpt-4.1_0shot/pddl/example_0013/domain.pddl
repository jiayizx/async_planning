(define (domain pasta_mushroom)
  (:requirements :durative-actions)
  (:predicates
    (go_to_store_pending)
    (go_to_store_done)
    (buy_ingredients_pending)
    (buy_ingredients_done)
    (drive_home_pending)
    (drive_home_done)
    (turn_on_stove_pending)
    (turn_on_stove_done)
    (put_pots_on_stove_pending)
    (put_pots_on_stove_done)
    (take_out_board_and_knife_pending)
    (take_out_board_and_knife_done)
  )

  (:durative-action go_to_store
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (go_to_store_pending))
    :effect (and (at start (not (go_to_store_pending))) (at end (go_to_store_done)))
  )

  (:durative-action buy_ingredients
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (buy_ingredients_pending)) (at start (go_to_store_done)))
    :effect (and (at start (not (buy_ingredients_pending))) (at end (buy_ingredients_done)))
  )

  (:durative-action drive_home
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (drive_home_pending)) (at start (buy_ingredients_done)))
    :effect (and (at start (not (drive_home_pending))) (at end (drive_home_done)))
  )

  (:durative-action turn_on_stove
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (turn_on_stove_pending)) (at start (drive_home_done)))
    :effect (and (at start (not (turn_on_stove_pending))) (at end (turn_on_stove_done)))
  )

  (:durative-action put_pots_on_stove
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (put_pots_on_stove_pending)) (at start (drive_home_done)))
    :effect (and (at start (not (put_pots_on_stove_pending))) (at end (put_pots_on_stove_done)))
  )

  (:durative-action take_out_board_and_knife
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (take_out_board_and_knife_pending)) (at start (drive_home_done)))
    :effect (and (at start (not (take_out_board_and_knife_pending))) (at end (take_out_board_and_knife_done)))
  )
)
