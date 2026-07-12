(define (domain first-time-fishing)
(:requirements :typing :durative-actions)
(:types step)
(:predicates
 (step_pending ?s - step)
 (step_done ?s - step)
 (s1) (s2) (s3) (s4) (s5) (s6) (s7) (s8) (s9) (s10)
 (s11) (s12) (s13) (s14) (s15) (s16) (s17) (s18) (s19) (s20)
 (s21) (s22) (s23) (s24) (s25) (s26) (s27) (s28) (s29) (s30)
 (s31) (s32) (s33) (s34) (s35) (s36) (s37) (s38) (s39) (s40)
 (s41) (s42) (s43) (s44) (s45) (s46) (s47) (s48) (s49) (s50)
 (s51) (s52) (s53) (s54) (s55) (s56) (s57) (s58) (s59) (s60)
 (s61) (s62) (s63) (s64) (s65) (s66) (s67) (s68) (s69) (s70)
 (fishing_tried))

(:durative-action step1_purchase_guidebook
 :parameters () :duration (= ?duration 1800)
 :condition (and (at start (step_pending step1)) (at start (s6)) (at start (s14)))
 :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1))))
(:durative-action step2_research_habitats
 :parameters () :duration (= ?duration 3600)
 :condition (and (at start (step_pending step2)) (at start (s29)))
 :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2))))
(:durative-action step3_buy_tackle_box
 :parameters () :duration (= ?duration 1200)
 :condition (and (at start (step_pending step3)) (at start (s12)) (at start (s35)))
 :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3))))
(:durative-action step4_watch_rod_tutorials
 :parameters () :duration (= ?duration 2700)
 :condition (and (at start (step_pending step4)) (at start (s20)))
 :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4))))
(:durative-action step5_check_weather
 :parameters () :duration (= ?duration 300)
 :condition (and (at start (step_pending step5)) (at start (s6)))
 :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5))))
(:durative-action step6_apply_for_license
 :parameters () :duration (= ?duration 900)
 :condition (at start (step_pending step6))
 :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6))))
(:durative-action step7_practice_casting
 :parameters () :duration (= ?duration 3600)
 :condition (and (at start (step_pending step7)) (at start (s17)) (at start (s49)) (at start (s62)))
 :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7))))
(:durative-action step8_visit_bait_shop
 :parameters () :duration (= ?duration 1800)
 :condition (at start (step_pending step8))
 :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8))))
(:durative-action step9_buy_line
 :parameters () :duration (= ?duration 600)
 :condition (and (at start (step_pending step9)) (at start (s34)) (at start (s42)))
 :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9))))
(:durative-action step10_buy_sinkers
 :parameters () :duration (= ?duration 600)
 :condition (at start (step_pending step10))
 :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10))))
(:durative-action step11_select_lures
 :parameters () :duration (= ?duration 1500)
 :condition (and (at start (step_pending step11)) (at start (s32)) (at start (s68)))
 :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11))))
(:durative-action step12_organize_gear
 :parameters () :duration (= ?duration 2400)
 :condition (and (at start (step_pending step12)) (at start (s35)) (at start (s67)) (at start (s70)))
 :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12))))
(:durative-action step13_learn_clinch_knot
 :parameters () :duration (= ?duration 900)
 :condition (and (at start (step_pending step13)) (at start (s8)) (at start (s10)) (at start (s53)) (at start (s62)))
 :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13))))
(:durative-action step14_download_lake_map
 :parameters () :duration (= ?duration 600)
 :condition (at start (step_pending step14))
 :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14))))
(:durative-action step15_buy_folding_chair
 :parameters () :duration (= ?duration 1200)
 :condition (at start (step_pending step15))
 :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15))))
(:durative-action step16_assemble_rod
 :parameters () :duration (= ?duration 300)
 :condition (and (at start (step_pending step16)) (at start (s4)) (at start (s43)))
 :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16))))
(:durative-action step17_attach_reel
 :parameters () :duration (= ?duration 600)
 :condition (and (at start (step_pending step17)) (at start (s9)) (at start (s15)) (at start (s48)) (at start (s61)))
 :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17))))
(:durative-action step18_pack_cooler
 :parameters () :duration (= ?duration 900)
 :condition (and (at start (step_pending step18)) (at start (s14)) (at start (s51)) (at start (s67)))
 :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18))))
(:durative-action step19_check_boat_prices
 :parameters () :duration (= ?duration 600)
 :condition (and (at start (step_pending step19)) (at start (s20)))
 :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19))))
(:durative-action step20_read_beginner_blog
 :parameters () :duration (= ?duration 1200)
 :condition (at start (step_pending step20))
 :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20))))
(:durative-action step21_apply_sunscreen
 :parameters () :duration (= ?duration 300)
 :condition (and (at start (step_pending step21)) (at start (s23)) (at start (s41)) (at start (s54)) (at start (s59)))
 :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21))))
