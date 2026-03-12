(define (problem air_dry_thick_hair_p)
  (:domain air_dry_thick_hair)
  (:init
    (cut_down_on_shampooing_your_hair_pending)
    (shampoo_only_your_roots_pending)
    (comb_your_hair_in_the_shower_pending)
  )
  (:goal (and
    (cut_down_on_shampooing_your_hair_done)
    (shampoo_only_your_roots_done)
    (comb_your_hair_in_the_shower_done)
  ))
)
