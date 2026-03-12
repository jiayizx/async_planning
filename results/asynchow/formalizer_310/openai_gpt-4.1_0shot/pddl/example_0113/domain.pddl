(define (domain cooking-knowhow)
  (:requirements :durative-actions)
  (:predicates
    (buy_food_items_pending)
    (buy_food_items_done)
    (look_up_videos_pending)
    (look_up_videos_done)
    (watch_videos_pending)
    (watch_videos_done)
    (cut_ingredients_pending)
    (cut_ingredients_done)
    (put_ingredients_together_pending)
    (put_ingredients_together_done)
  )

  (:durative-action buy_food_items
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (buy_food_items_pending))
    :effect (and (at start (not (buy_food_items_pending)))
                 (at end (buy_food_items_done)))
  )

  (:durative-action look_up_videos
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (look_up_videos_pending))
    :effect (and (at start (not (look_up_videos_pending)))
                 (at end (look_up_videos_done)))
  )

  (:durative-action watch_videos
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (watch_videos_pending))
                    (at start (look_up_videos_done)))
    :effect (and (at start (not (watch_videos_pending)))
                 (at end (watch_videos_done)))
  )

  (:durative-action cut_ingredients
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (cut_ingredients_pending))
                    (at start (buy_food_items_done)))
    :effect (and (at start (not (cut_ingredients_pending)))
                 (at end (cut_ingredients_done)))
  )

  (:durative-action put_ingredients_together
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (put_ingredients_together_pending))
                    (at start (cut_ingredients_done)))
    :effect (and (at start (not (put_ingredients_together_pending)))
                 (at end (put_ingredients_together_done)))
  )
)
