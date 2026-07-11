(define (problem fundraiser_instance)
  (:domain fundraiser_planning)
  
  (:init
    (bake_sweets_pending)
    (setup_social_media_pending)
    (send_to_friends_pending)
    (collect_money_pending)
    (repeat_until_goal_pending)
    (setup_table_pending)
    (offer_goods_pending)
  )

  (:goal (and
    (bake_sweets_done)
    (setup_social_media_done)
    (send_to_friends_done)
    (collect_money_done)
    (repeat_until_goal_done)
    (setup_table_done)
    (offer_goods_done)
  ))
)
