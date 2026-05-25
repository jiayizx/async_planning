(define (domain fundraiser_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (bake_sweets_pending)
    (bake_sweets_done)
    (setup_social_media_pending)
    (setup_social_media_done)
    (send_to_friends_pending)
    (send_to_friends_done)
    (collect_money_pending)
    (collect_money_done)
    (repeat_until_goal_pending)
    (repeat_until_goal_done)
    (setup_table_pending)
    (setup_table_done)
    (offer_goods_pending)
    (offer_goods_done)
  )

  (:durative-action bake_sweets
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (bake_sweets_pending))
    :effect (and (at start (not (bake_sweets_pending))) (at end (bake_sweets_done)))
  )

  (:durative-action setup_social_media
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (setup_social_media_pending))
    :effect (and (at start (not (setup_social_media_pending))) (at end (setup_social_media_done)))
  )

  (:durative-action send_to_friends
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (send_to_friends_pending)) (at start (setup_social_media_done)))
    :effect (and (at start (not (send_to_friends_pending))) (at end (send_to_friends_done)))
  )

  (:durative-action collect_money
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (collect_money_pending)) (at start (send_to_friends_done)) (at start (offer_goods_done)))
    :effect (and (at start (not (collect_money_pending))) (at end (collect_money_done)))
  )

  (:durative-action repeat_until_goal
    :parameters ()
    :duration (= ?duration 1728000)
    :condition (and (at start (repeat_until_goal_pending)) (at start (collect_money_done)))
    :effect (and (at start (not (repeat_until_goal_pending))) (at end (repeat_until_goal_done)))
  )

  (:durative-action setup_table
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (setup_table_pending)) (at start (bake_sweets_done)))
    :effect (and (at start (not (setup_table_pending))) (at end (setup_table_done)))
  )

  (:durative-action offer_goods
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (offer_goods_pending)) (at start (setup_table_done)))
    :effect (and (at start (not (offer_goods_pending))) (at end (offer_goods_done)))
  )
)
