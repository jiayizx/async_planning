(define (domain cook_beef_tongue)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete)
    (s2_complete)
    (s3_complete)
    (s4_complete)
    (s5_complete)
    (s6_complete)
    (s7_complete)
    (s8_complete)
    (s9_complete)
    (s10_complete)
    (s11_complete)
    (s12_complete)
    (s13_complete)
    (s14_complete)
    (s15_complete)
    (s16_complete)
    (s17_complete)
    (s18_complete)
    (s19_complete)
    (s20_complete)
    (s21_complete)
    (s22_complete)
    (s23_complete)
    (s24_complete)
    (s25_complete)
    (s26_complete)
    (s27_complete)
    (s28_complete)
    (s29_complete)
    (s30_complete)
  )

  (:durative-action step1_purchase_tongue
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_complete)))
  )

  (:durative-action step2_scrub_tongue
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (s10_complete)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_complete)))
  )

  (:durative-action step3_place_in_stockpot
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (s15_complete)) (at start (s24_complete)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_complete)))
  )

  (:durative-action step4_rest_before_slicing
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step4)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_complete)))
  )

  (:durative-action step5_fill_pot_with_water
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step5)) (at start (s3_complete)) (at start (s11_complete)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_complete)))
  )

  (:durative-action step6_add_bay_pepper
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step6)) (at start (s17_complete)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_complete)))
  )

  (:durative-action step7_bring_to_boil
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (s6_complete)) (at start (s23_complete)) (at start (s24_complete)) (at start (s27_complete)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_complete)))
  )

  (:durative-action step8_reduce_to_simmer
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (s26_complete)) (at start (s22_complete)) )
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_complete)))
  )

  (:durative-action step9_peel_halve_onions
    :duration (= ?duration 300)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_complete)))
  )

  (:durative-action step10_trim_fat_gristle
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step10)) (at start (s17_complete)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_complete)))
  )

  (:durative-action step11_chop_carrots_celery
    :duration (= ?duration 600)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_complete)))
  )

  (:durative-action step12_soak_in_brine
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step12)) (at start (s2_complete)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_complete)))
  )

  (:durative-action step13_measure_salt_cloves
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_complete)))
  )

  (:durative-action step14_toast_spices
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step14)) (at start (s13_complete)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_complete)))
  )

  (:durative-action step15_retrieve_dutch_oven
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step15)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_complete)))
  )

  (:durative-action step16_prepare_parsley_garnish
    :duration (= ?duration 300)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_complete)))
  )

  (:durative-action step17_defrost_in_refrigerator
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step17)) (at start (s1_complete)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_complete)))
  )

  (:durative-action step18_simmer_until_tender
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step18)) (at start (s7_complete)) (at start (s25_complete)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_complete)))
  )

  (:durative-action step19_remove_peel_skin
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step19)) (at start (s18_complete)) (at start (s16_complete)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_complete)))
  )

  (:durative-action step20_saute_aromatics
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step20)) (at start (s11_complete)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_complete)))
  )

  (:durative-action step21_whisk_mustard_sauce
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step21)) (at start (s13_complete)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_complete)))
  )

  (:durative-action step22_check_internal_temp
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step22)) (at start (s24_complete)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_complete)))
  )

  (:durative-action step23_skim_foam
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step23)) (at start (s8_complete)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_complete)))
  )

  (:durative-action step24_sharpen_knives
    :duration (= ?duration 600)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_complete)))
  )

  (:durative-action step25_add_onions_to_pot
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (s9_complete)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_complete)))
  )

  (:durative-action step26_position_lid_tightly
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step26)) (at start (s3_complete)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_complete)))
  )

  (:durative-action step27_set_timer_for_initial_boil
    :duration (= ?duration 60)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_complete)))
  )

  (:durative-action step28_carve_thin_slices
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step28)) (at start (s8_complete)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_complete)))
  )

  (:durative-action step29_organize_spice_rack
    :duration (= ?duration 900)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_complete)))
  )

  (:durative-action step30_clean_workspace
    :duration (= ?duration 900)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_complete)))
  )
)
