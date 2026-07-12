(define (domain dinner)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step) (is_step4 ?s - step)
    (is_step5 ?s - step) (is_step6 ?s - step) (is_step7 ?s - step) (is_step8 ?s - step)
    (is_step9 ?s - step) (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step) (is_step16 ?s - step)
    (is_step17 ?s - step) (is_step18 ?s - step) (is_step19 ?s - step) (is_step20 ?s - step)
    (is_step21 ?s - step) (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step) (is_step28 ?s - step)
    (is_step29 ?s - step) (is_step30 ?s - step) (is_step31 ?s - step) (is_step32 ?s - step)
    (is_step33 ?s - step) (is_step34 ?s - step) (is_step35 ?s - step) (is_step36 ?s - step)
    (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step) (is_step40 ?s - step)
    (plates_garnished) (wine_glasses_set) (marinade_prepared) (rolls_warmed)
    (protein_seared) (salad_tossed) (candles_lit) (dipping_oil_whisked)
    (lettuce_washed) (aromatics_diced) (napkins_folded) (knives_sharpened)
    (recipe_selected) (counter_cleared) (vegetables_bought) (store_reached)
    (table_set) (dinner_ready) (hot_food_plated) (water_poured)
    (steaks_marinated) (grocery_list_created) (oven_preheated) (aromatics_sauteed)
    (vegetables_chopped) (crudite_arranged) (pantry_checked) (wine_decanted)
    (dry_ingredients_measured) (dishwasher_emptied) (dressing_prepared) (spice_rack_organized)
    (apron_worn) (refrigerator_checked) (bowls_washed) (sauce_reduced)
    (boards_sanitized) (parmesan_grated) (peeler_retrieved) (tablecloth_retrieved)
  )

  (:durative-action garnish_plates
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (counter_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plates_garnished))))

  (:durative-action set_wine_glasses
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wine_glasses_set))))

  (:durative-action prepare_marinade
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (spice_rack_organized)) (at start (boards_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (marinade_prepared))))

  (:durative-action warm_rolls
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rolls_warmed))))

  (:durative-action sear_protein
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (aromatics_sauteed)) (at start (refrigerator_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (protein_seared))))

  (:durative-action toss_salad
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (lettuce_washed)) (at start (vegetables_chopped)) (at start (bowls_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (salad_tossed))))

  (:durative-action light_candles
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (candles_lit))))

  (:durative-action whisk_dipping_oil
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (vegetables_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dipping_oil_whisked))))

  (:durative-action wash_lettuce
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (vegetables_bought)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (lettuce_washed))))

  (:durative-action dice_aromatics
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (knives_sharpened)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (aromatics_diced))))

  (:durative-action fold_napkins
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (napkins_folded))))

  (:durative-action sharpen_knives
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knives_sharpened))))

  (:durative-action select_recipe
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (recipe_selected))))

  (:durative-action clear_counter
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (dishwasher_emptied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (counter_cleared))))

  (:durative-action buy_vegetables
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (store_reached)) (at start (refrigerator_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_bought))))

  (:durative-action drive_to_store
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (grocery_list_created)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (store_reached))))

  (:durative-action set_formal_table
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (napkins_folded)) (at start (tablecloth_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (table_set))))

  (:durative-action call_to_table
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (hot_food_plated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dinner_ready))))

  (:durative-action plate_hot_food
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (rolls_warmed)) (at start (protein_seared)) (at start (oven_preheated)) (at start (vegetables_chopped)) (at start (sauce_reduced)) (at start (parmesan_grated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hot_food_plated))))

  (:durative-action pour_water
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (candles_lit)) (at start (dressing_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (water_poured))))

  (:durative-action marinate_steaks
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (marinade_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (steaks_marinated))))

  (:durative-action create_grocery_list
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (grocery_list_created))))

  (:durative-action preheat_oven
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (counter_cleared)) (at start (dry_ingredients_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (oven_preheated))))

  (:durative-action saute_aromatics
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (aromatics_diced)) (at start (dressing_prepared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (aromatics_sauteed))))

  (:durative-action clean_chop_vegetables
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (marinade_prepared)) (at start (peeler_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vegetables_chopped))))

  (:durative-action arrange_crudite
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (vegetables_chopped)) (at start (bowls_washed)) (at start (peeler_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (crudite_arranged))))

  (:durative-action check_pantry
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (recipe_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pantry_checked))))

  (:durative-action decant_wine
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (wine_glasses_set)) (at start (marinade_prepared)) (at start (boards_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wine_decanted))))

  (:durative-action measure_dry_ingredients
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (marinade_prepared)) (at start (recipe_selected)) (at start (bowls_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dry_ingredients_measured))))

  (:durative-action empty_dishwasher
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dishwasher_emptied))))

  (:durative-action prepare_dressing
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)) (at start (vegetables_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dressing_prepared))))

  (:durative-action organize_spice_rack
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)) (at start (pantry_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spice_rack_organized))))

  (:durative-action put_on_apron
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)) (at start (counter_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (apron_worn))))

  (:durative-action check_refrigerator
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)) (at start (tablecloth_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (refrigerator_checked))))

  (:durative-action wash_bowls
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowls_washed))))

  (:durative-action reduce_sauce
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)) (at start (marinade_prepared)) (at start (oven_preheated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sauce_reduced))))

  (:durative-action sanitize_boards
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)) (at start (knives_sharpened)) (at start (dishwasher_emptied)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boards_sanitized))))

  (:durative-action grate_parmesan
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)) (at start (recipe_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parmesan_grated))))

  (:durative-action retrieve_peeler
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (peeler_retrieved))))

  (:durative-action retrieve_tablecloth
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tablecloth_retrieved))))
)