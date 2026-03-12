(define (domain cucumber_sandwich)
  (:requirements :durative-actions)
  (:predicates
    (s1_pending) (s1_done)
    (s2_pending) (s2_done)
    (s3_pending) (s3_done)
    (s4_pending) (s4_done)
    (s5_pending) (s5_done)
    (s6_pending) (s6_done)
    (s7_pending) (s7_done)
    (s8_pending) (s8_done)
    (s9_pending) (s9_done)
    (s10_pending) (s10_done)
    (s11_pending) (s11_done)
    (s12_pending) (s12_done)
    (s13_pending) (s13_done)
    (s14_pending) (s14_done)
    (s15_pending) (s15_done)
    (s16_pending) (s16_done)
    (s17_pending) (s17_done)
    (s18_pending) (s18_done)
    (s19_pending) (s19_done)
    (s20_pending) (s20_done)
    (s21_pending) (s21_done)
    (s22_pending) (s22_done)
    (s23_pending) (s23_done)
    (s24_pending) (s24_done)
    (s25_pending) (s25_done)
    (s26_pending) (s26_done)
    (s27_pending) (s27_done)
    (s28_pending) (s28_done)
    (s29_pending) (s29_done)
    (s30_pending) (s30_done)
    (s31_pending) (s31_done)
    (s32_pending) (s32_done)
    (s33_pending) (s33_done)
    (s34_pending) (s34_done)
    (s35_pending) (s35_done)
    (s36_pending) (s36_done)
    (s37_pending) (s37_done)
    (s38_pending) (s38_done)
    (s39_pending) (s39_done)
    (s40_pending) (s40_done)
  )

  (:durative-action step1_season_cucumbers
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s1_pending)) (at start (s7_done)) (at start (s27_done)))
    :effect (and (at start (not (s1_pending))) (at end (s1_done)))
  )

  (:durative-action step2_toast_bread
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (s2_pending))
    :effect (and (at start (not (s2_pending))) (at end (s2_done)))
  )

  (:durative-action step3_soften_cream_cheese
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (s3_pending))
    :effect (and (at start (not (s3_pending))) (at end (s3_done)))
  )

  (:durative-action step4_chop_dill
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s4_pending)) (at start (s8_done)))
    :effect (and (at start (not (s4_pending))) (at end (s4_done)))
  )

  (:durative-action step5_slice_cucumber_thin
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (s5_pending)) (at start (s30_done)) (at start (s37_done)))
    :effect (and (at start (not (s5_pending))) (at end (s5_done)))
  )

  (:durative-action step6_wash_cucumber
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s6_pending)) (at start (s9_done)) (at start (s13_done)) (at start (s36_done)))
    :effect (and (at start (not (s6_pending))) (at end (s6_done)))
  )

  (:durative-action step7_select_cucumber
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (s7_pending))
    :effect (and (at start (not (s7_pending))) (at end (s7_done)))
  )

  (:durative-action step8_rinse_herbs
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (s8_pending)) (at start (s37_done)))
    :effect (and (at start (not (s8_pending))) (at end (s8_done)))
  )

  (:durative-action step9_retrieve_cutting_board
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (s9_pending))
    :effect (and (at start (not (s9_pending))) (at end (s9_done)))
  )

  (:durative-action step10_spread_cream_cheese
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s10_pending)) (at start (s38_done)))
    :effect (and (at start (not (s10_pending))) (at end (s10_done)))
  )

  (:durative-action step11_take_butter_knife
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (s11_pending))
    :effect (and (at start (not (s11_pending))) (at end (s11_done)))
  )

  (:durative-action step12_peel_cucumber
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s12_pending)) (at start (s6_done)) (at start (s35_done)))
    :effect (and (at start (not (s12_pending))) (at end (s12_done)))
  )

  (:durative-action step13_clear_counter
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (s13_pending))
    :effect (and (at start (not (s13_pending))) (at end (s13_done)))
  )

  (:durative-action step14_pat_dry_slices
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s14_pending)) (at start (s16_done)) (at start (s35_done)))
    :effect (and (at start (not (s14_pending))) (at end (s14_done)))
  )

  (:durative-action step15_whip_cream_cheese
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (s15_pending)) (at start (s3_done)) (at start (s17_done)) (at start (s22_done)) (at start (s36_done)))
    :effect (and (at start (not (s15_pending))) (at end (s15_done)))
  )

  (:durative-action step16_slice_crusts_off
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s16_pending)) (at start (s6_done)) (at start (s28_done)))
    :effect (and (at start (not (s16_pending))) (at end (s16_done)))
  )

  (:durative-action step17_dry_cucumber_after_wash
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s17_pending)) (at start (s6_done)))
    :effect (and (at start (not (s17_pending))) (at end (s17_done)))
  )

  (:durative-action step18_mix_dill_into_cream_cheese
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s18_pending)) (at start (s25_done)) (at start (s34_done)))
    :effect (and (at start (not (s18_pending))) (at end (s18_done)))
  )

  (:durative-action step19_set_knife_aside
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (s19_pending)) (at start (s11_done)) (at start (s28_done)))
    :effect (and (at start (not (s19_pending))) (at end (s19_done)))
  )

  (:durative-action step20_layer_cucumber_slices
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s20_pending)) (at start (s29_done)))
    :effect (and (at start (not (s20_pending))) (at end (s20_done)))
  )

  (:durative-action step21_place_cucumber_on_counter
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (s21_pending)) (at start (s7_done)))
    :effect (and (at start (not (s21_pending))) (at end (s21_done)))
  )

  (:durative-action step22_measure_cream_cheese
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s22_pending)) (at start (s26_done)))
    :effect (and (at start (not (s22_pending))) (at end (s22_done)))
  )

  (:durative-action step23_place_toasted_bread_on_plate
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (s23_pending)) (at start (s2_done)) (at start (s12_done)))
    :effect (and (at start (not (s23_pending))) (at end (s23_done)))
  )

  (:durative-action step24_cut_sandwich_into_triangles
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s24_pending)) (at start (s33_done)))
    :effect (and (at start (not (s24_pending))) (at end (s24_done)))
  )

  (:durative-action step25_assemble_sandwich_halves
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (s25_pending)) (at start (s11_done)) (at start (s21_done)) (at start (s33_done)) (at start (s34_done)))
    :effect (and (at start (not (s25_pending))) (at end (s25_done)))
  )

  (:durative-action step26_open_cream_cheese_container
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (s26_pending)) (at start (s32_done)))
    :effect (and (at start (not (s26_pending))) (at end (s26_done)))
  )

  (:durative-action step27_sharpen_kitchen_knife
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s27_pending)) (at start (s9_done)) (at start (s32_done)))
    :effect (and (at start (not (s27_pending))) (at end (s27_done)))
  )

  (:durative-action step28_get_loaf_of_bread
    :parameters ()
    :duration (= ?duration 20)
    :condition (at start (s28_pending))
    :effect (and (at start (not (s28_pending))) (at end (s28_done)))
  )

  (:durative-action step29_arrange_seasoned_cucumbers
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s29_pending)) (at start (s17_done)))
    :effect (and (at start (not (s29_pending))) (at end (s29_done)))
  )

  (:durative-action step30_clean_skin_with_brush
    :parameters ()
    :duration (= ?duration 45)
    :condition (at start (s30_pending))
    :effect (and (at start (not (s30_pending))) (at end (s30_done)))
  )

  (:durative-action step31_find_serving_platter
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s31_pending))
    :effect (and (at start (not (s31_pending))) (at end (s31_done)))
  )

  (:durative-action step32_wash_hands
    :parameters ()
    :duration (= ?duration 40)
    :condition (at start (s32_pending))
    :effect (and (at start (not (s32_pending))) (at end (s32_done)))
  )

  (:durative-action step33_garnish_with_parsley
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (s33_pending)) (at start (s31_done)) (at start (s37_done)))
    :effect (and (at start (not (s33_pending))) (at end (s33_done)))
  )

  (:durative-action step34_shake_excess_water_off_herbs
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (s34_pending)) (at start (s8_done)))
    :effect (and (at start (not (s34_pending))) (at end (s34_done)))
  )

  (:durative-action step35_compost_cucumber_ends
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s35_pending)) (at start (s30_done)))
    :effect (and (at start (not (s35_pending))) (at end (s35_done)))
  )

  (:durative-action step36_fill_bowl_with_cold_water
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (s36_pending))
    :effect (and (at start (not (s36_pending))) (at end (s36_done)))
  )

  (:durative-action step37_gather_ingredients
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (s37_pending))
    :effect (and (at start (not (s37_pending))) (at end (s37_done)))
  )

  (:durative-action step38_check_bread_freshness
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (s38_pending))
    :effect (and (at start (not (s38_pending))) (at end (s38_done)))
  )

  (:durative-action step39_put_bread_bag_away
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (s39_pending)) (at start (s13_done)) (at start (s28_done)))
    :effect (and (at start (not (s39_pending))) (at end (s39_done)))
  )

  (:durative-action step40_clean_up_crumbs
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s40_pending)) (at start (s28_done)))
    :effect (and (at start (not (s40_pending))) (at end (s40_done)))
  )
)
