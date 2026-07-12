(define (domain pumpkin-dog-treats)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_done ?s - step)
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)
    (step6_pending)
    (step7_pending)
    (step8_pending)
    (step9_pending)
    (step10_pending)
    (step11_pending)
    (step12_pending)
    (step13_pending)
    (step14_pending)
    (step15_pending)
    (pumpkin_and_eggs_whisked)
    (dough_kneaded)
    (oven_preheated)
    (wet_and_dry_ingredients_mixed)
    (baking_equipment_gathered)
    (peanut_butter_stirred_in)
    (flour_sifted)
    (baking_pans_greased)
    (canned_pumpkin_retrieved)
    (dough_cut_into_bones)
    (cooling_rack_lined)
    (oven_at_target_temperature)
    (cut_treats_placed_on_sheets)
    (treats_baked)
    (workspace_cleared)
  )

  (:durative-action whisk_pumpkin_and_eggs
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step1_pending))
      (at start (canned_pumpkin_retrieved)))
    :effect (and
      (at start (not (step1_pending)))
      (at end (step_done step1))
      (at end (pumpkin_and_eggs_whisked))))

  (:durative-action knead_dough
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step2_pending))
      (at start (wet_and_dry_ingredients_mixed)))
    :effect (and
      (at start (not (step2_pending)))
      (at end (step_done step2))
      (at end (dough_kneaded))))

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step3_pending))
    :effect (and
      (at start (not (step3_pending)))
      (at end (step_done step3))
      (at end (oven_preheated))))

  (:durative-action mix_wet_into_dry
    :parameters ()
    :duration (= ?duration 480)
    :condition (and
      (at start (step4_pending))
      (at start (flour_sifted)))
    :effect (and
      (at start (not (step4_pending)))
      (at end (step_done step4))
      (at end (wet_and_dry_ingredients_mixed))))

  (:durative-action gather_baking_equipment
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step5_pending))
    :effect (and
      (at start (not (step5_pending)))
      (at end (step_done step5))
      (at end (baking_equipment_gathered))))

  (:durative-action stir_in_peanut_butter
    :parameters ()
    :duration (= ?duration 120)
    :condition (and
      (at start (step6_pending))
      (at start (pumpkin_and_eggs_whisked)))
    :effect (and
      (at start (not (step6_pending)))
      (at end (step_done step6))
      (at end (peanut_butter_stirred_in))))

  (:durative-action sift_flour
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step7_pending))
    :effect (and
      (at start (not (step7_pending)))
      (at end (step_done step7))
      (at end (flour_sifted))))

  (:durative-action grease_baking_pans
    :parameters ()
    :duration (= ?duration 180)
    :condition (and
      (at start (step8_pending))
      (at start (baking_equipment_gathered))
      (at start (peanut_butter_stirred_in)))
    :effect (and
      (at start (not (step8_pending)))
      (at end (step_done step8))
      (at end (baking_pans_greased))))

  (:durative-action retrieve_canned_pumpkin
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step9_pending))
    :effect (and
      (at start (not (step9_pending)))
      (at end (step_done step9))
      (at end (canned_pumpkin_retrieved))))

  (:durative-action cut_dough_into_bones
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and
      (at start (step10_pending))
      (at start (canned_pumpkin_retrieved))
      (at start (workspace_cleared)))
    :effect (and
      (at start (not (step10_pending)))
      (at end (step_done step10))
      (at end (dough_cut_into_bones))))

  (:durative-action line_cooling_rack
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step11_pending))
    :effect (and
      (at start (not (step11_pending)))
      (at end (step_done step11))
      (at end (cooling_rack_lined))))

  (:durative-action let_oven_reach_temperature
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (step12_pending))
      (at start (oven_preheated)))
    :effect (and
      (at start (not (step12_pending)))
      (at end (step_done step12))
      (at end (oven_at_target_temperature))))

  (:durative-action place_treats_on_sheets
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step13_pending))
      (at start (dough_cut_into_bones))
      (at start (cooling_rack_lined)))
    :effect (and
      (at start (not (step13_pending)))
      (at end (step_done step13))
      (at end (cut_treats_placed_on_sheets))))

  (:durative-action bake_treats
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (step14_pending))
      (at start (cut_treats_placed_on_sheets)))
    :effect (and
      (at start (not (step14_pending)))
      (at end (step_done step14))
      (at end (treats_baked))))

  (:durative-action clear_workspace
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
      (at start (step15_pending))
      (at start (baking_equipment_gathered)))
    :effect (and
      (at start (not (step15_pending)))
      (at end (step_done step15))
      (at end (workspace_cleared))))
)