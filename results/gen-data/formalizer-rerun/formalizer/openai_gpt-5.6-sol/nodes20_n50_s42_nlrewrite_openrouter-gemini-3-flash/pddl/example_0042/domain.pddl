(define (domain make-batter)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (is_step16 ?s - step)
    (is_step17 ?s - step)
    (is_step18 ?s - step)
    (is_step19 ?s - step)
    (is_step20 ?s - step)
    (mixing_station_clean)
    (butter_melted)
    (batter_gently_stirred)
    (dry_ingredients_sifted)
    (measuring_tools_gathered)
    (griddle_preheated)
    (liquids_poured)
    (eggs_whisked)
    (flour_measured)
    (mixture_rested)
    (milk_measured)
    (baking_powder_and_salt_measured)
    (dairy_date_checked)
    (components_folded)
    (countertop_sanitized)
    (mixing_bowls_laid_out)
    (vanilla_added)
    (butter_mixture_whisked_in)
    (egg_whites_separated)
    (whisk_and_spatula_cleaned)
  )

  (:durative-action clean_mixing_station
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixing_station_clean)))
  )

  (:durative-action melt_unsalted_butter
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (eggs_whisked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_melted)))
  )

  (:durative-action gently_stir_final_batter
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (butter_mixture_whisked_in)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (batter_gently_stirred)))
  )

  (:durative-action sift_dry_ingredients
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (measuring_tools_gathered)) (at start (countertop_sanitized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dry_ingredients_sifted)))
  )

  (:durative-action gather_measuring_tools
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (measuring_tools_gathered)))
  )

  (:durative-action preheat_griddle
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (mixture_rested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (griddle_preheated)))
  )

  (:durative-action pour_liquids_into_dry_well
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (milk_measured)) (at start (baking_powder_and_salt_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (liquids_poured)))
  )

  (:durative-action whisk_eggs
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (flour_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eggs_whisked)))
  )

  (:durative-action measure_flour
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (dry_ingredients_sifted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (flour_measured)))
  )

  (:durative-action rest_mixture
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (vanilla_added)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixture_rested)))
  )

  (:durative-action measure_milk
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (dairy_date_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (milk_measured)))
  )

  (:durative-action measure_baking_powder_and_salt
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (dry_ingredients_sifted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (baking_powder_and_salt_measured)))
  )

  (:durative-action check_dairy_expiration
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (measuring_tools_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dairy_date_checked)))
  )

  (:durative-action fold_wet_and_dry_components
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (liquids_poured)) (at start (mixing_bowls_laid_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (components_folded)))
  )

  (:durative-action sanitize_countertop
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (milk_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (countertop_sanitized)))
  )

  (:durative-action lay_out_mixing_bowls
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (mixing_station_clean)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mixing_bowls_laid_out)))
  )

  (:durative-action add_vanilla_to_butter
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (butter_melted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vanilla_added)))
  )

  (:durative-action whisk_in_butter_mixture
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (butter_melted)) (at start (components_folded)) (at start (egg_whites_separated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (butter_mixture_whisked_in)))
  )

  (:durative-action separate_egg_whites
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (egg_whites_separated)))
  )

  (:durative-action clean_whisk_and_spatula
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (butter_melted)) (at start (mixture_rested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (whisk_and_spatula_cleaned)))
  )
)