(define (domain adventure)
  (:requirements :durative-actions)
  (:predicates
    (research_destinations_pending)
    (research_destinations_done)
    (book_permit_pending)
    (book_permit_done)
    (purchase_map_pending)
    (purchase_map_done)
    (pack_meals_pending)
    (pack_meals_done)
    (drive_trailhead_pending)
    (drive_trailhead_done)
    (study_map_pending)
    (study_map_done)
    (confirm_weather_pending)
    (confirm_weather_done)
    (review_safety_pending)
    (review_safety_done)
    (gear_check_pending)
    (gear_check_done)
    (buy_food_pending)
    (buy_food_done)
  )

  (:durative-action research_destinations
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (research_destinations_pending))
    :effect (and (at start (not (research_destinations_pending))) (at end (research_destinations_done)))
  )

  (:durative-action book_permit
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (book_permit_pending)) (at start (research_destinations_done)))
    :effect (and (at start (not (book_permit_pending))) (at end (book_permit_done)))
  )

  (:durative-action purchase_map
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (purchase_map_pending))
    :effect (and (at start (not (purchase_map_pending))) (at end (purchase_map_done)))
  )

  (:durative-action pack_meals
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pack_meals_pending)) (at start (buy_food_done)))
    :effect (and (at start (not (pack_meals_pending))) (at end (pack_meals_done)))
  )

  (:durative-action drive_trailhead
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (drive_trailhead_pending)) (at start (pack_meals_done)))
    :effect (and (at start (not (drive_trailhead_pending))) (at end (drive_trailhead_done)))
  )

  (:durative-action study_map
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (study_map_pending)) (at start (purchase_map_done)))
    :effect (and (at start (not (study_map_pending))) (at end (study_map_done)))
  )

  (:durative-action confirm_weather
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (confirm_weather_pending)) (at start (book_permit_done)))
    :effect (and (at start (not (confirm_weather_pending))) (at end (confirm_weather_done)))
  )

  (:durative-action review_safety
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (review_safety_pending)) (at start (study_map_done)))
    :effect (and (at start (not (review_safety_pending))) (at end (review_safety_done)))
  )

  (:durative-action gear_check
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (gear_check_pending)) (at start (review_safety_done)))
    :effect (and (at start (not (gear_check_pending))) (at end (gear_check_done)))
  )

  (:durative-action buy_food
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (buy_food_pending))
    :effect (and (at start (not (buy_food_pending))) (at end (buy_food_done)))
  )
)
