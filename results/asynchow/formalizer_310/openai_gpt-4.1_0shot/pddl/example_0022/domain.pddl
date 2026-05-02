(define (domain lasagna)
  (:requirements :durative-actions)
  (:predicates
    (go_to_store_pending)
    (go_to_store_done)
    (buy_noodles_pending)
    (buy_noodles_done)
    (buy_sauce_pending)
    (buy_sauce_done)
    (go_home_pending)
    (go_home_done)
    (assemble_ingredients_pending)
    (assemble_ingredients_done)
    (preheat_oven_pending)
    (preheat_oven_done)
    (cover_dish_pending)
    (cover_dish_done)
  )

  (:durative-action go_to_store
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (go_to_store_pending))
    :effect (and (at start (not (go_to_store_pending))) (at end (go_to_store_done)))
  )

  (:durative-action buy_noodles
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (buy_noodles_pending)) (at start (go_to_store_done)))
    :effect (and (at start (not (buy_noodles_pending))) (at end (buy_noodles_done)))
  )

  (:durative-action buy_sauce
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (buy_sauce_pending)) (at start (go_to_store_done)))
    :effect (and (at start (not (buy_sauce_pending))) (at end (buy_sauce_done)))
  )

  (:durative-action go_home
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (go_home_pending)) (at start (buy_noodles_done)) (at start (buy_sauce_done)))
    :effect (and (at start (not (go_home_pending))) (at end (go_home_done)))
  )

  (:durative-action assemble_ingredients
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (assemble_ingredients_pending)) (at start (go_home_done)))
    :effect (and (at start (not (assemble_ingredients_pending))) (at end (assemble_ingredients_done)))
  )

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (preheat_oven_pending)) (at start (go_home_done)))
    :effect (and (at start (not (preheat_oven_pending))) (at end (preheat_oven_done)))
  )

  (:durative-action cover_dish
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (cover_dish_pending)) (at start (go_home_done)))
    :effect (and (at start (not (cover_dish_pending))) (at end (cover_dish_done)))
  )
)
