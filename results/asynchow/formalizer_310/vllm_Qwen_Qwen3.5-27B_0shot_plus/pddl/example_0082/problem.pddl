(define (problem make_short_film)
  (:domain short_film_planning)
  
  (:init
    (go_to_car_pending)
    (get_camera_gear_pending)
    (drive_to_location_pending)
    (wait_for_actors_pending)
    (direct_actors_pending)
  )

  (:goal (and
    (go_to_car_done)
    (get_camera_gear_done)
    (drive_to_location_done)
    (wait_for_actors_done)
    (direct_actors_done)
  ))
)
