(define (domain corn-salsa)
 (:requirements :typing :durative-actions)
 (:types step - object t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (salsa_complete)
  (s7_done) (s8_done) (s9_done) (s10_done) (s11_done) (s12_done)
  (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done)
  (s19_done) (s20_done) (s21_done) (s22_done) (s23_done) (s24_done)
  (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
  (s31_done) (s32_done) (s33_done) (s34_done) (s35_done) (s36_done)
  (s37_done) (s38_done) (s39_done) (s40_done) (s41_done) (s42_done)
  (s43_done) (s44_done) (s45_done) (s46_done) (s47_done) (s48_done)
  (s49_done) (s50_done))

 (:durative-action step1_dice_onions
  :parameters (?s - t1) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s17_done)) (at start (s25_done)) (at start (s26_done)) (at start (s40_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))
 (:durative-action step2_husk_corn
  :parameters (?s - t2) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))
 (:durative-action step3_scrub_corn_silk
  :parameters (?s - t3) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (s2_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))
 (:durative-action step4_toss_with_salt
  :parameters (?s - t4) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (s12_done)) (at start (s30_done)) (at start (s39_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))
 (:durative-action step5_light_grill
  :parameters (?s - t5) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s7_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))
 (:durative-action step6_garnish_cilantro
  :parameters (?s - t6) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s24_done)) (at start (s45_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (salsa_complete))))
 (:durative-action step7_buy_charcoal
  :parameters (?s - t7) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))
 (:durative-action step8_brush_corn_with_butter
  :parameters (?s - t8) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s25_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))
 (:durative-action step9_juice_limes
  :parameters (?s - t9) :duration (= ?duration 180)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))
 (:durative-action step10_zest_limes
  :parameters (?s - t10) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (s50_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))
 (:durative-action step11_core_seed_jalapenos
  :parameters (?s - t11) :duration (= ?duration 360)
  :condition (and (at start (step_pending ?s)) (at start (s37_done)) (at start (s39_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))
 (:durative-action step12_grill_corn
  :parameters (?s - t12) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s20_done)) (at start (s24_done)) (at start (s42_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))
 (:durative-action step13_wash_tomatoes_peppers
  :parameters (?s - t13) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (s40_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))
 (:durative-action step14_cut_corn_kernels
  :parameters (?s - t14) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (s23_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))
 (:durative-action step15_soak_onions
  :parameters (?s - t15) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s48_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))
 (:durative-action step16_fold_in_cilantro
  :parameters (?s - t16) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s29_done)) (at start (s45_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))
 (:durative-action step17_sanitize_counter
  :parameters (?s - t17) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))
 (:durative-action step18_mince_garlic
  :parameters (?s - t18) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (s22_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))
 (:durative-action step19_boil_water
  :parameters (?s - t19) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (s3_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))
 (:durative-action step20_slice_tomatoes
  :parameters (?s - t20) :duration (= ?duration 420)
  :condition (and (at start (step_pending ?s)) (at start (s17_done)) (at start (s34_done)) (at start (s48_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))
 (:durative-action step21_find_knife
  :parameters (?s - t21) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))
 (:durative-action step22_peel_garlic
  :parameters (?s - t22) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s17_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done))))
 (:durative-action step23_combine_corn_onions
  :parameters (?s - t23) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (s8_done)) (at start (s15_done)) (at start (s26_done)) (at start (s35_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))
 (:durative-action step24_clean_grill_grates
  :parameters (?s - t24) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))
 (:durative-action step25_measure_spices
  :parameters (?s - t25) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s37_done)) (at start (s46_done)) (at start (s50_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))
 (:durative-action step26_sharpen_knife
  :parameters (?s - t26) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s21_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))
 (:durative-action step27_chop_bell_peppers
  :parameters (?s - t27) :duration (= ?duration 720)
  :condition (and (at start (step_pending ?s)) (at start (s13_done)) (at start (s26_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))
 (:durative-action step28_dice_jalapenos
  :parameters (?s - t28) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (s13_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))
 (:durative-action step29_mix_garlic_peppers
  :parameters (?s - t29) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s18_done)) (at start (s27_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))
 (:durative-action step30_place_serving_bowl
  :parameters (?s - t30) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s17_done)) (at start (s40_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done))))
 (:durative-action step31_drain_peppers
  :parameters (?s - t31) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s27_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_done))))
 (:durative-action step32_whisk_lime_oil
  :parameters (?s - t32) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (s18_done)) (at start (s39_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_done))))
 (:durative-action step33_pull_back_husks
  :parameters (?s - t33) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s46_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_done))))
 (:durative-action step34_rinse_produce
  :parameters (?s - t34) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_done))))
 (:durative-action step35_pepper_corn
  :parameters (?s - t35) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (s8_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_done))))
 (:durative-action step36_prepare_chips
  :parameters (?s - t36) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s48_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_done))))
 (:durative-action step37_wipe_chopping_station
  :parameters (?s - t37) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (s28_done)) (at start (s38_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_done))))
 (:durative-action step38_blanch_jalapenos
  :parameters (?s - t38) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s20_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_done))))
 (:durative-action step39_lay_corn_on_grill
  :parameters (?s - t39) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s33_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_done))))
 (:durative-action step40_retrieve_vegetables
  :parameters (?s - t40) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_done))))
 (:durative-action step41_add_sugar
  :parameters (?s - t41) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s28_done)) (at start (s50_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_done))))
 (:durative-action step42_oil_grill_grates
  :parameters (?s - t42) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s24_done)) (at start (s34_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_done))))
 (:durative-action step43_pat_peppers_dry
  :parameters (?s - t43) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s34_done)) (at start (s38_done)) (at start (s46_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_done))))
 (:durative-action step44_pour_lime_juice
  :parameters (?s - t44) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (s9_done)) (at start (s43_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_done))))
 (:durative-action step45_combine_all_ingredients
  :parameters (?s - t45) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (s17_done)) (at start (s19_done)) (at start (s25_done)) (at start (s27_done)) (at start (s49_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_done))))
 (:durative-action step46_take_out_spices
  :parameters (?s - t46) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_done))))
 (:durative-action step47_remove_jalapeno_veins
  :parameters (?s - t47) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (s11_done)) (at start (s46_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_done))))
 (:durative-action step48_dice_poblanos
  :parameters (?s - t48) :duration (= ?duration 420)
  :condition (and (at start (step_pending ?s)) (at start (s27_done)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_done))))
 (:durative-action step49_chop_cilantro
  :parameters (?s - t49) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_done))))
 (:durative-action step50_inventory_spices
  :parameters (?s - t50) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_done))))
)