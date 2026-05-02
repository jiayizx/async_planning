(define (domain air_dry_thick_hair)
  (:requirements :durative-actions)
  (:predicates
    (cut_down_on_shampooing_your_hair_pending)
    (cut_down_on_shampooing_your_hair_done)
    (shampoo_only_your_roots_pending)
    (shampoo_only_your_roots_done)
    (comb_your_hair_in_the_shower_pending)
    (comb_your_hair_in_the_shower_done)
  )

  (:durative-action cut_down_on_shampooing_your_hair
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (cut_down_on_shampooing_your_hair_pending))
    :effect (and
      (at start (not (cut_down_on_shampooing_your_hair_pending)))
      (at end (cut_down_on_shampooing_your_hair_done))
    )
  )

  (:durative-action shampoo_only_your_roots
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (shampoo_only_your_roots_pending))
    :effect (and
      (at start (not (shampoo_only_your_roots_pending)))
      (at end (shampoo_only_your_roots_done))
    )
  )

  (:durative-action comb_your_hair_in_the_shower
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (comb_your_hair_in_the_shower_pending))
      (at start (shampoo_only_your_roots_done))
    )
    :effect (and
      (at start (not (comb_your_hair_in_the_shower_pending)))
      (at end (comb_your_hair_in_the_shower_done))
    )
  )
)
