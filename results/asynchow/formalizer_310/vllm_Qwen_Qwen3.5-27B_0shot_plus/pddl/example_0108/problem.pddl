(define (problem yellowstone-trip-instance)
  (:domain yellowstone-trip)
  
  (:init
    (look_up_attractions_pending)
    (look_up_map_pending)
    (drive_to_yellowstone_pending)
    (go_to_entrance_pending)
    (visit_attractions_pending)
  )

  (:goal (and
    (look_up_attractions_done)
    (look_up_map_done)
    (drive_to_yellowstone_done)
    (go_to_entrance_done)
    (visit_attractions_done)
  ))
)
