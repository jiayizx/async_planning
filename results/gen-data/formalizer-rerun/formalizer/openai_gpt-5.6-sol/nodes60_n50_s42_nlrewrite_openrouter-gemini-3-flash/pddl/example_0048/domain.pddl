(define (domain chocolate-cupcakes)
 (:requirements :durative-actions :typing)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (is1 ?s - step) (is2 ?s - step) (is3 ?s - step) (is4 ?s - step) (is5 ?s - step)
  (is6 ?s - step) (is7 ?s - step) (is8 ?s - step) (is9 ?s - step) (is10 ?s - step)
  (is11 ?s - step) (is12 ?s - step) (is13 ?s - step) (is14 ?s - step) (is15 ?s - step)
  (is16 ?s - step) (is17 ?s - step) (is18 ?s - step) (is19 ?s - step) (is20 ?s - step)
  (is21 ?s - step) (is22 ?s - step) (is23 ?s - step) (is24 ?s - step) (is25 ?s - step)
  (is26 ?s - step) (is27 ?s - step) (is28 ?s - step) (is29 ?s - step) (is30 ?s - step)
  (is31 ?s - step) (is32 ?s - step) (is33 ?s - step) (is34 ?s - step) (is35 ?s - step)
  (is36 ?s - step) (is37 ?s - step) (is38 ?s - step) (is39 ?s - step) (is40 ?s - step)
  (is41 ?s - step) (is42 ?s - step) (is43 ?s - step) (is44 ?s - step) (is45 ?s - step)
  (is46 ?s - step) (is47 ?s - step) (is48 ?s - step) (is49 ?s - step) (is50 ?s - step)
  (is51 ?s - step) (is52 ?s - step) (is53 ?s - step) (is54 ?s - step) (is55 ?s - step)
  (is56 ?s - step) (is57 ?s - step) (is58 ?s - step) (is59 ?s - step) (is60 ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
  (d51) (d52) (d53) (d54) (d55) (d56) (d57) (d58) (d59) (d60))

 (:durative-action step1_sift_cocoa
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is1 ?s)) (at start (d7)) (at start (d12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action step2_preheat_oven
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is2 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action step3_grease_liners
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is3 ?s)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action step4_divide_batter
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (is4 ?s)) (at start (d52)) (at start (d57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action step5_crack_eggs
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is5 ?s)) (at start (d23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action step6_place_cupcakes_in_oven
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is6 ?s)) (at start (d36)) (at start (d52)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action step7_measure_sugar
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is7 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action step8_melt_butter
  :parameters (?s - step) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (is8 ?s)) (at start (d19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action step9_whisk_milk
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is9 ?s)) (at start (d22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action step10_combine_vanilla_milk
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (is10 ?s)) (at start (d9)) (at start (d29)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action step11_prepare_piping_bag
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (is11 ?s)) (at start (d20)) (at start (d47)) (at start (d55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action step12_measure_flour
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is12 ?s)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action step13_zest_orange
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is13 ?s)) (at start (d32)) (at start (d56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action step14_soften_cream_cheese
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is14 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action step15_clean_mixing_bowl
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is15 ?s)) (at start (d22)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action step16_line_tin
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is16 ?s)) (at start (d2)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action step17_organize_sprinkles
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is17 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action step18_whisk_dry_ingredients
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is18 ?s)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action step19_take_butter_from_refrigerator
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is19 ?s)) (at start (d2)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action step20_cream_butter_sugar
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is20 ?s)) (at start (d51)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action step21_add_eggs
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (is21 ?s)) (at start (d18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action step22_brew_coffee
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is22 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action step23_beat_eggs
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is23 ?s)) (at start (d14)) (at start (d51)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action step24_check_oven_temperature
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is24 ?s)) (at start (d19)) (at start (d27)) (at start (d55)) (at start (d59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action step25_cool_cupcakes
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is25 ?s)) (at start (d26)) (at start (d40)) (at start (d57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action step26_fold_dry_into_wet
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is26 ?s)) (at start (d17)) (at start (d18)) (at start (d46)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action step27_locate_carrier
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is27 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action step28_wipe_counters
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is28 ?s)) (at start (d27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action step29_measure_baking_soda_salt
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is29 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action step30_set_cooling_racks
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is30 ?s)) (at start (d19)) (at start (d45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action step31_sift_powdered_sugar
  :parameters (?s - step) :duration (= ?duration 360)
  :condition (and (at start (step_pending ?s)) (at start (is31 ?s)) (at start (d7)) (at start (d14)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action step32_soften_buttercream_butter
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is32 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action step33_add_flour_mixture
  :parameters (?s - step) :duration (= ?duration 360)
  :condition (and (at start (step_pending ?s)) (at start (is33 ?s)) (at start (d18)) (at start (d21)) (at start (d35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action step34_prepare_frosting_workspace
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is34 ?s)) (at start (d21)) (at start (d33)) (at start (d38)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action step35_check_baking_powder
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is35 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action step36_bake_cupcakes
  :parameters (?s - step) :duration (= ?duration 1320)
  :condition (and (at start (step_pending ?s)) (at start (is36 ?s)) (at start (d28)) (at start (d58)) (at start (d59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action step37_mix_frosting
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (is37 ?s)) (at start (d20)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action step38_buy_chocolate_chips
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is38 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action step39_melt_dark_chocolate
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is39 ?s)) (at start (d7)) (at start (d45)) (at start (d57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action step40_whisk_coffee_into_cocoa
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is40 ?s)) (at start (d22)) (at start (d52)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action step41_whip_heavy_cream
  :parameters (?s - step) :duration (= ?duration 420)
  :condition (and (at start (step_pending ?s)) (at start (is41 ?s)) (at start (d51)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action step42_scrape_bowl
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is42 ?s)) (at start (d8)) (at start (d32)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action step43_tap_bowl
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (is43 ?s)) (at start (d12)) (at start (d30)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action step44_pipe_frosting
  :parameters (?s - step) :duration (= ?duration 720)
  :condition (and (at start (step_pending ?s)) (at start (is44 ?s)) (at start (d11)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action step45_gather_measuring_tools
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is45 ?s)) (at start (d56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action step46_taste_batter
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (is46 ?s)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action step47_beat_cream_cheese
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (is47 ?s)) (at start (d16)) (at start (d56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action step48_sift_flour_again
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is48 ?s)) (at start (d20)) (at start (d32)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action step49_grate_chocolate
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is49 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action step50_soften_vegetable_oil
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is50 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
 (:durative-action step51_read_recipe
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is51 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d51))))
 (:durative-action step52_temper_chocolate
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is52 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d52))))
 (:durative-action step53_stir_butter_into_sugar
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is53 ?s)) (at start (d8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d53))))
 (:durative-action step54_wash_whisk
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is54 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d54))))
 (:durative-action step55_add_chocolate_chips
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is55 ?s)) (at start (d21)) (at start (d45)) (at start (d54)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d55))))
 (:durative-action step56_fetch_mixing_bowl
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is56 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d56))))
 (:durative-action step57_grease_pan_top
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (is57 ?s)) (at start (d30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d57))))
 (:durative-action step58_set_oven_timer
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (is58 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d58))))
 (:durative-action step59_fill_liners
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is59 ?s)) (at start (d16)) (at start (d22)) (at start (d30)) (at start (d60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d59))))
 (:durative-action step60_mix_final_batter
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is60 ?s)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d60))))
)