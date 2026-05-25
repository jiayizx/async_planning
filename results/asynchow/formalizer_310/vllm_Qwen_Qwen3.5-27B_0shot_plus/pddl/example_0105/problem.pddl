(define (problem camping_trip)
  (:domain camping_planning)
  
  (:init
    (buy_camping_equipment_pending)
    (pick_camping_site_pending)
    (pack_camping_equipment_pending)
    (drive_to_camping_site_pending)
    (park_the_car_pending)
    (enter_camping_site_pending)
  )

  (:goal (and
    (buy_camping_equipment_done)
    (pick_camping_site_done)
    (pack_camping_equipment_done)
    (drive_to_camping_site_done)
    (park_the_car_done)
    (enter_camping_site_done)
  ))
)
