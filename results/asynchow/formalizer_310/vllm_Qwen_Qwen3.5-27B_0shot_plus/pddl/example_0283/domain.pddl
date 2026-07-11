(define (domain shrimp_tempura_roll)
  (:requirements :durative-actions)
  
  (:predicates
    (prepare_shrimp_pending)
    (prepare_shrimp_done)
    (combine_egg_water_pending)
    (combine_egg_water_done)
    (add_flour_pending)
    (add_flour_done)
    (coat_shrimp_pending)
    (coat_shrimp_done)
    (dip_shrimp_pending)
    (dip_shrimp_done)
    (heat_oil_pending)
    (heat_oil_done)
    (fry_shrimp_pending)
    (fry_shrimp_done)
  )

  (:durative-action prepare_shrimp
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (prepare_shrimp_pending)))
    :effect (and (at start (not (prepare_shrimp_pending)))
                 (at end (prepare_shrimp_done)))
  )

  (:durative-action combine_egg_water
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (combine_egg_water_pending)))
    :effect (and (at start (not (combine_egg_water_pending)))
                 (at end (combine_egg_water_done)))
  )

  (:durative-action add_flour
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (add_flour_pending))
                    (at start (combine_egg_water_done)))
    :effect (and (at start (not (add_flour_pending)))
                 (at end (add_flour_done)))
  )

  (:durative-action coat_shrimp
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (coat_shrimp_pending))
                    (at start (prepare_shrimp_done)))
    :effect (and (at start (not (coat_shrimp_pending)))
                 (at end (coat_shrimp_done)))
  )

  (:durative-action dip_shrimp
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (dip_shrimp_pending))
                    (at start (add_flour_done))
                    (at start (coat_shrimp_done)))
    :effect (and (at start (not (dip_shrimp_pending)))
                 (at end (dip_shrimp_done)))
  )

  (:durative-action heat_oil
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (heat_oil_pending)))
    :effect (and (at start (not (heat_oil_pending)))
                 (at end (heat_oil_done)))
  )

  (:durative-action fry_shrimp
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (fry_shrimp_pending))
                    (at start (dip_shrimp_done))
                    (at start (heat_oil_done)))
    :effect (and (at start (not (fry_shrimp_pending)))
                 (at end (fry_shrimp_done)))
  )
)
