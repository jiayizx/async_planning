(define (domain ride-horse)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step) (step_done ?s - step)
    (for1 ?s - step) (for2 ?s - step) (for3 ?s - step) (for4 ?s - step) (for5 ?s - step)
    (for6 ?s - step) (for7 ?s - step) (for8 ?s - step) (for9 ?s - step) (for10 ?s - step)
    (for11 ?s - step) (for12 ?s - step) (for13 ?s - step) (for14 ?s - step) (for15 ?s - step)
    (for16 ?s - step) (for17 ?s - step) (for18 ?s - step) (for19 ?s - step) (for20 ?s - step)
    (for21 ?s - step) (for22 ?s - step) (for23 ?s - step) (for24 ?s - step) (for25 ?s - step)
    (for26 ?s - step) (for27 ?s - step) (for28 ?s - step) (for29 ?s - step) (for30 ?s - step)
    (for31 ?s - step) (for32 ?s - step) (for33 ?s - step) (for34 ?s - step) (for35 ?s - step)
    (for36 ?s - step) (for37 ?s - step) (for38 ?s - step) (for39 ?s - step) (for40 ?s - step)
    (for41 ?s - step) (for42 ?s - step) (for43 ?s - step) (for44 ?s - step) (for45 ?s - step)
    (for46 ?s - step) (for47 ?s - step) (for48 ?s - step) (for49 ?s - step) (for50 ?s - step)
    (for51 ?s - step) (for52 ?s - step) (for53 ?s - step) (for54 ?s - step) (for55 ?s - step)
    (for56 ?s - step) (for57 ?s - step) (for58 ?s - step) (for59 ?s - step) (for60 ?s - step)
    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
    (done41) (riding_complete) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
    (done51) (done52) (done53) (done54) (done55) (done56) (done57) (done58) (done59) (done60))

  (:durative-action step1_locate_horse
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (for1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done1))))
  (:durative-action step2_halter_horse
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for2 ?s)) (at start (done1)) (at start (done5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done2))))
  (:durative-action step3_check_saddle_stitching
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done3))))
  (:durative-action step4_clean_saddle_seat
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for4 ?s)) (at start (done6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done4))))
  (:durative-action step5_gather_grooming_tools
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (for5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done5))))
  (:durative-action step6_apply_leather_conditioner
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (for6 ?s)) (at start (done16)) (at start (done48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done6))))
  (:durative-action step7_retrieve_lead_rope
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done7))))
  (:durative-action step8_lead_to_grooming_stall
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for8 ?s)) (at start (done1)) (at start (done7)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done8))))
  (:durative-action step9_inspect_bridle_reins
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for9 ?s)) (at start (done43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done9))))
  (:durative-action step10_brush_neck_shoulders
    :parameters (?s - step) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (for10 ?s)) (at start (done5)) (at start (done19)) (at start (done49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done10))))
  (:durative-action step11_adjust_stirrups
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for11 ?s)) (at start (done29)) (at start (done57)) (at start (done58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done11))))
  (:durative-action step12_check_cinch_buckle
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for12 ?s)) (at start (done57)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done12))))
  (:durative-action step13_organize_saddle_bags
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (for13 ?s)) (at start (done32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done13))))
  (:durative-action step14_locate_hoof_pick
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done14))))
  (:durative-action step15_brush_hindquarters
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (for15 ?s)) (at start (done10)) (at start (done17)) (at start (done29)) (at start (done47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done15))))
  (:durative-action step16_curry_comb_back
    :parameters (?s - step) :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (for16 ?s)) (at start (done5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done16))))
  (:durative-action step17_clean_face
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (for17 ?s)) (at start (done2)) (at start (done19)) (at start (done53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done17))))
  (:durative-action step18_pick_hooves
    :parameters (?s - step) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (for18 ?s)) (at start (done14)) (at start (done53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done18))))
  (:durative-action step19_untangle_mane
    :parameters (?s - step) :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (for19 ?s)) (at start (done32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done19))))
  (:durative-action step20_apply_fly_spray
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (for20 ?s)) (at start (done21)) (at start (done25)) (at start (done32)) (at start (done46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done20))))
  (:durative-action step21_brush_legs
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (for21 ?s)) (at start (done1)) (at start (done16)) (at start (done25)) (at start (done29)) (at start (done30)) (at start (done31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done21))))
  (:durative-action step22_place_saddle_pad
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for22 ?s)) (at start (done24)) (at start (done38)) (at start (done48)) (at start (done52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done22))))
  (:durative-action step23_check_heat_swelling
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for23 ?s)) (at start (done32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done23))))
  (:durative-action step24_position_saddle
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for24 ?s)) (at start (done1)) (at start (done38)) (at start (done48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done24))))
  (:durative-action step25_retrieve_fly_spray_bottle
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for25 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done25))))
  (:durative-action step26_brush_belly
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for26 ?s)) (at start (done10)) (at start (done18)) (at start (done23)) (at start (done52)) (at start (done53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done26))))
  (:durative-action step27_put_on_boots
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (for27 ?s)) (at start (done53)) (at start (done59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done27))))
  (:durative-action step28_find_helmet
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for28 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done28))))
  (:durative-action step29_check_shoes
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (for29 ?s)) (at start (done18)) (at start (done41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done29))))
  (:durative-action step30_comb_tail
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (for30 ?s)) (at start (done18)) (at start (done41)) (at start (done47)) (at start (done48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done30))))
  (:durative-action step31_finishing_mitt
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for31 ?s)) (at start (done9)) (at start (done16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done31))))
  (:durative-action step32_spray_legs_with_water
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for32 ?s)) (at start (done18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done32))))
  (:durative-action step33_retrieve_bridle
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for33 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done33))))
  (:durative-action step34_check_bit_cleanliness
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for34 ?s)) (at start (done30)) (at start (done32)) (at start (done33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done34))))
  (:durative-action step35_smooth_pad_edges
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (for35 ?s)) (at start (done22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done35))))
  (:durative-action step36_fasten_cinch
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (for36 ?s)) (at start (done29)) (at start (done33)) (at start (done49)) (at start (done54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done36))))
  (:durative-action step37_get_mounting_block
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for37 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done37))))
  (:durative-action step38_brush_chest
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for38 ?s)) (at start (done10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done38))))
  (:durative-action step39_put_on_bridle
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (for39 ?s)) (at start (done7)) (at start (done26)) (at start (done44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done39))))
  (:durative-action step40_inspect_girth_straps
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for40 ?s)) (at start (done3)) (at start (done4)) (at start (done48)) (at start (done57)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done40))))
  (:durative-action step41_clean_dock_area
    :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (for41 ?s)) (at start (done32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done41))))
  (:durative-action step42_mount_horse
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (for42 ?s)) (at start (done26)) (at start (done39)) (at start (done55)) (at start (done56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (riding_complete))))
  (:durative-action step43_clean_bit
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (for43 ?s)) (at start (done2)) (at start (done27)) (at start (done28)) (at start (done54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done43))))
  (:durative-action step44_check_browband
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for44 ?s)) (at start (done30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done44))))
  (:durative-action step45_fasten_helmet_strap
    :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (for45 ?s)) (at start (done28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done45))))
  (:durative-action step46_find_fly_spray
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for46 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done46))))
  (:durative-action step47_check_grooming_kit
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for47 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done47))))
  (:durative-action step48_apply_hoof_dressing
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (for48 ?s)) (at start (done41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done48))))
  (:durative-action step49_retrieve_body_brush
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for49 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done49))))
  (:durative-action step50_secure_saddle_bags
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for50 ?s)) (at start (done13)) (at start (done60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done50))))
  (:durative-action step51_check_throatlatch
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for51 ?s)) (at start (done15)) (at start (done24)) (at start (done34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done51))))
  (:durative-action step52_check_saddle_balance
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for52 ?s)) (at start (done5)) (at start (done37)) (at start (done44)) (at start (done45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done52))))
  (:durative-action step53_check_mood
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for53 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done53))))
  (:durative-action step54_wipe_stirrup_irons
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for54 ?s)) (at start (done14)) (at start (done48)) (at start (done49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done54))))
  (:durative-action step55_adjust_gloves
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for55 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done55))))
  (:durative-action step56_check_curb_chain
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for56 ?s)) (at start (done51)) (at start (done58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done56))))
  (:durative-action step57_final_cinch_tightening
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for57 ?s)) (at start (done5)) (at start (done41)) (at start (done45)) (at start (done49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done57))))
  (:durative-action step58_put_on_safety_vest
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (for58 ?s)) (at start (done47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done58))))
  (:durative-action step59_locate_riding_crop
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (for59 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done59))))
  (:durative-action step60_check_first_aid_kit
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (for60 ?s)) (at start (done5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done60))))
)