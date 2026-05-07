(define (problem room_setup_problem)
  (:domain room_setup)
  
  (:init
    (put_couch_pending)
    (put_coffee_table_pending)
    (get_tv_pending)
    (put_waste_can_pending)
  )

  (:goal (and
    (put_couch_done)
    (put_coffee_table_done)
    (get_tv_done)
    (put_waste_can_done)
  ))
)
