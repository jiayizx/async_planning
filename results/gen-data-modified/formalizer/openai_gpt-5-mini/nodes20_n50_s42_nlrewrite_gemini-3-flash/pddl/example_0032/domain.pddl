(define (domain care_orchid)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
    (step11_pending) (step11_done)
    (step12_pending) (step12_done)
    (step13_pending) (step13_done)
    (step14_pending) (step14_done)
    (step15_pending) (step15_done)
    (step16_pending) (step16_done)
    (step17_pending) (step17_done)
    (step18_pending) (step18_done)
    (step19_pending) (step19_done)
    (step20_pending) (step20_done)
  )

  (:durative-action step1_place_in_bright_indirect_sunlight
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step1_pending)) (at start (step5_done)) (at start (step7_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action step2_purchase_orchid_mix
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action step3_research_humidity_requirements
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action step4_wipe_leaves_with_damp_cloth
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step4_pending)) (at start (step8_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action step5_select_decorative_pot
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action step6_soak_bark_based_medium
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step6_pending)) (at start (step2_done)) (at start (step18_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action step7_setup_pebble_tray
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step7_pending)) (at start (step3_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action step8_inspect_leaves_for_pests
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step8_pending)) (at start (step12_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action step9_apply_balanced_fertilizer_half_strength
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step9_pending)) (at start (step14_done)) (at start (step17_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action step10_repot_into_fresh_damp_medium
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step10_pending)) (at start (step6_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action step11_sterilize_pruning_shears
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step11_pending)) (at start (step13_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action step12_gently_remove_from_old_container
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step12_pending)) (at start (step14_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action step13_locate_gardening_tool_kit
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step13_pending))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action step14_examine_root_system_for_rot
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step14_pending))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action step15_buy_moisture_meter
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step15_pending)) (at start (step2_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )

  (:durative-action step16_mist_aerial_roots_lightly
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step16_pending)) (at start (step19_done)))
    :effect (and (at start (not (step16_pending))) (at end (step16_done)))
  )

  (:durative-action step17_measure_out_orchid_food
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step17_pending))
    :effect (and (at start (not (step17_pending))) (at end (step17_done)))
  )

  (:durative-action step18_allow_newly_potted_to_settle_shaded
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step18_pending)) (at start (step20_done)))
    :effect (and (at start (not (step18_pending))) (at end (step18_done)))
  )

  (:durative-action step19_check_medium_dryness_with_finger
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step19_pending)) (at start (step4_done)))
    :effect (and (at start (not (step19_pending))) (at end (step19_done)))
  )

  (:durative-action step20_water_thoroughly_until_runoff
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step20_pending)) (at start (step16_done)))
    :effect (and (at start (not (step20_pending))) (at end (step20_done)))
  )
)
