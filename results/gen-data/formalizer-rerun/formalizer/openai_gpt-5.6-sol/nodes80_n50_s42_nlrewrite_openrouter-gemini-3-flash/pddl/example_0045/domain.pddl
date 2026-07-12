(define (domain chickpea-red-bean-salad)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_done ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
  (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60)
  (p61) (p62) (p63) (p64) (p65) (p66) (p67) (p68) (p69) (p70)
  (p71) (p72) (p73) (p74) (p75) (p76) (p77) (p78) (p79) (p80)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
  (d51) (d52) (d53) (d54) (d55) (d56) (d57) (d58) (d59) (d60)
  (d61) (d62) (d63) (d64) (d65) (d66) (d67) (d68) (d69) (d70)
  (d71) (d72) (d73) (d74) (d75) (d76) (d77) (d78) (d79) (d80))

 (:durative-action step1_purchase_chickpeas
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (at start (p1))
  :effect (and (at start (not (p1))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action step2_clean_counters
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (p2)) (at start (d43)))
  :effect (and (at start (not (p2))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action step3_soak_chickpeas
  :parameters (?s - step) :duration (= ?duration 43200)
  :condition (and (at start (p3)) (at start (d1)) (at start (d20)) (at start (d21)) (at start (d67)))
  :effect (and (at start (not (p3))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action step4_rinse_soaked_chickpeas
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p4)) (at start (d23)))
  :effect (and (at start (not (p4))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action step5_dice_bell_peppers
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (p5)) (at start (d13)) (at start (d66)))
  :effect (and (at start (not (p5))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action step6_mince_garlic
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (p6)) (at start (d13)) (at start (d34)) (at start (d71)))
  :effect (and (at start (not (p6))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action step7_find_stockpot
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (at start (p7))
  :effect (and (at start (not (p7))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action step8_chop_red_onions
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (p8)) (at start (d13)) (at start (d28)) (at start (d32)) (at start (d38)) (at start (d44)) (at start (d64)))
  :effect (and (at start (not (p8))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action step9_boil_chickpeas
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (p9)) (at start (d4)) (at start (d46)))
  :effect (and (at start (not (p9))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action step10_prepare_mixing_bowl
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p10)) (at start (d2)) (at start (d28)) (at start (d45)) (at start (d54)) (at start (d60)))
  :effect (and (at start (not (p10))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action step11_drain_cooked_chickpeas
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p11)) (at start (d22)) (at start (d31)) (at start (d61)))
  :effect (and (at start (not (p11))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action step12_slice_tomatoes
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (p12)) (at start (d34)) (at start (d57)))
  :effect (and (at start (not (p12))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action step13_chop_parsley
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (p13)) (at start (d14)) (at start (d18)) (at start (d51)))
  :effect (and (at start (not (p13))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action step14_wash_vegetables
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (p14)) (at start (d62)))
  :effect (and (at start (not (p14))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action step15_measure_olive_oil
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p15)) (at start (d23)) (at start (d51)) (at start (d61)) (at start (d67)))
  :effect (and (at start (not (p15))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action step16_check_pantry
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (at start (p16))
  :effect (and (at start (not (p16))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action step17_locate_cumin
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p17)) (at start (d56)) (at start (d61)))
  :effect (and (at start (not (p17))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action step18_pick_herbs
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (p18)) (at start (d56)))
  :effect (and (at start (not (p18))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action step19_zest_lemon
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p19)) (at start (d40)) (at start (d47)) (at start (d52)))
  :effect (and (at start (not (p19))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action step20_retrieve_tongs
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (at start (p20))
  :effect (and (at start (not (p20))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action step21_cool_chickpeas
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (p21)) (at start (d11)))
  :effect (and (at start (not (p21))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action step22_fill_stockpot
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p22)) (at start (d7)) (at start (d55)))
  :effect (and (at start (not (p22))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action step23_sort_chickpeas
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (p23)) (at start (d1)) (at start (d22)) (at start (d52)) (at start (d74)))
  :effect (and (at start (not (p23))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action step24_open_red_bean_cans
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p24)) (at start (d2)) (at start (d16)) (at start (d23)) (at start (d37)) (at start (d72)))
  :effect (and (at start (not (p24))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action step25_drain_rinse_red_beans
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (p25)) (at start (d14)) (at start (d36)) (at start (d41)) (at start (d53)) (at start (d65)))
  :effect (and (at start (not (p25))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action step26_measure_oregano
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (p26)) (at start (d8)) (at start (d17)))
  :effect (and (at start (not (p26))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action step27_whisk_dressing
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p27)) (at start (d38)))
  :effect (and (at start (not (p27))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action step28_take_red_beans
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p28)) (at start (d16)))
  :effect (and (at start (not (p28))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action step29_pat_chickpeas_dry
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (p29)) (at start (d9)) (at start (d31)) (at start (d37)))
  :effect (and (at start (not (p29))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action step30_locate_salt_pepper
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (at start (p30))
  :effect (and (at start (not (p30))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action step31_place_chickpeas_container
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p31)) (at start (d49)))
  :effect (and (at start (not (p31))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action step32_peel_onions
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p32)) (at start (d2)) (at start (d12)) (at start (d35)) (at start (d39)))
  :effect (and (at start (not (p32))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action step33_shake_dressing
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p33)) (at start (d27)))
  :effect (and (at start (not (p33))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action step34_dice_cucumber
  :parameters (?s - step) :duration (= ?duration 360)
  :condition (and (at start (p34)) (at start (d16)) (at start (d53)) (at start (d57)))
  :effect (and (at start (not (p34))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action step35_sharpen_knife
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (at start (p35))
  :effect (and (at start (not (p35))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action step36_find_can_opener
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (p36)) (at start (d15)))
  :effect (and (at start (not (p36))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action step37_rinse_red_beans_again
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p37)) (at start (d31)))
  :effect (and (at start (not (p37))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action step38_squeeze_lemon
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p38)) (at start (d18)) (at start (d22)) (at start (d30)) (at start (d50)))
  :effect (and (at start (not (p38))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action step39_wash_celery
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p39)) (at start (d65)))
  :effect (and (at start (not (p39))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action step40_slice_celery
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (p40)) (at start (d34)) (at start (d41)) (at start (d49)) (at start (d65)) (at start (d67)))
  :effect (and (at start (not (p40))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action step41_sanitize_cutting_board
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (at start (p41))
  :effect (and (at start (not (p41))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action step42_set_measuring_spoons
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p42)) (at start (d52)))
  :effect (and (at start (not (p42))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action step43_clean_colander
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p43)) (at start (d16)))
  :effect (and (at start (not (p43))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action step44_combine_legumes
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p44)) (at start (d23)) (at start (d35)) (at start (d67)))
  :effect (and (at start (not (p44))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action step45_add_salt
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (p45)) (at start (d69)) (at start (d76)))
  :effect (and (at start (not (p45))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action step46_skim_foam
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (p46)) (at start (d20)) (at start (d35)) (at start (d44)) (at start (d52)))
  :effect (and (at start (not (p46))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action step47_grate_ginger
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p47)) (at start (d65)))
  :effect (and (at start (not (p47))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action step48_add_onions
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p48)) (at start (d25)) (at start (d35)) (at start (d53)) (at start (d77)))
  :effect (and (at start (not (p48))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action step49_retrieve_lemon
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (p49)) (at start (d16)))
  :effect (and (at start (not (p49))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action step50_grate_black_pepper
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p50)) (at start (d30)))
  :effect (and (at start (not (p50))) (at end (step_done ?s)) (at end (d50))))
 (:durative-action step51_wash_parsley
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (at start (p51))
  :effect (and (at start (not (p51))) (at end (step_done ?s)) (at end (d51))))
 (:durative-action step52_clear_table
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (at start (p52))
  :effect (and (at start (not (p52))) (at end (step_done ?s)) (at end (d52))))
 (:durative-action step53_chop_cilantro
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (p53)) (at start (d60)))
  :effect (and (at start (not (p53))) (at end (step_done ?s)) (at end (d53))))
 (:durative-action step54_crumble_feta
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (p54)) (at start (d78)))
  :effect (and (at start (not (p54))) (at end (step_done ?s)) (at end (d54))))
 (:durative-action step55_set_stove_high
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p55)) (at start (d35)) (at start (d61)))
  :effect (and (at start (not (p55))) (at end (step_done ?s)) (at end (d55))))
 (:durative-action step56_buy_cumin
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (at start (p56))
  :effect (and (at start (not (p56))) (at end (step_done ?s)) (at end (d56))))
 (:durative-action step57_peel_cucumber
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p57)) (at start (d2)))
  :effect (and (at start (not (p57))) (at end (step_done ?s)) (at end (d57))))
 (:durative-action step58_taste_salad
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p58)) (at start (d30)) (at start (d57)) (at start (d73)))
  :effect (and (at start (not (p58))) (at end (step_done ?s)) (at end (d58))))
 (:durative-action step59_toss_legumes
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p59)) (at start (d32)) (at start (d49)) (at start (d50)) (at start (d55)) (at start (d72)))
  :effect (and (at start (not (p59))) (at end (step_done ?s)) (at end (d59))))
 (:durative-action step60_wipe_salad_bowl
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p60)) (at start (d2)) (at start (d20)) (at start (d52)))
  :effect (and (at start (not (p60))) (at end (step_done ?s)) (at end (d60))))
 (:durative-action step61_measure_apple_cider_vinegar
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p61)) (at start (d76)))
  :effect (and (at start (not (p61))) (at end (step_done ?s)) (at end (d61))))
 (:durative-action step62_fetch_wash_spray
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p62)) (at start (d7)))
  :effect (and (at start (not (p62))) (at end (step_done ?s)) (at end (d62))))
 (:durative-action step63_pour_dressing
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p63)) (at start (d26)) (at start (d44)) (at start (d48)) (at start (d79)))
  :effect (and (at start (not (p63))) (at end (step_done ?s)) (at end (d63))))
 (:durative-action step64_slice_scallions
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (p64)) (at start (d53)))
  :effect (and (at start (not (p64))) (at end (step_done ?s)) (at end (d64))))
 (:durative-action step65_sterilize_knife
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p65)) (at start (d35)))
  :effect (and (at start (not (p65))) (at end (step_done ?s)) (at end (d65))))
 (:durative-action step66_remove_bell_pepper_seeds
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p66)) (at start (d65)))
  :effect (and (at start (not (p66))) (at end (step_done ?s)) (at end (d66))))
 (:durative-action step67_prepare_vinaigrette_base
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (p67)) (at start (d66)))
  :effect (and (at start (not (p67))) (at end (step_done ?s)) (at end (d67))))
 (:durative-action step68_dice_remaining_vegetables
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (p68)) (at start (d8)) (at start (d9)) (at start (d32)) (at start (d43)))
  :effect (and (at start (not (p68))) (at end (step_done ?s)) (at end (d68))))
 (:durative-action step69_combine_vegetables
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (p69)) (at start (d39)) (at start (d49)) (at start (d54)) (at start (d57)) (at start (d64)) (at start (d68)) (at start (d71)))
  :effect (and (at start (not (p69))) (at end (step_done ?s)) (at end (d69))))
 (:durative-action step70_prepare_pita
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (p70)) (at start (d4)) (at start (d16)) (at start (d34)) (at start (d39)) (at start (d62)))
  :effect (and (at start (not (p70))) (at end (step_done ?s)) (at end (d70))))
 (:durative-action step71_wash_scallions
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (at start (p71))
  :effect (and (at start (not (p71))) (at end (step_done ?s)) (at end (d71))))
 (:durative-action step72_add_cucumber
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (p72)) (at start (d25)) (at start (d57)) (at start (d64)))
  :effect (and (at start (not (p72))) (at end (step_done ?s)) (at end (d72))))
 (:durative-action step73_garnish_herbs
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p73)) (at start (d66)))
  :effect (and (at start (not (p73))) (at end (step_done ?s)) (at end (d73))))
 (:durative-action step74_deseed_red_pepper
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p74)) (at start (d5)))
  :effect (and (at start (not (p74))) (at end (step_done ?s)) (at end (d74))))
 (:durative-action step75_compost_scraps
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (p75)) (at start (d13)) (at start (d47)) (at start (d53)))
  :effect (and (at start (not (p75))) (at end (step_done ?s)) (at end (d75))))
 (:durative-action step76_find_red_wine_vinegar
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p76)) (at start (d16)) (at start (d20)))
  :effect (and (at start (not (p76))) (at end (step_done ?s)) (at end (d76))))
 (:durative-action step77_dice_shallots
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (p77)) (at start (d5)))
  :effect (and (at start (not (p77))) (at end (step_done ?s)) (at end (d77))))
 (:durative-action step78_take_feta
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (p78)) (at start (d20)))
  :effect (and (at start (not (p78))) (at end (step_done ?s)) (at end (d78))))
 (:durative-action step79_mix_all_ingredients
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (p79)) (at start (d16)) (at start (d22)) (at start (d37)) (at start (d38)) (at start (d44)))
  :effect (and (at start (not (p79))) (at end (step_done ?s)) (at end (d79))))
 (:durative-action step80_serve_salad
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (p80)) (at start (d27)) (at start (d52)) (at start (d73)))
  :effect (and (at start (not (p80))) (at end (step_done ?s)) (at end (d80))))
)