(:durative-action step22_set_up_fishing_spot
 :parameters () :duration (= ?duration 900)
 :condition (and (at start (step_pending step22)) (at start (s70)))
 :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22))))
(:durative-action step23_thread_line
 :parameters () :duration (= ?duration 600)
 :condition (and (at start (step_pending step23)) (at start (s30)) (at start (s46)) (at start (s55)) (at start (s68)))
 :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23))))
(:durative-action step24_buy_sunglasses
 :parameters () :duration (= ?duration 1800)
 :condition (and (at start (step_pending step24)) (at start (s34)))
 :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24))))
(:durative-action step25_pack_first_aid_kit
 :parameters () :duration (= ?duration 300)
 :condition (and (at start (step_pending step25)) (at start (s3)) (at start (s70)))
 :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25))))
(:durative-action step26_pack_pliers
 :parameters () :duration (= ?duration 300)
 :condition (and (at start (step_pending step26)) (at start (s6)) (at start (s42)) (at start (s62)) (at start (s68)))
 :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26))))
(:durative-action step27_drive_to_location
 :parameters () :duration (= ?duration 3600)
 :condition (and (at start (step_pending step27)) (at start (s19)) (at start (s39)) (at start (s40)) (at start (s42)) (at start (s54)))
 :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27))))
(:durative-action step28_string_reel_spool
 :parameters () :duration (= ?duration 1200)
 :condition (and (at start (step_pending step28)) (at start (s29)) (at start (s39)) (at start (s44)) (at start (s62)))
 :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28))))
(:durative-action step29_attach_bobber
 :parameters () :duration (= ?duration 120)
 :condition (and (at start (step_pending step29)) (at start (s4)) (at start (s6)) (at start (s14)) (at start (s16)) (at start (s59)))
 :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29))))
(:durative-action step30_bait_hook
 :parameters () :duration (= ?duration 120)
 :condition (and (at start (step_pending step30)) (at start (s27)) (at start (s36)) (at start (s38)) (at start (s66)) (at start (s67)) (at start (s70)))
 :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30))))
(:durative-action step31_buy_scaling_tool
 :parameters () :duration (= ?duration 600)
 :condition (at start (step_pending step31))
 :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31))))
(:durative-action step32_buy_fishing_net
 :parameters () :duration (= ?duration 900)
 :condition (at start (step_pending step32))
 :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32))))
(:durative-action step33_cast_line
 :parameters () :duration (= ?duration 60)
 :condition (and (at start (step_pending step33)) (at start (s7)) (at start (s39)) (at start (s51)) (at start (s55)) (at start (s59)))
 :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33))))
(:durative-action step34_buy_hooks
 :parameters () :duration (= ?duration 600)
 :condition (and (at start (step_pending step34)) (at start (s47)) (at start (s55)) (at start (s62)))
 :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34))))
(:durative-action step35_secure_hook
 :parameters () :duration (= ?duration 300)
 :condition (and (at start (step_pending step35)) (at start (s28)) (at start (s54)) (at start (s68)))
 :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35))))
(:durative-action step36_watch_fish_handling_video
 :parameters () :duration (= ?duration 600)
 :condition (at start (step_pending step36))
 :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36))))
(:durative-action step37_set_drag
 :parameters () :duration (= ?duration 180)
 :condition (and (at start (step_pending step37)) (at start (s68)))
 :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37))))
(:durative-action step38_learn_nibble
 :parameters () :duration (= ?duration 900)
 :condition (and (at start (step_pending step38)) (at start (s34)) (at start (s64)))
 :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38))))
(:durative-action step39_attach_leader
 :parameters () :duration (= ?duration 600)
 :condition (and (at start (step_pending step39)) (at start (s4)) (at start (s15)) (at start (s62)) (at start (s68)))
 :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39))))
(:durative-action step40_ask_friend
 :parameters () :duration (= ?duration 300)
 :condition (at start (step_pending step40))
 :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40))))
(:durative-action step41_adjust_reel_tension
 :parameters () :duration (= ?duration 300)
 :condition (and (at start (step_pending step41)) (at start (s17)) (at start (s28)) (at start (s51)) (at start (s61)))
 :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41))))
(:durative-action step42_check_size_limits
 :parameters () :duration (= ?duration 900)
 :condition (at start (step_pending step42))
 :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42))))
(:durative-action step43_clean_rod_and_reel
 :parameters () :duration (= ?duration 600)
 :condition (and (at start (step_pending step43)) (at start (s4)))
 :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43))))
(:durative-action step44_buy_tape_measure
 :parameters () :duration (= ?duration 300)
 :condition (and (at start (step_pending step44)) (at start (s9)) (at start (s20)))
 :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44))))
(:durative-action step45_find_trout_recipe
 :parameters () :duration (= ?duration 1200)
 :condition (at start (step_pending step45))
 :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45))))
