(define (problem create_prison_tattoo_ink_problem)
  (:domain create_prison_tattoo_ink)
  (:init
    (put_powder_pending)
    (add_water_pending)
    (mix_ink_pending)
  )
  (:goal (and
    (put_powder_done)
    (add_water_done)
    (mix_ink_done)
  ))
)
