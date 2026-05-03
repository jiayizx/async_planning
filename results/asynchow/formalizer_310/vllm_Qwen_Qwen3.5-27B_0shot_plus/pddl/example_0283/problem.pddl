(define (problem make_shrimp_tempura_roll)
  (:domain shrimp_tempura_roll)
  
  (:init
    (prepare_shrimp_pending)
    (combine_egg_water_pending)
    (add_flour_pending)
    (coat_shrimp_pending)
    (dip_shrimp_pending)
    (heat_oil_pending)
    (fry_shrimp_pending)
  )

  (:goal (and
    (prepare_shrimp_done)
    (combine_egg_water_done)
    (add_flour_done)
    (coat_shrimp_done)
    (dip_shrimp_done)
    (heat_oil_done)
    (fry_shrimp_done)
  ))
)
