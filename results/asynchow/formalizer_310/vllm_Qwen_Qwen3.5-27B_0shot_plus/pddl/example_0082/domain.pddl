(define (domain short_film_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (go_to_car_pending)
    (go_to_car_done)
    (get_camera_gear_pending)
    (get_camera_gear_done)
    (drive_to_location_pending)
    (drive_to_location_done)
    (wait_for_actors_pending)
    (wait_for_actors_done)
    (direct_actors_pending)
    (direct_actors_done)
  )

  (:durative-action go_to_car
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (go_to_car_pending))
    :effect (and (at start (not (go_to_car_pending)))
                 (at end (go_to_car_done)))
  )

  (:durative-action get_camera_gear
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (get_camera_gear_pending))
                    (at start (drive_to_location_done)))
    :effect (and (at start (not (get_camera_gear_pending)))
                 (at end (get_camera_gear_done)))
  )

  (:durative-action drive_to_location
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (drive_to_location_pending))
                    (at start (go_to_car_done)))
    :effect (and (at start (not (drive_to_location_pending)))
                 (at end (drive_to_location_done)))
  )

  (:durative-action wait_for_actors
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (wait_for_actors_pending))
                    (at start (drive_to_location_done)))
    :effect (and (at start (not (wait_for_actors_pending)))
                 (at end (wait_for_actors_done)))
  )

  (:durative-action direct_actors
    :parameters ()
    :duration (= ?duration 28800)
    :condition (and (at start (direct_actors_pending))
                    (at start (wait_for_actors_done)))
    :effect (and (at start (not (direct_actors_pending)))
                 (at end (direct_actors_done)))
  )
)
