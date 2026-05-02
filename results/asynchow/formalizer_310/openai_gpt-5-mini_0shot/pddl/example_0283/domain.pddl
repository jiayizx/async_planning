(define (domain shrimp-tempura)
  (:requirements :durative-actions)
  (:predicates
    (step1_prepare_shrimp_pending)
    (step1_prepare_shrimp_done)
    (step2_mix_egg_water_pending)
    (step2_mix_egg_water_done)
    (step3_add_flour_pending)
    (step3_add_flour_done)
    (step4_coat_shrimp_pending)
    (step4_coat_shrimp_done)
    (step5_dip_batter_pending)
    (step5_dip_batter_done)
    (step6_heat_oil_pending)
    (step6_heat_oil_done)
    (step7_fry_shrimp_pending)
    (step7_fry_shrimp_done)
  )

  (:durative-action step1_prepare_shrimp
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step1_prepare_shrimp_pending))
    :effect (and (at start (not (step1_prepare_shrimp_pending))) (at end (step1_prepare_shrimp_done)))
  )

  (:durative-action step2_mix_egg_water
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step2_mix_egg_water_pending))
    :effect (and (at start (not (step2_mix_egg_water_pending))) (at end (step2_mix_egg_water_done)))
  )

  (:durative-action step3_add_flour
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step3_add_flour_pending)) (at start (step2_mix_egg_water_done)))
    :effect (and (at start (not (step3_add_flour_pending))) (at end (step3_add_flour_done)))
  )

  (:durative-action step4_coat_shrimp
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step4_coat_shrimp_pending)) (at start (step1_prepare_shrimp_done)))
    :effect (and (at start (not (step4_coat_shrimp_pending))) (at end (step4_coat_shrimp_done)))
  )

  (:durative-action step5_dip_batter
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step5_dip_batter_pending)) (at start (step3_add_flour_done)) (at start (step4_coat_shrimp_done)))
    :effect (and (at start (not (step5_dip_batter_pending))) (at end (step5_dip_batter_done)))
  )

  (:durative-action step6_heat_oil
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step6_heat_oil_pending))
    :effect (and (at start (not (step6_heat_oil_pending))) (at end (step6_heat_oil_done)))
  )

  (:durative-action step7_fry_shrimp
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step7_fry_shrimp_pending)) (at start (step5_dip_batter_done)) (at start (step6_heat_oil_done)))
    :effect (and (at start (not (step7_fry_shrimp_pending))) (at end (step7_fry_shrimp_done)))
  )
)
