(define (domain bleach-odor-removal)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1_type step2_type step3_type step4_type step5_type
    step6_type step7_type step8_type step9_type step10_type
    step11_type step12_type step13_type step14_type step15_type
    step16_type step17_type step18_type step19_type step20_type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (lemon_juice_located)
    (lemon_juice_scrubbed)
    (hand_cream_applied)
    (baking_soda_paste_prepared)
    (cold_water_rinse_completed)
    (orange_sliced)
    (orange_peels_rubbed)
    (vinegar_dish_prepared)
    (warm_water_rinse_completed)
    (baking_soda_paste_massaged)
    (counter_wiped)
    (microfiber_towel_located)
    (dish_soap_wash_completed)
    (hands_patted_dry)
    (vinegar_fingertip_soak_completed)
    (hands_inspected)
    (air_drying_completed)
    (hands_submerged_in_vinegar)
    (stainless_spoon_rubbed)
    (lemon_juice_bottle_opened)
  )

  (:durative-action locate_lemon_juice
    :parameters (?s - step1_type)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lemon_juice_located))))

  (:durative-action scrub_lemon_juice
    :parameters (?s - step2_type)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (cold_water_rinse_completed))
      (at start (microfiber_towel_located))
      (at start (dish_soap_wash_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lemon_juice_scrubbed))))

  (:durative-action apply_hand_cream
    :parameters (?s - step3_type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (air_drying_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hand_cream_applied))))

  (:durative-action prepare_baking_soda_paste
    :parameters (?s - step4_type)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (baking_soda_paste_prepared))))

  (:durative-action rinse_with_cold_water
    :parameters (?s - step5_type)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cold_water_rinse_completed))))

  (:durative-action slice_orange
    :parameters (?s - step6_type)
    :duration (= ?duration 45)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (orange_sliced))))

  (:durative-action rub_orange_peels
    :parameters (?s - step7_type)
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending ?s))
      (at start (orange_sliced)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (orange_peels_rubbed))))

  (:durative-action prepare_vinegar_dish
    :parameters (?s - step8_type)
    :duration (= ?duration 20)
    :condition (and
      (at start (step_pending ?s))
      (at start (lemon_juice_bottle_opened)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vinegar_dish_prepared))))

  (:durative-action final_warm_water_rinse
    :parameters (?s - step9_type)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (vinegar_fingertip_soak_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (warm_water_rinse_completed))))

  (:durative-action massage_baking_soda_paste
    :parameters (?s - step10_type)
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending ?s))
      (at start (baking_soda_paste_prepared))
      (at start (stainless_spoon_rubbed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (baking_soda_paste_massaged))))

  (:durative-action wipe_counter
    :parameters (?s - step11_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (dish_soap_wash_completed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (counter_wiped))))

  (:durative-action locate_microfiber_towel
    :parameters (?s - step12_type)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (microfiber_towel_located))))

  (:durative-action wash_with_dish_soap
    :parameters (?s - step13_type)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dish_soap_wash_completed))))

  (:durative-action pat_hands_dry
    :parameters (?s - step14_type)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (orange_peels_rubbed))
      (at start (hands_inspected)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hands_patted_dry))))

  (:durative-action soak_fingertips_in_vinegar
    :parameters (?s - step15_type)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (hands_submerged_in_vinegar)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (vinegar_fingertip_soak_completed))))

  (:durative-action inspect_hands
    :parameters (?s - step16_type)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hands_inspected))))

  (:durative-action air_dry_hands
    :parameters (?s - step17_type)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (air_drying_completed))))

  (:durative-action submerge_hands_in_vinegar
    :parameters (?s - step18_type)
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending ?s))
      (at start (vinegar_dish_prepared)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (hands_submerged_in_vinegar))))

  (:durative-action rub_stainless_steel_spoon
    :parameters (?s - step19_type)
    :duration (= ?duration 90)
    :condition (and
      (at start (step_pending ?s))
      (at start (cold_water_rinse_completed))
      (at start (orange_sliced))
      (at start (orange_peels_rubbed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (stainless_spoon_rubbed))))

  (:durative-action open_lemon_juice_bottle
    :parameters (?s - step20_type)
    :duration (= ?duration 10)
    :condition (and
      (at start (step_pending ?s))
      (at start (lemon_juice_located)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (lemon_juice_bottle_opened))))
)