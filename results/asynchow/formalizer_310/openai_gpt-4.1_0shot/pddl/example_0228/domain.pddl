(define (domain anxiety_ordering)
  (:requirements :durative-actions)
  (:predicates
    (order_over_phone_pending)
    (order_over_phone_done)
    (go_through_drive_thru_pending)
    (go_through_drive_thru_done)
    (ask_friend_to_order_pending)
    (ask_friend_to_order_done)
    (use_app_or_online_pending)
    (use_app_or_online_done)
    (receive_food_pending)
    (receive_food_done)
  )

  (:durative-action order_over_phone
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (order_over_phone_pending))
    :effect (and (at start (not (order_over_phone_pending))) (at end (order_over_phone_done)))
  )

  (:durative-action go_through_drive_thru
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (go_through_drive_thru_pending))
    :effect (and (at start (not (go_through_drive_thru_pending))) (at end (go_through_drive_thru_done)))
  )

  (:durative-action ask_friend_to_order
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (ask_friend_to_order_pending))
    :effect (and (at start (not (ask_friend_to_order_pending))) (at end (ask_friend_to_order_done)))
  )

  (:durative-action use_app_or_online
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (use_app_or_online_pending))
    :effect (and (at start (not (use_app_or_online_pending))) (at end (use_app_or_online_done)))
  )

  (:durative-action receive_food
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (receive_food_pending))
      (at start (order_over_phone_done))
      (at start (go_through_drive_thru_done))
      (at start (ask_friend_to_order_done))
      (at start (use_app_or_online_done))
    )
    :effect (and (at start (not (receive_food_pending))) (at end (receive_food_done)))
  )
)
