(define (problem get_starting_weight)
  (:domain weight_measurement)
  
  (:init
    (buy_scale_pending)
    (place_scale_pending)
    (begin_undress_pending)
    (remove_shirt_pending)
    (remove_pants_pending)
    (stand_on_scale_pending)
  )

  (:goal (and
    (buy_scale_done)
    (place_scale_done)
    (begin_undress_done)
    (remove_shirt_done)
    (remove_pants_done)
    (stand_on_scale_done)
  ))
)
