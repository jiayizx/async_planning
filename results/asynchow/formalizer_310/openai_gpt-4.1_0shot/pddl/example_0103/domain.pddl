(define (domain find_restaurant)
  (:requirements :durative-actions)
  (:predicates
    (pick_up_device_pending)
    (pick_up_device_done)
    (search_restaurants_pending)
    (search_restaurants_done)
    (narrow_options_pending)
    (narrow_options_done)
    (look_menus_pending)
    (look_menus_done)
    (look_ratings_pending)
    (look_ratings_done)
    (look_pricing_pending)
    (look_pricing_done)
  )

  (:durative-action pick_up_device
    :parameters ()
    :duration (= ?duration 1)
    :condition (at start (pick_up_device_pending))
    :effect (and (at start (not (pick_up_device_pending))) (at end (pick_up_device_done)))
  )

  (:durative-action search_restaurants
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (search_restaurants_pending)) (at start (pick_up_device_done)))
    :effect (and (at start (not (search_restaurants_pending))) (at end (search_restaurants_done)))
  )

  (:durative-action narrow_options
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (narrow_options_pending)) (at start (search_restaurants_done)))
    :effect (and (at start (not (narrow_options_pending))) (at end (narrow_options_done)))
  )

  (:durative-action look_menus
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (look_menus_pending)) (at start (narrow_options_done)))
    :effect (and (at start (not (look_menus_pending))) (at end (look_menus_done)))
  )

  (:durative-action look_ratings
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (look_ratings_pending)) (at start (narrow_options_done)))
    :effect (and (at start (not (look_ratings_pending))) (at end (look_ratings_done)))
  )

  (:durative-action look_pricing
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (look_pricing_pending)) (at start (look_menus_done)) (at start (look_ratings_done)))
    :effect (and (at start (not (look_pricing_pending))) (at end (look_pricing_done)))
  )
)
