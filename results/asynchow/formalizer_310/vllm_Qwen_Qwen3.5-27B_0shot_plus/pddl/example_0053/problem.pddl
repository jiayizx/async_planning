(define (problem nature_retreat_problem)
  (:domain nature_retreat)
  
  (:init
    (take_week_off_pending)
    (drive_to_park_pending)
    (hike_with_supplies_pending)
    (live_off_land_pending)
    (stay_off_electronics_pending)
  )

  (:goal (and
    (take_week_off_done)
    (drive_to_park_done)
    (hike_with_supplies_done)
    (live_off_land_done)
    (stay_off_electronics_done)
  ))
)
