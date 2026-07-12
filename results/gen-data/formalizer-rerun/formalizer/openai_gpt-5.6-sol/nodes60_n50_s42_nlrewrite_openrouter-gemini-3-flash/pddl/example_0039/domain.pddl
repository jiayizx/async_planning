(define (domain cinnamon-pancakes)
  (:requirements :typing :durative-actions)
  (:types step)
  (:constants
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
    step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
    step51 step52 step53 step54 step55 step56 step57 step58 step59 step60 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
    (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
    (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60)
    (cinnamon_pancakes_made))

  (:durative-action step01_grease_griddle
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step1)) (at start (p55)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (p1))))

  (:durative-action step02_flip_pancakes
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (p2))))

  (:durative-action step03_retrieve_large_bowl
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step3)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (p3))))

  (:durative-action step04_measure_flour
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step4)) (at start (p6)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (p4))))

  (:durative-action step05_whisk_dry_ingredients
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step5)) (at start (p49)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (p5))))

  (:durative-action step06_retrieve_flour
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step6)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (p6))))

  (:durative-action step07_set_table
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (p16)) (at start (p20)) (at start (p37)) (at start (p38)) (at start (p41)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (p7))))

  (:durative-action step08_melt_butter
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step8)) (at start (p23)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (p8))))

  (:durative-action step09_pour_batter
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step9)) (at start (p19)) (at start (p29)) (at start (p53)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (p9))))

  (:durative-action step10_measure_baking_powder
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step10)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (p10))))

  (:durative-action step11_sift_flour
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step11)) (at start (p4)) (at start (p6)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (p11))))

  (:durative-action step12_crack_eggs
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step12)) (at start (p16)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (p12))))

  (:durative-action step13_whisk_butter_into_milk
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step13)) (at start (p8)) (at start (p16)) (at start (p43)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (p13))))

  (:durative-action step14_mix_cinnamon_topping
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step14)) (at start (p40)) (at start (p51)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (p14))))

  (:durative-action step15_check_milk
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step15)) (at start (p37)) (at start (p53)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (p15))))

  (:durative-action step16_wash_hands
    :parameters ()
    :duration (= ?duration 40)
    :condition (and (at start (step_pending step16)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (p16))))

  (:durative-action step17_pour_milk
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step17)) (at start (p15)) (at start (p21)) (at start (p53)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (p17))))

  (:durative-action step18_preheat_griddle
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step18)) (at start (p47)) (at start (p53)) (at start (p56)) (at start (p60)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (p18))))

  (:durative-action step19_combine_wet_and_dry
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step19)) (at start (p4)) (at start (p40)) (at start (p42)) (at start (p50)) (at start (p52)) (at start (p59)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (p19))))

  (:durative-action step20_whisk_batter
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step20)) (at start (p31)) (at start (p53)) (at start (p57)) (at start (p60)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (p20))))

  (:durative-action step21_measure_milk
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step21)) (at start (p40)) (at start (p53)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (p21))))

  (:durative-action step22_beat_eggs
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step22)) (at start (p12)) (at start (p15)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (p22))))

  (:durative-action step23_get_butter
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step23)) (at start (p31)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (p23))))

  (:durative-action step24_add_salt
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step24)) (at start (p4)) (at start (p10)) (at start (p40)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (p24))))

  (:durative-action step25_place_griddle
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step25)) (at start (p1)) (at start (p37)) (at start (p57)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (p25))))

  (:durative-action step26_measure_sugar
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step26)) (at start (p21)) (at start (p42)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (p26))))

  (:durative-action step27_find_syrup
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step27)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (p27))))

  (:durative-action step28_monitor_bubbles
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step28)) (at start (p34)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (p28))))

  (:durative-action step29_final_stir
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step29)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (p29))))

  (:durative-action step30_warm_syrup
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step30)) (at start (p32)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (p30))))

  (:durative-action step31_get_cinnamon
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step31)) (at start (p56)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (p31))))

  (:durative-action step32_pour_syrup
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step32)) (at start (p27)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (p32))))

  (:durative-action step33_whisk_flour_sugar_powder
    :parameters ()
    :duration (= ?duration 40)
    :condition (and (at start (step_pending step33)) (at start (p4)) (at start (p10)) (at start (p19)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (p33))))

  (:durative-action step34_ladle_batter
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step34)) (at start (p3)) (at start (p20)) (at start (p32)) (at start (p59)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (p34))))

  (:durative-action step35_prepare_berries
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step35)) (at start (p8)) (at start (p59)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (p35))))

  (:durative-action step36_test_temperature
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step36)) (at start (p18)) (at start (p20)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (p36))))

  (:durative-action step37_clear_workspace
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step37)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (p37))))

  (:durative-action step38_get_spatula
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step38)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (p38))))

  (:durative-action step39_put_away_whisk
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step39)) (at start (p5)) (at start (p37)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (p39))))

  (:durative-action step40_measure_cinnamon
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step40)) (at start (p6)) (at start (p56)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (p40))))

  (:durative-action step41_wipe_counter
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step41)) (at start (p31)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (p41))))

  (:durative-action step42_open_sugar
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step42)) (at start (p38)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (p42))))

  (:durative-action step43_clean_butter_dish
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step43)) (at start (p36)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (p43))))

  (:durative-action step44_remove_pancakes
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step44)) (at start (p2)) (at start (p34)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (p44)) (at end (cinnamon_pancakes_made))))

  (:durative-action step45_put_away_sugar_salt
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step45)) (at start (p24)) (at start (p26)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (p45))))

  (:durative-action step46_drizzle_swirl
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step46)) (at start (p20)) (at start (p28)) (at start (p29)) (at start (p57)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (p46))))

  (:durative-action step47_check_griddle
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step47)) (at start (p57)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (p47))))

  (:durative-action step48_return_milk
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step48)) (at start (p27)) (at start (p53)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (p48))))

  (:durative-action step49_sift_cinnamon
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step49)) (at start (p51)) (at start (p53)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (p49))))

  (:durative-action step50_make_well
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step50)) (at start (p41)) (at start (p49)) (at start (p52)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (p50))))

  (:durative-action step51_locate_cinnamon
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step51)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (p51))))

  (:durative-action step52_check_measurements
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step52)) (at start (p49)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (p52))))

  (:durative-action step53_get_wet_bowl
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step53)) (at start (p6)) (at start (p40)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (p53))))

  (:durative-action step54_smell_cinnamon
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step54)) (at start (p56)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (p54))))

  (:durative-action step55_locate_pan_grease
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step55)) (at start (p40)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (p55))))

  (:durative-action step56_open_spice_cabinet
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step56)) (at start (p3)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (p56))))

  (:durative-action step57_clean_spatula
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step57)) (at start (p38)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (p57))))

  (:durative-action step58_wait_ready_light
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step58)) (at start (p18)) (at start (p24)) (at start (p50)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (p58))))

  (:durative-action step59_add_vanilla
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step59)) (at start (p24)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (p59))))

  (:durative-action step60_check_timer
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step60)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (p60))))
)