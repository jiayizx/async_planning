(define (domain cookie_baking)
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

  (:durative-action soften_butter
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s1_pending)) (at start (s20_done)) (at start (s22_done)))
    :effect (and (at start (not (s1_pending))) (at end (s1_done))))

  (:durative-action cream_butter_sugar
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s2_pending)) (at start (s1_done)))
    :effect (and (at start (not (s2_pending))) (at end (s2_done))))

  (:durative-action measure_brown_sugar
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s3_pending)) (at start (s19_done)))
    :effect (and (at start (not (s3_pending))) (at end (s3_done))))

  (:durative-action sift_cocoa
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (s4_pending)) (at start (s39_done)))
    :effect (and (at start (not (s4_pending))) (at end (s4_done))))

  (:durative-action beat_eggs
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s5_pending)) (at start (s9_done)))
    :effect (and (at start (not (s5_pending))) (at end (s5_done))))

  (:durative-action get_baking_sheet
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (s6_pending))
    :effect (and (at start (not (s6_pending))) (at end (s6_done))))

  (:durative-action line_baking_sheet
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s7_pending)) (at start (s10_done)) (at start (s22_done)))
    :effect (and (at start (not (s7_pending))) (at end (s7_done))))

  (:durative-action add_vanilla
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s8_pending)) (at start (s27_done)))
    :effect (and (at start (not (s8_pending))) (at end (s8_done))))

  (:durative-action whisk_dry
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (s9_pending)) (at start (s1_done)) (at start (s6_done)))
    :effect (and (at start (not (s9_pending))) (at end (s9_done))))

  (:durative-action combine_wet_dry
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (s10_pending)) (at start (s1_done)) (at start (s8_done)) (at start (s25_done)) (at start (s29_done)))
    :effect (and (at start (not (s10_pending))) (at end (s10_done))))

  (:durative-action preheat_oven
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (s11_pending))
    :effect (and (at start (not (s11_pending))) (at end (s11_done))))

  (:durative-action mix_chips
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (s12_pending)) (at start (s19_done)) (at start (s26_done)) (at start (s28_done)))
    :effect (and (at start (not (s12_pending))) (at end (s12_done))))

  (:durative-action scoop_dough
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (s13_pending)) (at start (s11_done)) (at start (s25_done)))
    :effect (and (at start (not (s13_pending))) (at end (s13_done))))

  (:durative-action place_in_oven
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s14_pending)) (at start (s21_done)) (at start (s35_done)))
    :effect (and (at start (not (s14_pending))) (at end (s14_done))))

  (:durative-action bake_cookies
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (s15_pending)) (at start (s9_done)) (at start (s10_done)) (at start (s11_done)) (at start (s30_done)))
    :effect (and (at start (not (s15_pending))) (at end (s15_done))))

  (:durative-action chop_walnuts
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s16_pending)) (at start (s32_done)))
    :effect (and (at start (not (s16_pending))) (at end (s16_done))))

  (:durative-action locate_cooling_rack
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s17_pending))
    :effect (and (at start (not (s17_pending))) (at end (s17_done))))

  (:durative-action find_rolling_pin
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s18_pending))
    :effect (and (at start (not (s18_pending))) (at end (s18_done))))

  (:durative-action measure_flour
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s19_pending)) (at start (s22_done)))
    :effect (and (at start (not (s19_pending))) (at end (s19_done))))

  (:durative-action check_pantry
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (s20_pending))
    :effect (and (at start (not (s20_pending))) (at end (s20_done))))

  (:durative-action fold_white_chips
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (s21_pending)) (at start (s12_done)))
    :effect (and (at start (not (s21_pending))) (at end (s21_done))))

  (:durative-action read_recipe
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (s22_pending))
    :effect (and (at start (not (s22_pending))) (at end (s22_done))))

  (:durative-action zest_orange
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s23_pending)) (at start (s24_done)) (at start (s27_done)))
    :effect (and (at start (not (s23_pending))) (at end (s23_done))))

  (:durative-action crush_salt
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s24_pending)) (at start (s33_done)))
    :effect (and (at start (not (s24_pending))) (at end (s24_done))))

  (:durative-action melt_coconut_oil
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s25_pending)) (at start (s11_done)) (at start (s19_done)))
    :effect (and (at start (not (s25_pending))) (at end (s25_done))))

  (:durative-action grind_cinnamon
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (s26_pending)) (at start (s11_done)))
    :effect (and (at start (not (s26_pending))) (at end (s26_done))))

  (:durative-action measure_soda_salt
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s27_pending)) (at start (s11_done)) (at start (s16_done)) (at start (s19_done)))
    :effect (and (at start (not (s27_pending))) (at end (s27_done))))

  (:durative-action pack_brown_sugar
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s28_pending)) (at start (s3_done)))
    :effect (and (at start (not (s28_pending))) (at end (s28_done))))

  (:durative-action separate_yolks
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (s29_pending))
    :effect (and (at start (not (s29_pending))) (at end (s29_done))))

  (:durative-action prepare_cooling_space
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s30_pending)) (at start (s9_done)) (at start (s17_done)) (at start (s34_done)))
    :effect (and (at start (not (s30_pending))) (at end (s30_done))))

  (:durative-action set_timer
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s31_pending)) (at start (s11_done)))
    :effect (and (at start (not (s31_pending))) (at end (s31_done))))

  (:durative-action clean_bowl
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (s32_pending)) (at start (s22_done)))
    :effect (and (at start (not (s32_pending))) (at end (s32_done))))

  (:durative-action flatten_dough
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s33_pending)) (at start (s18_done)) (at start (s22_done)))
    :effect (and (at start (not (s33_pending))) (at end (s33_done))))

  (:durative-action dust_counter
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s34_pending))
    :effect (and (at start (not (s34_pending))) (at end (s34_done))))

  (:durative-action chill_dough
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (s35_pending)) (at start (s7_done)) (at start (s13_done)) (at start (s32_done)))
    :effect (and (at start (not (s35_pending))) (at end (s35_done))))

  (:durative-action sprinkle_cinnamon
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s36_pending)) (at start (s23_done)) (at start (s26_done)))
    :effect (and (at start (not (s36_pending))) (at end (s36_done))))

  (:durative-action scrape_bowl
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s37_pending)) (at start (s2_done)))
    :effect (and (at start (not (s37_pending))) (at end (s37_done))))

  (:durative-action dispose_packaging
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s38_pending)) (at start (s26_done)))
    :effect (and (at start (not (s38_pending))) (at end (s38_done))))

  (:durative-action sift_powdered_sugar
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s39_pending)) (at start (s34_done)))
    :effect (and (at start (not (s39_pending))) (at end (s39_done))))

  (:durative-action remove_cookies
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s40_pending)) (at start (s15_done)) (at start (s19_done)))
    :effect (and (at start (not (s40_pending))) (at end (s40_done))))
)