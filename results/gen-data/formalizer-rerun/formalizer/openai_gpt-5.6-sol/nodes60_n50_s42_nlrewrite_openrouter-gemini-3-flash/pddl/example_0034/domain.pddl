(define (domain carrot-cake-decoration)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (decoration_complete) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
  (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60)
  (pending1) (pending2) (pending3) (pending4) (pending5) (pending6) (pending7) (pending8) (pending9) (pending10)
  (pending11) (pending12) (pending13) (pending14) (pending15) (pending16) (pending17) (pending18) (pending19) (pending20)
  (pending21) (pending22) (pending23) (pending24) (pending25) (pending26) (pending27) (pending28) (pending29) (pending30)
  (pending31) (pending32) (pending33) (pending34) (pending35) (pending36) (pending37) (pending38) (pending39) (pending40)
  (pending41) (pending42) (pending43) (pending44) (pending45) (pending46) (pending47) (pending48) (pending49) (pending50)
  (pending51) (pending52) (pending53) (pending54) (pending55) (pending56) (pending57) (pending58) (pending59) (pending60))

 (:durative-action step1_whip_cream
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (pending1)) (at start (p9)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending1))) (at end (step_done ?s)) (at end (p1))))
 (:durative-action step2_print_photo
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (pending2)) (at start (p14)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending2))) (at end (step_done ?s)) (at end (p2))))
 (:durative-action step3_final_frosting
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (pending3)) (at start (p4)) (at start (p6)) (at start (p14)) (at start (p47)) (at start (p51)) (at start (p52)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending3))) (at end (step_done ?s)) (at end (p3))))
 (:durative-action step4_sift_sugar
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (pending4)) (at start (p56)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending4))) (at end (step_done ?s)) (at end (p4))))
 (:durative-action step5_dye_orange
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (pending5)) (at start (p31)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending5))) (at end (step_done ?s)) (at end (p5))))
 (:durative-action step6_beat_butter
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (pending6)) (at start (p12)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending6))) (at end (step_done ?s)) (at end (p6))))
 (:durative-action step7_mix_vanilla
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (pending7)) (at start (p4)) (at start (p52)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending7))) (at end (step_done ?s)) (at end (p7))))
 (:durative-action step8_assemble_layers
  :parameters (?s - step) :duration (= ?duration 720)
  :condition (and (at start (step_pending ?s)) (at start (pending8)) (at start (p6)) (at start (p7)) (at start (p12)) (at start (p19)) (at start (p43)) (at start (p47)) (at start (p60)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending8))) (at end (step_done ?s)) (at end (p8))))
 (:durative-action step9_chill_bowl
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (pending9)) (at start (p13)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending9))) (at end (step_done ?s)) (at end (p9))))
 (:durative-action step10_toast_pecans
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (pending10)) (at start (p60)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending10))) (at end (step_done ?s)) (at end (p10))))
 (:durative-action step11_pipe_carrots
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (pending11)) (at start (p25)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending11))) (at end (step_done ?s)) (at end (p11))))
 (:durative-action step12_combine_butter_sugar
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (pending12)) (at start (p17)) (at start (p30)) (at start (p41)) (at start (p42)) (at start (p52)) (at start (p55)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending12))) (at end (step_done ?s)) (at end (p12))))
 (:durative-action step13_soften_cream_cheese
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (pending13)) (at start (p28)) (at start (p37)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending13))) (at end (step_done ?s)) (at end (p13))))
 (:durative-action step14_level_layers
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (pending14)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending14))) (at end (step_done ?s)) (at end (p14))))
 (:durative-action step15_prepare_piping_bags
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (pending15)) (at start (p33)) (at start (p41)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending15))) (at end (step_done ?s)) (at end (p15))))
 (:durative-action step16_press_walnuts
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (pending16)) (at start (p8)) (at start (p37)) (at start (p47)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending16))) (at end (step_done ?s)) (at end (p16))))
 (:durative-action step17_organize_tools
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (pending17)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending17))) (at end (step_done ?s)) (at end (p17))))
 (:durative-action step18_cool_pecans
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (pending18)) (at start (p10)) (at start (p27)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending18))) (at end (step_done ?s)) (at end (p18))))
 (:durative-action step19_fold_whipped_cream
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (pending19)) (at start (p1)) (at start (p43)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending19))) (at end (step_done ?s)) (at end (p19))))
 (:durative-action step20_sieve_coloring
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (pending20)) (at start (p25)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending20))) (at end (step_done ?s)) (at end (p20))))
 (:durative-action step21_grind_pecans
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (pending21)) (at start (p10)) (at start (p55)) (at start (p56)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending21))) (at end (step_done ?s)) (at end (p21))))
 (:durative-action step22_clean_workstation
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (pending22)) (at start (p17)) (at start (p42)) (at start (p49)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending22))) (at end (step_done ?s)) (at end (decoration_complete))))
 (:durative-action step23_place_on_board
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (pending23)) (at start (p7)) (at start (p15)) (at start (p25)) (at start (p39)) (at start (p47)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending23))) (at end (step_done ?s)) (at end (p23))))
 (:durative-action step24_sketch_layout
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (pending24)) (at start (p31)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending24))) (at end (step_done ?s)) (at end (p24))))
 (:durative-action step25_blend_cream_cheese
  :parameters (?s - step) :duration (= ?duration 360)
  :condition (and (at start (step_pending ?s)) (at start (pending25)) (at start (p9)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending25))) (at end (step_done ?s)) (at end (p25))))
 (:durative-action step26_grate_nutmeg
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (pending26)) (at start (p56)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending26))) (at end (step_done ?s)) (at end (p26))))
 (:durative-action step27_whip_cheese_butter
  :parameters (?s - step) :duration (= ?duration 420)
  :condition (and (at start (step_pending ?s)) (at start (pending27)) (at start (p13)) (at start (p28)) (at start (p34)) (at start (p38)) (at start (p57)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending27))) (at end (step_done ?s)) (at end (p27))))
 (:durative-action step28_purchase_ingredients
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (pending28)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending28))) (at end (step_done ?s)) (at end (p28))))
 (:durative-action step29_zest_orange
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (pending29)) (at start (p57)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending29))) (at end (step_done ?s)) (at end (p29))))
 (:durative-action step30_measure_sugar
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (pending30)) (at start (p9)) (at start (p13)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending30))) (at end (step_done ?s)) (at end (p30))))
 (:durative-action step31_set_aside_frosting
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (pending31)) (at start (p56)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending31))) (at end (step_done ?s)) (at end (p31))))
 (:durative-action step32_practice_piping
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (pending32)) (at start (p21)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending32))) (at end (step_done ?s)) (at end (p32))))
 (:durative-action step33_sterilize_tips
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (pending33)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending33))) (at end (step_done ?s)) (at end (p33))))
 (:durative-action step34_soften_butter
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (pending34)) (at start (p48)) (at start (p60)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending34))) (at end (step_done ?s)) (at end (p34))))
 (:durative-action step35_prepare_orange_icing
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (pending35)) (at start (p24)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending35))) (at end (step_done ?s)) (at end (p35))))
 (:durative-action step36_sift_cinnamon
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (pending36)) (at start (p4)) (at start (p48)) (at start (p52)) (at start (p56)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending36))) (at end (step_done ?s)) (at end (p36))))
 (:durative-action step37_unpack_supplies
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (pending37)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending37))) (at end (step_done ?s)) (at end (p37))))
 (:durative-action step38_calibrate_scale
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (pending38)) (at start (p17)) (at start (p19)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending38))) (at end (step_done ?s)) (at end (p38))))
 (:durative-action step39_apply_crumb_coat
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (pending39)) (at start (p6)) (at start (p9)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending39))) (at end (step_done ?s)) (at end (p39))))
 (:durative-action step40_mix_orange_zest
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (pending40)) (at start (p9)) (at start (p29)) (at start (p37)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending40))) (at end (step_done ?s)) (at end (p40))))
 (:durative-action step41_whisk_sugar
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (pending41)) (at start (p30)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending41))) (at end (step_done ?s)) (at end (p41))))
 (:durative-action step42_prepare_syrup
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (pending42)) (at start (p28)) (at start (p43)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending42))) (at end (step_done ?s)) (at end (p42))))
 (:durative-action step43_retrieve_layers
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (pending43)) (at start (p37)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending43))) (at end (step_done ?s)) (at end (p43))))
 (:durative-action step44_measure_layers
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (pending44)) (at start (p28)) (at start (p41)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending44))) (at end (step_done ?s)) (at end (p44))))
 (:durative-action step45_dye_green
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (pending45)) (at start (p5)) (at start (p8)) (at start (p19)) (at start (p55)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending45))) (at end (step_done ?s)) (at end (p45))))
 (:durative-action step46_check_coloring
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (pending46)) (at start (p37)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending46))) (at end (step_done ?s)) (at end (p46))))
 (:durative-action step47_slice_layers
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (pending47)) (at start (p56)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending47))) (at end (step_done ?s)) (at end (p47))))
 (:durative-action step48_warm_eggs_butter
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (pending48)) (at start (p60)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending48))) (at end (step_done ?s)) (at end (p48))))
 (:durative-action step49_pipe_stems
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (pending49)) (at start (p6)) (at start (p18)) (at start (p21)) (at start (p31)) (at start (p45)) (at start (p56)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending49))) (at end (step_done ?s)) (at end (p49))))
 (:durative-action step50_prepare_green_bag
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (pending50)) (at start (p31)) (at start (p45)) (at start (p57)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending50))) (at end (step_done ?s)) (at end (p50))))
 (:durative-action step51_fill_gaps
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (pending51)) (at start (p14)) (at start (p54)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending51))) (at end (step_done ?s)) (at end (p51))))
 (:durative-action step52_beat_frosting
  :parameters (?s - step) :duration (= ?duration 360)
  :condition (and (at start (step_pending ?s)) (at start (pending52)) (at start (p4)) (at start (p20)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending52))) (at end (step_done ?s)) (at end (p52))))
 (:durative-action step53_test_green_icing
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (pending53)) (at start (p34)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending53))) (at end (step_done ?s)) (at end (p53))))
 (:durative-action step54_brush_crumbs
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (pending54)) (at start (p14)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending54))) (at end (step_done ?s)) (at end (p54))))
 (:durative-action step55_melt_chocolate
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (pending55)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending55))) (at end (step_done ?s)) (at end (p55))))
 (:durative-action step56_clean_paddles
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (pending56)) (at start (p37)) (at start (p60)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending56))) (at end (step_done ?s)) (at end (p56))))
 (:durative-action step57_beat_cheese_high
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (pending57)) (at start (p13)) (at start (p26)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending57))) (at end (step_done ?s)) (at end (p57))))
 (:durative-action step58_load_green_bag
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (pending58)) (at start (p45)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending58))) (at end (step_done ?s)) (at end (p58))))
 (:durative-action step59_sprinkle_nutmeg
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (pending59)) (at start (p25)) (at start (p36)) (at start (p57)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending59))) (at end (step_done ?s)) (at end (p59))))
 (:durative-action step60_clear_counter
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (pending60)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (pending60))) (at end (step_done ?s)) (at end (p60))))
)