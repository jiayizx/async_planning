(define (domain make_batter)
  (:requirements :durative-actions)
  (:predicates
    (clean_bowls_pending) (clean_bowls_done)
    (measure_vanilla_pending) (measure_vanilla_done)
    (final_whisk_pending) (final_whisk_done)
    (sift_flour_pending) (sift_flour_done)
    (retrieve_ingredients_pending) (retrieve_ingredients_done)
    (preheat_griddle_pending) (preheat_griddle_done)
    (crack_eggs_pending) (crack_eggs_done)
    (melt_butter_pending) (melt_butter_done)
    (weigh_sugar_pending) (weigh_sugar_done)
    (separate_whites_pending) (separate_whites_done)
    (soften_cream_cheese_pending) (soften_cream_cheese_done)
    (measure_baking_powder_pending) (measure_baking_powder_done)
    (bring_milk_room_temp_pending) (bring_milk_room_temp_done)
    (mix_wet_dry_pending) (mix_wet_dry_done)
    (sanitize_workspace_pending) (sanitize_workspace_done)
    (dry_bowls_pending) (dry_bowls_done)
    (grate_nutmeg_pending) (grate_nutmeg_done)
    (fold_chips_pending) (fold_chips_done)
    (zest_lemon_pending) (zest_lemon_done)
    (prepare_garnishes_pending) (prepare_garnishes_done)
  )

  (:durative-action clean_bowls
     :parameters ()
     :duration (= ?duration 300)
     :condition (at start (clean_bowls_pending))
     :effect (and (at start (not (clean_bowls_pending))) (at end (clean_bowls_done))) )

  (:durative-action measure_vanilla
     :parameters ()
     :duration (= ?duration 30)
     :condition (and (at start (measure_vanilla_pending)) (at start (melt_butter_done)))
     :effect (and (at start (not (measure_vanilla_pending))) (at end (measure_vanilla_done))) )

  (:durative-action final_whisk
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (final_whisk_pending)) (at start (fold_chips_done)))
     :effect (and (at start (not (final_whisk_pending))) (at end (final_whisk_done))) )

  (:durative-action sift_flour
     :parameters ()
     :duration (= ?duration 180)
     :condition (and (at start (sift_flour_pending)) (at start (retrieve_ingredients_done)) (at start (sanitize_workspace_done)))
     :effect (and (at start (not (sift_flour_pending))) (at end (sift_flour_done))) )

  (:durative-action retrieve_ingredients
     :parameters ()
     :duration (= ?duration 600)
     :condition (at start (retrieve_ingredients_pending))
     :effect (and (at start (not (retrieve_ingredients_pending))) (at end (retrieve_ingredients_done))) )

  (:durative-action preheat_griddle
     :parameters ()
     :duration (= ?duration 480)
     :condition (and (at start (preheat_griddle_pending)) (at start (separate_whites_done)))
     :effect (and (at start (not (preheat_griddle_pending))) (at end (preheat_griddle_done))) )

  (:durative-action crack_eggs
     :parameters ()
     :duration (= ?duration 60)
     :condition (and (at start (crack_eggs_pending)) (at start (soften_cream_cheese_done)) (at start (measure_baking_powder_done)))
     :effect (and (at start (not (crack_eggs_pending))) (at end (crack_eggs_done))) )

  (:durative-action melt_butter
     :parameters ()
     :duration (= ?duration 45)
     :condition (and (at start (melt_butter_pending)) (at start (weigh_sugar_done)))
     :effect (and (at start (not (melt_butter_pending))) (at end (melt_butter_done))) )

  (:durative-action weigh_sugar
     :parameters ()
     :duration (= ?duration 60)
     :condition (and (at start (weigh_sugar_pending)) (at start (sift_flour_done)))
     :effect (and (at start (not (weigh_sugar_pending))) (at end (weigh_sugar_done))) )

  (:durative-action separate_whites
     :parameters ()
     :duration (= ?duration 240)
     :condition (and (at start (separate_whites_pending)) (at start (grate_nutmeg_done)))
     :effect (and (at start (not (separate_whites_pending))) (at end (separate_whites_done))) )

  (:durative-action soften_cream_cheese
     :parameters ()
     :duration (= ?duration 3600)
     :condition (and (at start (soften_cream_cheese_pending)) (at start (bring_milk_room_temp_done)))
     :effect (and (at start (not (soften_cream_cheese_pending))) (at end (soften_cream_cheese_done))) )

  (:durative-action measure_baking_powder
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (measure_baking_powder_pending)) (at start (sift_flour_done)))
     :effect (and (at start (not (measure_baking_powder_pending))) (at end (measure_baking_powder_done))) )

  (:durative-action bring_milk_room_temp
     :parameters ()
     :duration (= ?duration 1800)
     :condition (and (at start (bring_milk_room_temp_pending)) (at start (retrieve_ingredients_done)))
     :effect (and (at start (not (bring_milk_room_temp_pending))) (at end (bring_milk_room_temp_done))) )

  (:durative-action mix_wet_dry
     :parameters ()
     :duration (= ?duration 300)
     :condition (and (at start (mix_wet_dry_pending)) (at start (crack_eggs_done)) (at start (dry_bowls_done)))
     :effect (and (at start (not (mix_wet_dry_pending))) (at end (mix_wet_dry_done))) )

  (:durative-action sanitize_workspace
     :parameters ()
     :duration (= ?duration 900)
     :condition (and (at start (sanitize_workspace_pending)) (at start (soften_cream_cheese_done)))
     :effect (and (at start (not (sanitize_workspace_pending))) (at end (sanitize_workspace_done))) )

  (:durative-action dry_bowls
     :parameters ()
     :duration (= ?duration 120)
     :condition (and (at start (dry_bowls_pending)) (at start (clean_bowls_done)))
     :effect (and (at start (not (dry_bowls_pending))) (at end (dry_bowls_done))) )

  (:durative-action grate_nutmeg
     :parameters ()
     :duration (= ?duration 90)
     :condition (and (at start (grate_nutmeg_pending)) (at start (measure_vanilla_done)))
     :effect (and (at start (not (grate_nutmeg_pending))) (at end (grate_nutmeg_done))) )

  (:durative-action fold_chips
     :parameters ()
     :duration (= ?duration 180)
     :condition (and (at start (fold_chips_pending)) (at start (measure_vanilla_done)) (at start (mix_wet_dry_done)))
     :effect (and (at start (not (fold_chips_pending))) (at end (fold_chips_done))) )

  (:durative-action zest_lemon
     :parameters ()
     :duration (= ?duration 240)
     :condition (at start (zest_lemon_pending))
     :effect (and (at start (not (zest_lemon_pending))) (at end (zest_lemon_done))) )

  (:durative-action prepare_garnishes
     :parameters ()
     :duration (= ?duration 720)
     :condition (and (at start (prepare_garnishes_pending)) (at start (measure_vanilla_done)) (at start (separate_whites_done)))
     :effect (and (at start (not (prepare_garnishes_pending))) (at end (prepare_garnishes_done))) )
)
