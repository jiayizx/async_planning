(define (domain dinner_prep)
  (:requirements :durative-actions)
  (:predicates
    (chop_vegetables_pending)
    (chop_vegetables_done)
    (sear_beef_pending)
    (sear_beef_done)
    (prepare_marinade_pending)
    (prepare_marinade_done)
    (set_table_pending)
    (set_table_done)
    (rinse_rice_pending)
    (rinse_rice_done)
    (fold_napkins_pending)
    (fold_napkins_done)
    (cook_rice_pending)
    (cook_rice_done)
    (stirfry_vegetables_pending)
    (stirfry_vegetables_done)
    (plate_meal_pending)
    (plate_meal_done)
    (measure_rice_pending)
    (measure_rice_done)
    (select_wine_pending)
    (select_wine_done)
    (polish_glassware_pending)
    (polish_glassware_done)
    (wash_cuttingboard_pending)
    (wash_cuttingboard_done)
    (light_candles_pending)
    (light_candles_done)
    (retrieve_wineglasses_pending)
    (retrieve_wineglasses_done)
    (locate_linens_pending)
    (locate_linens_done)
    (clear_counters_pending)
    (clear_counters_done)
    (iron_tablecloth_pending)
    (iron_tablecloth_done)
    (rest_meat_pending)
    (rest_meat_done)
    (whisk_sauce_pending)
    (whisk_sauce_done)
  )

  (:durative-action chop_vegetables
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (chop_vegetables_pending)) (at start (wash_cuttingboard_done)))
    :effect (and (at start (not (chop_vegetables_pending))) (at end (chop_vegetables_done)))
  )

  (:durative-action sear_beef
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (sear_beef_pending)) (at start (prepare_marinade_done)) (at start (cook_rice_done)))
    :effect (and (at start (not (sear_beef_pending))) (at end (sear_beef_done)))
  )

  (:durative-action prepare_marinade
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (prepare_marinade_pending))
    :effect (and (at start (not (prepare_marinade_pending))) (at end (prepare_marinade_done)))
  )

  (:durative-action set_table
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (set_table_pending))
    :effect (and (at start (not (set_table_pending))) (at end (set_table_done)))
  )

  (:durative-action rinse_rice
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (rinse_rice_pending)) (at start (measure_rice_done)))
    :effect (and (at start (not (rinse_rice_pending))) (at end (rinse_rice_done)))
  )

  (:durative-action fold_napkins
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (fold_napkins_pending)) (at start (locate_linens_done)))
    :effect (and (at start (not (fold_napkins_pending))) (at end (fold_napkins_done)))
  )

  (:durative-action cook_rice
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (cook_rice_pending)) (at start (rinse_rice_done)))
    :effect (and (at start (not (cook_rice_pending))) (at end (cook_rice_done)))
  )

  (:durative-action stirfry_vegetables
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (stirfry_vegetables_pending)) (at start (chop_vegetables_done)) (at start (measure_rice_done)))
    :effect (and (at start (not (stirfry_vegetables_pending))) (at end (stirfry_vegetables_done)))
  )

  (:durative-action plate_meal
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (plate_meal_pending)) (at start (chop_vegetables_done)) (at start (set_table_done)) (at start (light_candles_done)) (at start (rest_meat_done)))
    :effect (and (at start (not (plate_meal_pending))) (at end (plate_meal_done)))
  )

  (:durative-action measure_rice
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (measure_rice_pending))
    :effect (and (at start (not (measure_rice_pending))) (at end (measure_rice_done)))
  )

  (:durative-action select_wine
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (select_wine_pending))
    :effect (and (at start (not (select_wine_pending))) (at end (select_wine_done)))
  )

  (:durative-action polish_glassware
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (polish_glassware_pending)) (at start (retrieve_wineglasses_done)))
    :effect (and (at start (not (polish_glassware_pending))) (at end (polish_glassware_done)))
  )

  (:durative-action wash_cuttingboard
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (wash_cuttingboard_pending)) (at start (clear_counters_done)))
    :effect (and (at start (not (wash_cuttingboard_pending))) (at end (wash_cuttingboard_done)))
  )

  (:durative-action light_candles
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (light_candles_pending))
    :effect (and (at start (not (light_candles_pending))) (at end (light_candles_done)))
  )

  (:durative-action retrieve_wineglasses
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (retrieve_wineglasses_pending))
    :effect (and (at start (not (retrieve_wineglasses_pending))) (at end (retrieve_wineglasses_done)))
  )

  (:durative-action locate_linens
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (locate_linens_pending))
    :effect (and (at start (not (locate_linens_pending))) (at end (locate_linens_done)))
  )

  (:durative-action clear_counters
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (clear_counters_pending)) (at start (set_table_done)) (at start (select_wine_done)) (at start (iron_tablecloth_done)) (at start (whisk_sauce_done)))
    :effect (and (at start (not (clear_counters_pending))) (at end (clear_counters_done)))
  )

  (:durative-action iron_tablecloth
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (iron_tablecloth_pending)) (at start (locate_linens_done)))
    :effect (and (at start (not (iron_tablecloth_pending))) (at end (iron_tablecloth_done)))
  )

  (:durative-action rest_meat
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (rest_meat_pending)) (at start (sear_beef_done)))
    :effect (and (at start (not (rest_meat_pending))) (at end (rest_meat_done)))
  )

  (:durative-action whisk_sauce
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (whisk_sauce_pending)) (at start (prepare_marinade_done)))
    :effect (and (at start (not (whisk_sauce_pending))) (at end (whisk_sauce_done)))
  )
)
