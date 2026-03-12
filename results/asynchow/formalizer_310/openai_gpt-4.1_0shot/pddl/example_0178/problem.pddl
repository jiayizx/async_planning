(define (problem make_prison_tattoo_ink)
  (:domain prison_tattoo_ink)
  (:init
    (put_powder_pending)
    (add_water_pending)
    (finish_mixing_pending)
  )
  (:goal (and
    (put_powder_done)
    (add_water_done)
    (finish_mixing_done)
  ))
)
