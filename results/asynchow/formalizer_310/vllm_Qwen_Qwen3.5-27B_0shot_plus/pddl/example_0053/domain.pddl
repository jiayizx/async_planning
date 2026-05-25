(define (domain nature_retreat)
  (:requirements :durative-actions)
  
  (:predicates
    (take_week_off_pending)
    (take_week_off_done)
    (drive_to_park_pending)
    (drive_to_park_done)
    (hike_with_supplies_pending)
    (hike_with_supplies_done)
    (live_off_land_pending)
    (live_off_land_done)
    (stay_off_electronics_pending)
    (stay_off_electronics_done)
  )

  (:durative-action take_week_off
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (take_week_off_pending))
    :effect (and (at start (not (take_week_off_pending)))
                 (at end (take_week_off_done)))
  )

  (:durative-action drive_to_park
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (drive_to_park_pending))
                    (at start (take_week_off_done)))
    :effect (and (at start (not (drive_to_park_pending)))
                 (at end (drive_to_park_done)))
  )

  (:durative-action hike_with_supplies
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (hike_with_supplies_pending))
                    (at start (drive_to_park_done)))
    :effect (and (at start (not (hike_with_supplies_pending)))
                 (at end (hike_with_supplies_done)))
  )

  (:durative-action live_off_land
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (live_off_land_pending))
                    (at start (hike_with_supplies_done)))
    :effect (and (at start (not (live_off_land_pending)))
                 (at end (live_off_land_done)))
  )

  (:durative-action stay_off_electronics
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (stay_off_electronics_pending))
                    (at start (hike_with_supplies_done)))
    :effect (and (at start (not (stay_off_electronics_pending)))
                 (at end (stay_off_electronics_done)))
  )
)