(:durative-action step46_check_rod_tip
 :parameters () :duration (= ?duration 120)
 :condition (at start (step_pending step46))
 :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46))))
(:durative-action step47_check_water_charts
 :parameters () :duration (= ?duration 600)
 :condition (and (at start (step_pending step47)) (at start (s5)) (at start (s43)))
 :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47))))
(:durative-action step48_buy_brimmed_hat
 :parameters () :duration (= ?duration 900)
 :condition (at start (step_pending step48))
 :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48))))
(:durative-action step49_lubricate_reel
 :parameters () :duration (= ?duration 900)
 :condition (and (at start (step_pending step49)) (at start (s16)) (at start (s43)) (at start (s55)) (at start (s61)))
 :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49))))
(:durative-action step50_borrow_life_jacket
 :parameters () :duration (= ?duration 600)
 :condition (at start (step_pending step50))
 :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50))))
(:durative-action step51_buy_bucket
 :parameters () :duration (= ?duration 600)
 :condition (and (at start (step_pending step51)) (at start (s8)) (at start (s15)))
 :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51))))
(:durative-action step52_charge_phone
 :parameters () :duration (= ?duration 7200)
 :condition (and (at start (step_pending step52)) (at start (s14)))
 :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52))))
(:durative-action step53_test_line_strength
 :parameters () :duration (= ?duration 120)
 :condition (and (at start (step_pending step53)) (at start (s39)) (at start (s48)) (at start (s61)))
 :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53))))
(:durative-action step54_pack_lunch
 :parameters () :duration (= ?duration 1200)
 :condition (at start (step_pending step54))
 :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54))))
(:durative-action step55_buy_waterproof_boots
 :parameters () :duration (= ?duration 2400)
 :condition (at start (step_pending step55))
 :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55))))
(:durative-action step56_read_catch_release
 :parameters () :duration (= ?duration 1200)
 :condition (and (at start (step_pending step56)) (at start (s11)) (at start (s46)))
 :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56))))
(:durative-action step57_wait_for_bite
 :parameters () :duration (= ?duration 7200)
 :condition (and (at start (step_pending step57)) (at start (s32)) (at start (s47)) (at start (s51)) (at start (s69)))
 :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57)) (at end (fishing_tried))))
(:durative-action step58_rent_motorboat
 :parameters () :duration (= ?duration 1800)
 :condition (and (at start (step_pending step58)) (at start (s20)) (at start (s54)) (at start (s65)))
 :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58))))
(:durative-action step59_put_on_jacket
 :parameters () :duration (= ?duration 120)
 :condition (and (at start (step_pending step59)) (at start (s15)) (at start (s36)) (at start (s38)) (at start (s68)))
 :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59))))
(:durative-action step60_set_up_radio
 :parameters () :duration (= ?duration 300)
 :condition (and (at start (step_pending step60)) (at start (s32)) (at start (s36)) (at start (s45)) (at start (s50)))
 :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60))))
(:durative-action step61_check_line_for_frays
 :parameters () :duration (= ?duration 300)
 :condition (and (at start (step_pending step61)) (at start (s38)) (at start (s43)) (at start (s62)))
 :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (s61))))
(:durative-action step62_browse_sporting_store
 :parameters () :duration (= ?duration 3600)
 :condition (at start (step_pending step62))
 :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (s62))))
(:durative-action step63_watch_bobber
 :parameters () :duration (= ?duration 3600)
 :condition (and (at start (step_pending step63)) (at start (s6)) (at start (s13)) (at start (s33)) (at start (s38)) (at start (s39)) (at start (s50)) (at start (s62)))
 :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (s63))))
(:durative-action step64_buy_fish_scale
 :parameters () :duration (= ?duration 900)
 :condition (and (at start (step_pending step64)) (at start (s42)) (at start (s47)))
 :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (s64))))
(:durative-action step65_check_boat_safety
 :parameters () :duration (= ?duration 900)
 :condition (at start (step_pending step65))
 :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (s65))))
(:durative-action step66_sharpen_hooks
 :parameters () :duration (= ?duration 600)
 :condition (and (at start (step_pending step66)) (at start (s31)) (at start (s38)))
 :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (s66))))
(:durative-action step67_buy_fishing_gloves
 :parameters () :duration (= ?duration 900)
 :condition (and (at start (step_pending step67)) (at start (s6)) (at start (s9)))
 :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (s67))))
(:durative-action step68_select_weight
 :parameters () :duration (= ?duration 600)
 :condition (and (at start (step_pending step68)) (at start (s34)))
 :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (s68))))
(:durative-action step69_hook_fish
 :parameters () :duration (= ?duration 10)
 :condition (and (at start (step_pending step69)) (at start (s38)))
 :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (s69))))
(:durative-action step70_wind_line
 :parameters () :duration (= ?duration 600)
 :condition (and (at start (step_pending step70)) (at start (s10)) (at start (s11)) (at start (s35)))
 :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (s70))))
)