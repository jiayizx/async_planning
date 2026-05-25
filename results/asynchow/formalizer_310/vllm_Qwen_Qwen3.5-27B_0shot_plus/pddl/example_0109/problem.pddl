(define (problem field-trip-jamestown)
  (:domain field-trip)
  
  (:init
    (get_permission_pending)
    (send_slips_pending)
    (schedule_driver_pending)
    (create_schedule_pending)
    (organize_groups_pending)
    (board_bus_pending)
    (head_to_jamestown_pending)
  )

  (:goal (and
    (get_permission_done)
    (send_slips_done)
    (schedule_driver_done)
    (create_schedule_done)
    (organize_groups_done)
    (board_bus_done)
    (head_to_jamestown_done)
  ))
)
