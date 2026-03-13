(define (domain herb_measurement)
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

  (:durative-action harvest_rosemary
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (s1_pending)) (at start (s5_done)))
    :effect (and (at start (not (s1_pending))) (at end (s1_done))))

  (:durative-action purchase_dried
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (s2_pending))
    :effect (and (at start (not (s2_pending))) (at end (s2_done))))

  (:durative-action wash_rosemary
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s3_pending)) (at start (s1_done)))
    :effect (and (at start (not (s3_pending))) (at end (s3_done))))

  (:durative-action wipe_counter
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s4_pending)) (at start (s15_done)) (at start (s26_done)))
    :effect (and (at start (not (s4_pending))) (at end (s4_done))))

  (:durative-action find_shears
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (s5_pending))
    :effect (and (at start (not (s5_pending))) (at end (s5_done))))

  (:durative-action calibrate_scale
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (s6_pending))
    :effect (and (at start (not (s6_pending))) (at end (s6_done))))

  (:durative-action place_bowl
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s7_pending)) (at start (s6_done)) (at start (s10_done)) (at start (s28_done)))
    :effect (and (at start (not (s7_pending))) (at end (s7_done))))

  (:durative-action tare_scale
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (s8_pending)) (at start (s6_done)))
    :effect (and (at start (not (s8_pending))) (at end (s8_done))))

  (:durative-action strip_leaves
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (s9_pending)) (at start (s1_done)) (at start (s15_done)) (at start (s39_done)))
    :effect (and (at start (not (s9_pending))) (at end (s9_done))))

  (:durative-action locate_tablespoon
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (s10_pending))
    :effect (and (at start (not (s10_pending))) (at end (s10_done))))

  (:durative-action record_ratio
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s11_pending)) (at start (s18_done)) (at start (s38_done)))
    :effect (and (at start (not (s11_pending))) (at end (s11_done))))

  (:durative-action scoop_fresh
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s12_pending)) (at start (s7_done)) (at start (s13_done)) (at start (s39_done)))
    :effect (and (at start (not (s12_pending))) (at end (s12_done))))

  (:durative-action sanitize_tablespoon
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (s13_pending)) (at start (s20_done)) (at start (s25_done)))
    :effect (and (at start (not (s13_pending))) (at end (s13_done))))

  (:durative-action note_weight
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s14_pending)) (at start (s8_done)) (at start (s40_done)))
    :effect (and (at start (not (s14_pending))) (at end (s14_done))))

  (:durative-action clear_workspace
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (s15_pending))
    :effect (and (at start (not (s15_pending))) (at end (s15_done))))

  (:durative-action mince_leaves
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (s16_pending)) (at start (s31_done)) (at start (s39_done)))
    :effect (and (at start (not (s16_pending))) (at end (s16_done))))

  (:durative-action weigh_empty_container
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s17_pending)) (at start (s6_done)) (at start (s38_done)))
    :effect (and (at start (not (s17_pending))) (at end (s17_done))))

  (:durative-action layout_cutting_board
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s18_pending)) (at start (s4_done)))
    :effect (and (at start (not (s18_pending))) (at end (s18_done))))

  (:durative-action pour_dried
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s19_pending)) (at start (s2_done)) (at start (s8_done)) (at start (s24_done)))
    :effect (and (at start (not (s19_pending))) (at end (s19_done))))

  (:durative-action retrieve_bowl
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s20_pending))
    :effect (and (at start (not (s20_pending))) (at end (s20_done))))

  (:durative-action measure_dried
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s21_pending)) (at start (s10_done)) (at start (s13_done)))
    :effect (and (at start (not (s21_pending))) (at end (s21_done))))

  (:durative-action inspect_dried
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s22_pending)) (at start (s2_done)))
    :effect (and (at start (not (s22_pending))) (at end (s22_done))))

  (:durative-action compare_volume
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s23_pending)) (at start (s21_done)) (at start (s25_done)) (at start (s33_done)))
    :effect (and (at start (not (s23_pending))) (at end (s23_done))))

  (:durative-action open_seal
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s24_pending)) (at start (s2_done)) (at start (s22_done)))
    :effect (and (at start (not (s24_pending))) (at end (s24_done))))

  (:durative-action check_expiration
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s25_pending))
    :effect (and (at start (not (s25_pending))) (at end (s25_done))))

  (:durative-action wash_hands
    :parameters ()
    :duration (= ?duration 40)
    :condition (at start (s26_pending))
    :effect (and (at start (not (s26_pending))) (at end (s26_done))))

  (:durative-action clean_debris
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (s27_pending)) (at start (s24_done)) (at start (s26_done)) (at start (s30_done)) (at start (s36_done)))
    :effect (and (at start (not (s27_pending))) (at end (s27_done))))

  (:durative-action organize_spice_rack
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (s28_pending))
    :effect (and (at start (not (s28_pending))) (at end (s28_done))))

  (:durative-action label_shelf
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s29_pending)) (at start (s28_done)))
    :effect (and (at start (not (s29_pending))) (at end (s29_done))))

  (:durative-action sharpen_knife
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (s30_pending))
    :effect (and (at start (not (s30_pending))) (at end (s30_done))))

  (:durative-action pat_dry
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (s31_pending)) (at start (s3_done)) (at start (s14_done)) (at start (s20_done)))
    :effect (and (at start (not (s31_pending))) (at end (s31_done))))

  (:durative-action compost_stems
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s32_pending)) (at start (s3_done)) (at start (s31_done)))
    :effect (and (at start (not (s32_pending))) (at end (s32_done))))

  (:durative-action set_cutting_board
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s33_pending)) (at start (s4_done)))
    :effect (and (at start (not (s33_pending))) (at end (s33_done))))

  (:durative-action calculate_difference
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (s34_pending)) (at start (s9_done)) (at start (s10_done)) (at start (s16_done)) (at start (s30_done)))
    :effect (and (at start (not (s34_pending))) (at end (s34_done))))

  (:durative-action store_dried
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s35_pending)) (at start (s37_done)))
    :effect (and (at start (not (s35_pending))) (at end (s35_done))))

  (:durative-action sweep_floor
    :parameters ()
    :duration (= ?duration 720)
    :condition (at start (s36_pending))
    :effect (and (at start (not (s36_pending))) (at end (s36_done))))

  (:durative-action seal_leftovers
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s37_pending)) (at start (s39_done)))
    :effect (and (at start (not (s37_pending))) (at end (s37_done))))

  (:durative-action review_recipe
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (s38_pending))
    :effect (and (at start (not (s38_pending))) (at end (s38_done))))

  (:durative-action gather_tools
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (s39_pending))
    :effect (and (at start (not (s39_pending))) (at end (s39_done))))

  (:durative-action empty_bowl
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s40_pending)) (at start (s19_done)))
    :effect (and (at start (not (s40_pending))) (at end (s40_done))))
)