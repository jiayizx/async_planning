(define (domain go-into-nature)
  (:requirements :durative-actions)
  (:predicates
    (load_car_pending)
    (load_car_done)
    (research_trails_pending)
    (research_trails_done)
    (seal_tent_pending)
    (seal_tent_done)
    (pack_cooler_pending)
    (pack_cooler_done)
    (buy_pass_pending)
    (buy_pass_done)
    (dry_tent_pending)
    (dry_tent_done)
    (drive_trailhead_pending)
    (drive_trailhead_done)
    (check_weather_pending)
    (check_weather_done)
    (hike_campsite_pending)
    (hike_campsite_done)
    (buy_tent_pending)
    (buy_tent_done)
  )

  (:durative-action load_car
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (load_car_pending)) (at start (buy_pass_done)))
    :effect (and (at start (not (load_car_pending))) (at end (load_car_done)))
  )

  (:durative-action research_trails
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (research_trails_pending))
    :effect (and (at start (not (research_trails_pending))) (at end (research_trails_done)))
  )

  (:durative-action seal_tent
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (seal_tent_pending)) (at start (buy_tent_done)))
    :effect (and (at start (not (seal_tent_pending))) (at end (seal_tent_done)))
  )

  (:durative-action pack_cooler
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (pack_cooler_pending))
    :effect (and (at start (not (pack_cooler_pending))) (at end (pack_cooler_done)))
  )

  (:durative-action buy_pass
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (buy_pass_pending)) (at start (research_trails_done)))
    :effect (and (at start (not (buy_pass_pending))) (at end (buy_pass_done)))
  )

  (:durative-action dry_tent
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (dry_tent_pending)) (at start (seal_tent_done)))
    :effect (and (at start (not (dry_tent_pending))) (at end (dry_tent_done)))
  )

  (:durative-action drive_trailhead
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (drive_trailhead_pending)) (at start (pack_cooler_done)) (at start (check_weather_done)))
    :effect (and (at start (not (drive_trailhead_pending))) (at end (drive_trailhead_done)))
  )

  (:durative-action check_weather
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (check_weather_pending)) (at start (load_car_done)))
    :effect (and (at start (not (check_weather_pending))) (at end (check_weather_done)))
  )

  (:durative-action hike_campsite
    :parameters ()
    :duration (= ?duration 9000)
    :condition (and (at start (hike_campsite_pending)) (at start (drive_trailhead_done)))
    :effect (and (at start (not (hike_campsite_pending))) (at end (hike_campsite_done)))
  )

  (:durative-action buy_tent
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (buy_tent_pending))
    :effect (and (at start (not (buy_tent_pending))) (at end (buy_tent_done)))
  )
)
