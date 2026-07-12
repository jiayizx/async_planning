(define (domain dinner-preparation)
  (:requirements :durative-actions :typing)
  (:types
    step - object
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type
    step16_type step17_type step18_type step19_type step20_type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (onions_garlic_chopped)
    (tomato_sauce_simmered)
    (canned_tomatoes_opened)
    (ground_beef_thawed)
    (basil_washed)
    (dining_table_set)
    (basil_minced)
    (vegetables_sauteed)
    (final_stew_combined)
    (pantry_ingredients_retrieved)
    (water_boiled)
    (parmesan_grated)
    (kitchen_knife_sharpened)
    (dutch_oven_preheated)
    (cheese_grater_located)
    (linen_napkins_ironed)
    (workstation_prepared)
    (kitchen_counter_cleaned)
    (sauce_reduced)
    (dried_spices_measured)
  )

  (:durative-action chop_onions_and_garlic
    :parameters (?s - step1_type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (kitchen_knife_sharpened))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (onions_garlic_chopped))
    )
  )

  (:durative-action simmer_tomato_sauce
    :parameters (?s - step2_type)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (canned_tomatoes_opened))
      (at start (basil_minced))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tomato_sauce_simmered))
    )
  )

  (:durative-action open_canned_tomatoes
    :parameters (?s - step3_type)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (canned_tomatoes_opened))
    )
  )

  (:durative-action thaw_ground_beef
    :parameters (?s - step4_type)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (ground_beef_thawed))
    )
  )

  (:durative-action wash_fresh_basil
    :parameters (?s - step5_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (pantry_ingredients_retrieved))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (basil_washed))
    )
  )

  (:durative-action set_dining_table
    :parameters (?s - step6_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (linen_napkins_ironed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dining_table_set))
    )
  )

  (:durative-action mince_basil_leaves
    :parameters (?s - step7_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (basil_washed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (basil_minced))
    )
  )

  (:durative-action saute_vegetables
    :parameters (?s - step8_type)
    :duration (= ?duration 480)
    :condition (and
      (at start (step_pending ?s))
      (at start (onions_garlic_chopped))
      (at start (pantry_ingredients_retrieved))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vegetables_sauteed))
    )
  )

  (:durative-action combine_final_stew
    :parameters (?s - step9_type)
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending ?s))
      (at start (onions_garlic_chopped))
      (at start (ground_beef_thawed))
      (at start (dutch_oven_preheated))
      (at start (sauce_reduced))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (final_stew_combined))
    )
  )

  (:durative-action retrieve_pantry_ingredients
    :parameters (?s - step10_type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (pantry_ingredients_retrieved))
    )
  )

  (:durative-action boil_water
    :parameters (?s - step11_type)
    :duration (= ?duration 720)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (water_boiled))
    )
  )

  (:durative-action grate_parmesan
    :parameters (?s - step12_type)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (cheese_grater_located))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (parmesan_grated))
    )
  )

  (:durative-action sharpen_kitchen_knife
    :parameters (?s - step13_type)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (workstation_prepared))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (kitchen_knife_sharpened))
    )
  )

  (:durative-action preheat_dutch_oven
    :parameters (?s - step14_type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dutch_oven_preheated))
    )
  )

  (:durative-action locate_cheese_grater
    :parameters (?s - step15_type)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cheese_grater_located))
    )
  )

  (:durative-action iron_linen_napkins
    :parameters (?s - step16_type)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (linen_napkins_ironed))
    )
  )

  (:durative-action prepare_workstation
    :parameters (?s - step17_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (ground_beef_thawed))
      (at start (water_boiled))
      (at start (kitchen_counter_cleaned))
      (at start (dried_spices_measured))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (workstation_prepared))
    )
  )

  (:durative-action clean_kitchen_counter
    :parameters (?s - step18_type)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (linen_napkins_ironed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (kitchen_counter_cleaned))
    )
  )

  (:durative-action reduce_sauce
    :parameters (?s - step19_type)
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending ?s))
      (at start (tomato_sauce_simmered))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sauce_reduced))
    )
  )

  (:durative-action measure_dried_spices
    :parameters (?s - step20_type)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (canned_tomatoes_opened))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dried_spices_measured))
    )
  )
)