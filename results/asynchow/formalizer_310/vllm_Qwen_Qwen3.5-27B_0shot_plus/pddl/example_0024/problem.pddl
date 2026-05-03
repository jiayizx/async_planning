(define (problem fishing_task)
  (:domain fishing_planning)
  
  (:init
    (search_regulations_pending)
    (get_license_pending)
    (buy_equipment_pending)
    (search_streams_pending)
    (drive_to_streams_pending)
    (unpack_equipment_pending)
    (cast_line_pending)
  )

  (:goal (and
    (search_regulations_done)
    (get_license_done)
    (buy_equipment_done)
    (search_streams_done)
    (drive_to_streams_done)
    (unpack_equipment_done)
    (cast_line_done)
  ))
)
