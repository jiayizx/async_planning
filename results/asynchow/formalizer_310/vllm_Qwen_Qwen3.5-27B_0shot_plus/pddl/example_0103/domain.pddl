(define (domain restaurant_search)
  (:requirements :durative-actions)
  
  (:predicates
    (pick_up_device_pending)
    (pick_up_device_done)
    (search_nearby_pending)
    (search_nearby_done)
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
    :condition (and (at start (pick_up_device_pending)))
    :effect (and (at start (not (pick_up_device_pending)))
                 (at end (pick_up_device_done)))
  )

  (:durative-action search_nearby
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (search_nearby_pending))
                    (at start (pick_up_device_done)))
    :effect (and (at start (not (search_nearby_pending)))
                 (at end (search_nearby_done)))
  )

  (:durative-action narrow_options
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (narrow_options_pending))
                    (at start (search_nearby_done)))
    :effect (and (at start (not (narrow_options_pending)))
                 (at end (narrow_options_done)))
  )

  (:durative-action look_menus
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (look_menus_pending))
                    (at start (narrow_options_done)))
    :effect (and (at start (not (look_menus_pending)))
                 (at end (look_menus_done)))
  )

  (:durative-action look_ratings
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (look_ratings_pending))
                    (at start (narrow_options_done)))
    :effect (and (at start (not (look_ratings_pending)))
                 (at end (look_ratings_done)))
  )

  (:durative-action look_pricing
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (look_pricing_pending))
                    (at start (look_menus_done))
                    (at start (look_ratings_done)))
    :effect (and (at start (not (look_pricing_pending)))
                 (at end (look_pricing_done)))
  )
)
