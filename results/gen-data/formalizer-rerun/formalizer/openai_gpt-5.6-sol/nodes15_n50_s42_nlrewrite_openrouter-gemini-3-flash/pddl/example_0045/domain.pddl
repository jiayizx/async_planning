(define (domain cake-batter-pancakes)
  (:requirements :typing :durative-actions)
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
    (dry_ingredients_whisked)
    (flour_and_cake_mix_measured)
    (butter_melted)
    (butter_retrieved)
    (pancakes_cooked)
    (sprinkles_folded)
    (wet_and_dry_stirred)
    (equipment_retrieved)
    (batter_rested)
    (eggs_cracked)
    (eggs_beaten)
    (cocoa_sifted)
    (butter_milk_vanilla_combined)
    (wet_mixture_added_to_dry_base)
    (workspace_sanitized)
  )

  (:durative-action whisk_dry_ingredients
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (flour_and_cake_mix_measured))
      (at start (workspace_sanitized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dry_ingredients_whisked)))
  )

  (:durative-action measure_flour_and_cake_mix
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (equipment_retrieved)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flour_and_cake_mix_measured)))
  )

  (:durative-action melt_butter
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (butter_retrieved)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (butter_melted)))
  )

  (:durative-action retrieve_butter
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (butter_retrieved)))
  )

  (:durative-action pour_batter_on_griddle
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (batter_rested)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pancakes_cooked)))
  )

  (:durative-action fold_sprinkles
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s))
      (at start (wet_and_dry_stirred))
      (at start (butter_milk_vanilla_combined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sprinkles_folded)))
  )

  (:durative-action stir_wet_and_dry_ingredients
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (butter_milk_vanilla_combined)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wet_and_dry_stirred)))
  )

  (:durative-action retrieve_equipment
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (equipment_retrieved)))
  )

  (:durative-action rest_batter
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s))
      (at start (wet_mixture_added_to_dry_base)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (batter_rested)))
  )

  (:durative-action crack_eggs
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (workspace_sanitized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eggs_cracked)))
  )

  (:durative-action beat_eggs
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (equipment_retrieved))
      (at start (eggs_cracked)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (eggs_beaten)))
  )

  (:durative-action sift_cocoa
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (dry_ingredients_whisked))
      (at start (workspace_sanitized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cocoa_sifted)))
  )

  (:durative-action combine_butter_milk_vanilla
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (butter_melted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (butter_milk_vanilla_combined)))
  )

  (:durative-action add_wet_mixture_to_dry_base
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (eggs_cracked))
      (at start (cocoa_sifted)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wet_mixture_added_to_dry_base)))
  )

  (:durative-action sanitize_workspace
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (workspace_sanitized)))
  )
)