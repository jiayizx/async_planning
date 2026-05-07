(define (problem concert_instance)
  (:domain concert_planning)
  
  (:init
    (buy_tickets_pending)
    (get_dressed_pending)
    (style_hair_pending)
    (do_makeup_pending)
    (get_directions_pending)
    (drive_to_concert_pending)
  )

  (:goal (and
    (buy_tickets_done)
    (get_dressed_done)
    (style_hair_done)
    (do_makeup_done)
    (get_directions_done)
    (drive_to_concert_done)
  ))
)
