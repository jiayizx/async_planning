(define (domain chicken-curry)
  (:requirements :durative-actions)
  (:predicates
    (sear_chicken_pending)
    (sear_chicken_done)
    (dice_onions_pending)
    (dice_onions_done)
    (measure_spices_pending)
    (measure_spices_done)
    (simmer_curry_pending)
    (simmer_curry_done)
    (cube_potatoes_pending)
    (cube_potatoes_done)
    (wash_rice_pending)
    (wash_rice_done)
    (peel_ginger_pending)
    (peel_ginger_done)
    (chop_cilantro_pending)
    (chop_cilantro_done)
    (shake_coconut_pending)
    (shake_coconut_done)
    (toast_whole_spices_pending)
    (toast_whole_spices_done)
    (retrieve_ingredients_pending)
    (retrieve_ingredients_done)
    (soak_rice_pending)
    (soak_rice_done)
    (fluff_rice_pending)
    (fluff_rice_done)
    (ginger_garlic_paste_pending)
    (ginger_garlic_paste_done)
    (thaw_peas_pending)
    (thaw_peas_done)
    (cream_finish_pending)
    (cream_finish_done)
    (deglaze_pot_pending)
    (deglaze_pot_done)
    (set_table_pending)
    (set_table_done)
    (boil_rice_pending)
    (boil_rice_done)
    (heat_oil_pending)
    (heat_oil_done)
  )

  (:durative-action sear_chicken
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (sear_chicken_pending)) (at start (ginger_garlic_paste_done)))
    :effect (and (at start (not (sear_chicken_pending))) (at end (sear_chicken_done)))
  )

  (:durative-action dice_onions
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (dice_onions_pending)) (at start (peel_ginger_done)))
    :effect (and (at start (not (dice_onions_pending))) (at end (dice_onions_done)))
  )

  (:durative-action measure_spices
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (measure_spices_pending))
    :effect (and (at start (not (measure_spices_pending))) (at end (measure_spices_done)))
  )

  (:durative-action simmer_curry
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (simmer_curry_pending))
                    (at start (sear_chicken_done))
                    (at start (dice_onions_done))
                    (at start (measure_spices_done))
                    (at start (cube_potatoes_done))
                    (at start (chop_cilantro_done))
                    (at start (shake_coconut_done))
                    (at start (ginger_garlic_paste_done))
                    (at start (thaw_peas_done))
                    (at start (cream_finish_done))
                    (at start (deglaze_pot_done))
                    (at start (heat_oil_done))
    )
    :effect (and (at start (not (simmer_curry_pending))) (at end (simmer_curry_done)))
  )

  (:durative-action cube_potatoes
    :parameters ()
    :duration (= ?duration 360)
    :condition (at start (cube_potatoes_pending))
    :effect (and (at start (not (cube_potatoes_pending))) (at end (cube_potatoes_done)))
  )

  (:durative-action wash_rice
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (wash_rice_pending))
    :effect (and (at start (not (wash_rice_pending))) (at end (wash_rice_done)))
  )

  (:durative-action peel_ginger
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (peel_ginger_pending)) (at start (retrieve_ingredients_done)))
    :effect (and (at start (not (peel_ginger_pending))) (at end (peel_ginger_done)))
  )

  (:durative-action chop_cilantro
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (chop_cilantro_pending))
    :effect (and (at start (not (chop_cilantro_pending))) (at end (chop_cilantro_done)))
  )

  (:durative-action shake_coconut
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (shake_coconut_pending))
    :effect (and (at start (not (shake_coconut_pending))) (at end (shake_coconut_done)))
  )

  (:durative-action toast_whole_spices
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (toast_whole_spices_pending)) (at start (heat_oil_done)))
    :effect (and (at start (not (toast_whole_spices_pending))) (at end (toast_whole_spices_done)))
  )

  (:durative-action retrieve_ingredients
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (retrieve_ingredients_pending))
    :effect (and (at start (not (retrieve_ingredients_pending))) (at end (retrieve_ingredients_done)))
  )

  (:durative-action soak_rice
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (soak_rice_pending)) (at start (wash_rice_done)))
    :effect (and (at start (not (soak_rice_pending))) (at end (soak_rice_done)))
  )

  (:durative-action fluff_rice
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (fluff_rice_pending)) (at start (boil_rice_done)))
    :effect (and (at start (not (fluff_rice_pending))) (at end (fluff_rice_done)))
  )

  (:durative-action ginger_garlic_paste
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (ginger_garlic_paste_pending)) (at start (measure_spices_done)) (at start (toast_whole_spices_done)))
    :effect (and (at start (not (ginger_garlic_paste_pending))) (at end (ginger_garlic_paste_done)))
  )

  (:durative-action thaw_peas
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (thaw_peas_pending)) (at start (retrieve_ingredients_done)))
    :effect (and (at start (not (thaw_peas_pending))) (at end (thaw_peas_done)))
  )

  (:durative-action cream_finish
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (cream_finish_pending)) (at start (thaw_peas_done)))
    :effect (and (at start (not (cream_finish_pending))) (at end (cream_finish_done)))
  )

  (:durative-action deglaze_pot
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (deglaze_pot_pending)) (at start (sear_chicken_done)) (at start (cube_potatoes_done)))
    :effect (and (at start (not (deglaze_pot_pending))) (at end (deglaze_pot_done)))
  )

  (:durative-action set_table
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (set_table_pending)) (at start (shake_coconut_done)))
    :effect (and (at start (not (set_table_pending))) (at end (set_table_done)))
  )

  (:durative-action boil_rice
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (boil_rice_pending)) (at start (soak_rice_done)) (at start (heat_oil_done)))
    :effect (and (at start (not (boil_rice_pending))) (at end (boil_rice_done)))
  )

  (:durative-action heat_oil
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (heat_oil_pending)) (at start (chop_cilantro_done)))
    :effect (and (at start (not (heat_oil_pending))) (at end (heat_oil_done)))
  )
)
