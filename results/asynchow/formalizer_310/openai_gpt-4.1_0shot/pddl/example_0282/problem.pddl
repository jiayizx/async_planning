(define (problem whelp_large_breed_dogs-problem)
  (:domain whelp_large_breed_dogs)
  (:init
    (prepare_whelping_box_pending)
    (line_whelping_box_pending)
    (place_heat_lamp_pending)
  )
  (:goal (and
    (prepare_whelping_box_done)
    (line_whelping_box_done)
    (place_heat_lamp_done)
  ))
)
