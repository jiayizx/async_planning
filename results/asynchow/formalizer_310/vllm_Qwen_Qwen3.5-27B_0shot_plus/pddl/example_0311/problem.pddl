(define (problem make_lavender_tea)
  (:domain lavender_tea)
  
  (:init
    (boil_water_pending)
    (prepare_lavender_pending)
    (steep_tea_pending)
  )

  (:goal (and
    (boil_water_done)
    (prepare_lavender_done)
    (steep_tea_done)
  ))
)
