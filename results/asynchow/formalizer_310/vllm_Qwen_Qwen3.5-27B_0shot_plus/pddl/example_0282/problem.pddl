(define (problem whelp_large_breed_dogs)
  (:domain whelping_dogs)
  
  (:init
    (prepare_box_pending)
    (line_box_pending)
    (place_lamp_pending)
  )

  (:goal (and
    (prepare_box_done)
    (line_box_done)
    (place_lamp_done)
  ))
)
