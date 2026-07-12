(define (domain birthday-cake)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step) (is_step4 ?s - step) (is_step5 ?s - step)
    (is_step6 ?s - step) (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step) (is_step10 ?s - step)
    (is_step11 ?s - step) (is_step12 ?s - step) (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step) (is_step19 ?s - step) (is_step20 ?s - step)
    (is_step21 ?s - step) (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step) (is_step25 ?s - step)
    (is_step26 ?s - step) (is_step27 ?s - step) (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (is_step31 ?s - step) (is_step32 ?s - step) (is_step33 ?s - step) (is_step34 ?s - step) (is_step35 ?s - step)
    (is_step36 ?s - step) (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step) (is_step40 ?s - step)
    (is_step41 ?s - step) (is_step42 ?s - step) (is_step43 ?s - step) (is_step44 ?s - step) (is_step45 ?s - step)
    (is_step46 ?s - step) (is_step47 ?s - step) (is_step48 ?s - step) (is_step49 ?s - step) (is_step50 ?s - step)
    (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
    (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
    (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
    (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
    (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49)
    (cake_sliced)
  )

  (:durative-action sift_flour
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (is_step1 ?x)) (at start (s44)) (at start (s49)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s1))))
  (:durative-action cream_butter_and_sugar
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (is_step2 ?x)) (at start (s4)) (at start (s24)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s2))))
  (:durative-action crack_eggs
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?x)) (at start (is_step3 ?x)) (at start (s7)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s3))))
  (:durative-action soften_butter
    :parameters (?x - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?x)) (at start (is_step4 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s4))))
  (:durative-action preheat_oven
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (is_step5 ?x)) (at start (s15)) (at start (s33)) (at start (s46)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s5))))
  (:durative-action whisk_ingredients
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (is_step6 ?x)) (at start (s1)) (at start (s5)) (at start (s15)) (at start (s21)) (at start (s25)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s6))))
  (:durative-action buy_ingredients
    :parameters (?x - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?x)) (at start (is_step7 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s7))))
  (:durative-action grease_pans
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?x)) (at start (is_step8 ?x)) (at start (s15)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s8))))
  (:durative-action measure_vanilla
    :parameters (?x - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?x)) (at start (is_step9 ?x)) (at start (s24)) (at start (s49)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s9))))
  (:durative-action beat_eggs
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?x)) (at start (is_step10 ?x)) (at start (s3)) (at start (s37)) (at start (s43)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s10))))
  (:durative-action zest_lemon
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (is_step11 ?x)) (at start (s29)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s11))))
  (:durative-action locate_bowls
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?x)) (at start (is_step12 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s12))))
  (:durative-action rinse_bowls
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (is_step13 ?x)) (at start (s12)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s13))))
  (:durative-action set_cooling_racks
    :parameters (?x - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?x)) (at start (is_step14 ?x)) (at start (s7)) (at start (s37)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s14))))
  (:durative-action clear_counter
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (is_step15 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s15))))
  (:durative-action read_recipe
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (is_step16 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s16))))
  (:durative-action pour_batter
    :parameters (?x - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?x)) (at start (is_step17 ?x)) (at start (s36)) (at start (s44)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s17))))
  (:durative-action prepare_frosting
    :parameters (?x - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?x)) (at start (is_step18 ?x)) (at start (s7)) (at start (s29)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s18))))
  (:durative-action bake_cake
    :parameters (?x - step) :duration (= ?duration 2100)
    :condition (and (at start (step_pending ?x)) (at start (is_step19 ?x)) (at start (s3)) (at start (s9)) (at start (s10)) (at start (s23)) (at start (s25)) (at start (s26)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s19))))
  (:durative-action cool_layers
    :parameters (?x - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?x)) (at start (is_step20 ?x)) (at start (s38)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s20))))
  (:durative-action measure_baking_powder_and_salt
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?x)) (at start (is_step21 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s21))))
  (:durative-action clean_flour_spills
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (is_step22 ?x)) (at start (s5)) (at start (s24)) (at start (s44)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s22))))
  (:durative-action check_oven_temperature
    :parameters (?x - step) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?x)) (at start (is_step23 ?x)) (at start (s40)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s23))))
  (:durative-action take_out_milk
    :parameters (?x - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?x)) (at start (is_step24 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s24))))
  (:durative-action wash_spatula
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (is_step25 ?x)) (at start (s12)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s25))))
  (:durative-action tap_pans
    :parameters (?x - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?x)) (at start (is_step26 ?x)) (at start (s1)) (at start (s8)) (at start (s17)) (at start (s36)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s26))))
  (:durative-action put_away_ingredients
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (is_step27 ?x)) (at start (s29)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s27))))
  (:durative-action set_timer
    :parameters (?x - step) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?x)) (at start (is_step28 ?x)) (at start (s6)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s28))))
  (:durative-action organize_decorating_supplies
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (is_step29 ?x)) (at start (s39)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s29))))
  (:durative-action level_layers
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (is_step30 ?x)) (at start (s38)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s30))))
  (:durative-action wash_dirty_bowls
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (is_step31 ?x)) (at start (s2)) (at start (s6)) (at start (s11)) (at start (s13)) (at start (s24)) (at start (s41)) (at start (s45)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s31))))
  (:durative-action check_sprinkles
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (is_step32 ?x)) (at start (s5)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s32))))
  (:durative-action plug_in_mixer
    :parameters (?x - step) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?x)) (at start (is_step33 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s33))))
  (:durative-action remove_cake
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?x)) (at start (is_step34 ?x)) (at start (s10)) (at start (s24)) (at start (s25)) (at start (s38)) (at start (s39)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s34))))
  (:durative-action invert_cake
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (is_step35 ?x)) (at start (s20)) (at start (s25)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s35))))
  (:durative-action smooth_batter
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?x)) (at start (is_step36 ?x)) (at start (s5)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s36))))
  (:durative-action unpack_groceries
    :parameters (?x - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?x)) (at start (is_step37 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s37))))
  (:durative-action place_first_layer
    :parameters (?x - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?x)) (at start (is_step38 ?x)) (at start (s36)) (at start (s42)) (at start (s47)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s38))))
  (:durative-action soften_cream_cheese
    :parameters (?x - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?x)) (at start (is_step39 ?x)) (at start (s7)) (at start (s37)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s39))))
  (:durative-action light_candles
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?x)) (at start (is_step40 ?x)) (at start (s45)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s40))))
  (:durative-action apply_crumb_coat
    :parameters (?x - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?x)) (at start (is_step41 ?x)) (at start (s18)) (at start (s48)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s41))))
  (:durative-action spread_final_frosting
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (is_step42 ?x)) (at start (s5)) (at start (s43)) (at start (cake_sliced)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s42))))
  (:durative-action measure_powdered_sugar
    :parameters (?x - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?x)) (at start (is_step43 ?x)) (at start (s37)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s43))))
  (:durative-action find_apron
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (is_step44 ?x)) (at start (s16)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s44))))
  (:durative-action sing_happy_birthday
    :parameters (?x - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?x)) (at start (is_step45 ?x)) (at start (s5)) (at start (s33)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s45))))
  (:durative-action check_milk_expiration
    :parameters (?x - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?x)) (at start (is_step46 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s46))))
  (:durative-action retrieve_cake_server
    :parameters (?x - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?x)) (at start (is_step47 ?x)) (at start (s12)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s47))))
  (:durative-action decorate_edges
    :parameters (?x - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?x)) (at start (is_step48 ?x)) (at start (s2)) (at start (s16)) (at start (s18)) (at start (s30)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s48))))
  (:durative-action wash_hands
    :parameters (?x - step) :duration (= ?duration 40)
    :condition (and (at start (step_pending ?x)) (at start (is_step49 ?x)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (s49))))
  (:durative-action slice_cake
    :parameters (?x - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?x)) (at start (is_step50 ?x)) (at start (s16)))
    :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (cake_sliced))))
)