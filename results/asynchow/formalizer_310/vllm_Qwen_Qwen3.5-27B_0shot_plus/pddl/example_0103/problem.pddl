(define (problem find_restaurant)
  (:domain restaurant_search)
  
  (:init
    (pick_up_device_pending)
    (search_nearby_pending)
    (narrow_options_pending)
    (look_menus_pending)
    (look_ratings_pending)
    (look_pricing_pending)
  )

  (:goal (and
    (pick_up_device_done)
    (search_nearby_done)
    (narrow_options_done)
    (look_menus_done)
    (look_ratings_done)
    (look_pricing_done)
  ))
)
