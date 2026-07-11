(define (problem ice_skating_task)
  (:domain ice_skating)
  
  (:init
    (search_pending)
    (drive_pending)
    (rent_pending)
    (left_skate_pending)
    (right_skate_pending)
  )

  (:goal (and
    (search_done)
    (drive_done)
    (rent_done)
    (left_skate_done)
    (right_skate_done)
  ))
)