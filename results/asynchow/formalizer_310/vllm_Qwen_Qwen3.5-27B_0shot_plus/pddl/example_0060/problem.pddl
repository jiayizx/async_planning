(define (problem move_out_task)
  (:domain move_out)
  
  (:init
    (pack_pending)
    (rent_pending)
    (load_pending)
    (start_veh_pending)
    (leave_pending)
  )

  (:goal (and
    (pack_done)
    (rent_done)
    (load_done)
    (start_veh_done)
    (leave_done)
  ))
)