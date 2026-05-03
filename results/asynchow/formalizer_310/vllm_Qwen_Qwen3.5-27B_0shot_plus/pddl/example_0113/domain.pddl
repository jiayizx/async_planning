(define (domain cooking_domain)
    (:requirements :durative-actions)
    
    (:predicates
        (buy_food_pending)
        (buy_food_done)
        (lookup_videos_pending)
        (lookup_videos_done)
        (watch_videos_pending)
        (watch_videos_done)
        (cut_ingredients_pending)
        (cut_ingredients_done)
        (assemble_ingredients_pending)
        (assemble_ingredients_done)
    )

    (:durative-action buy_food
        :parameters ()
        :duration (= ?duration 1200)
        :condition (at start (buy_food_pending))
        :effect (and (at start (not (buy_food_pending))) (at end (buy_food_done)))
    )

    (:durative-action lookup_videos
        :parameters ()
        :duration (= ?duration 600)
        :condition (at start (lookup_videos_pending))
        :effect (and (at start (not (lookup_videos_pending))) (at end (lookup_videos_done)))
    )

    (:durative-action watch_videos
        :parameters ()
        :duration (= ?duration 600)
        :condition (and (at start (watch_videos_pending)) (at start (lookup_videos_done)))
        :effect (and (at start (not (watch_videos_pending))) (at end (watch_videos_done)))
    )

    (:durative-action cut_ingredients
        :parameters ()
        :duration (= ?duration 900)
        :condition (and (at start (cut_ingredients_pending)) (at start (buy_food_done)))
        :effect (and (at start (not (cut_ingredients_pending))) (at end (cut_ingredients_done)))
    )

    (:durative-action assemble_ingredients
        :parameters ()
        :duration (= ?duration 300)
        :condition (and (at start (assemble_ingredients_pending)) (at start (cut_ingredients_done)))
        :effect (and (at start (not (assemble_ingredients_pending))) (at end (assemble_ingredients_done)))
    )
)
