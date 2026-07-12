(define (domain squirt-gun-painting)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step) (is_step4 ?s - step)
    (is_step5 ?s - step) (is_step6 ?s - step) (is_step7 ?s - step) (is_step8 ?s - step)
    (is_step9 ?s - step) (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step) (is_step16 ?s - step)
    (is_step17 ?s - step) (is_step18 ?s - step) (is_step19 ?s - step) (is_step20 ?s - step)
    (is_step21 ?s - step) (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step) (is_step28 ?s - step)
    (is_step29 ?s - step) (is_step30 ?s - step) (is_step31 ?s - step) (is_step32 ?s - step)
    (is_step33 ?s - step) (is_step34 ?s - step) (is_step35 ?s - step) (is_step36 ?s - step)
    (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step) (is_step40 ?s - step)
    (is_step41 ?s - step) (is_step42 ?s - step) (is_step43 ?s - step) (is_step44 ?s - step)
    (is_step45 ?s - step) (is_step46 ?s - step) (is_step47 ?s - step) (is_step48 ?s - step)
    (is_step49 ?s - step) (is_step50 ?s - step) (is_step51 ?s - step) (is_step52 ?s - step)
    (is_step53 ?s - step) (is_step54 ?s - step) (is_step55 ?s - step) (is_step56 ?s - step)
    (is_step57 ?s - step) (is_step58 ?s - step) (is_step59 ?s - step) (is_step60 ?s - step)
    (c1) (c2) (c3) (c4) (c5) (c6) (c7) (c8) (c9) (c10)
    (c11) (c12) (c13) (c14) (c15) (c16) (c17) (c18) (c19) (c20)
    (c21) (c22) (c23) (c24) (c25) (c26) (c27) (c28) (c29) (c30)
    (c31) (c32) (c33) (c34) (c35) (c36) (c37) (c38) (c39) (c40)
    (c41) (c42) (c43) (c44) (c45) (c46) (c47) (c48) (c49) (c50)
    (c51) (c52) (c53) (c54) (c55) (c56) (c57) (c58) (c59) (c60))

  (:durative-action attach_canvas_to_rack
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (c11)) (at start (c25)) (at start (c38)) (at start (c60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c1))))
  (:durative-action mix_turquoise
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (c9)) (at start (c28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c2))))
  (:durative-action put_on_poncho
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (c39)) (at start (c54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c3))))
  (:durative-action tape_canvas_edges
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (c28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c4))))
  (:durative-action lay_drop_cloth
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (c55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c5))))
  (:durative-action fill_first_gun
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (c15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c6))))
  (:durative-action photograph_artwork
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (c5)) (at start (c60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c7))))
  (:durative-action clean_nozzles
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (c30)) (at start (c52)) (at start (c56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c8))))
  (:durative-action dilute_paint
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (c11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c9))))
  (:durative-action label_canvas
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (c14)) (at start (c29)) (at start (c32)) (at start (c35)) (at start (c60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c10))))
  (:durative-action gather_paints
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c11))))
  (:durative-action unpack_guns
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (c35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c12))))
  (:durative-action organize_paints
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (c30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c13))))
  (:durative-action sketch_outline
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (c31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c14))))
  (:durative-action test_spray_pattern
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (c11)) (at start (c12)) (at start (c40)) (at start (c48)) (at start (c56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c15))))
  (:durative-action select_outdoor_spot
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (c27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c16))))
  (:durative-action dispose_tape
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (c38)) (at start (c53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c17))))
  (:durative-action wipe_table
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (c36)) (at start (c38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c18))))
  (:durative-action position_canvas
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (c4)) (at start (c51)) (at start (c56)) (at start (c58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c19))))
  (:durative-action fill_rinse_bucket
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (c35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c20))))
  (:durative-action measure_canvas
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (c31)) (at start (c47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c21))))
  (:durative-action secure_drop_cloth
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (c55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c22))))
  (:durative-action shake_paints
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (c56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c23))))
  (:durative-action prime_triggers
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (c28)) (at start (c40)) (at start (c48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c24))))
  (:durative-action check_weather
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (c29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c25))))
  (:durative-action calculate_center
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (c25)) (at start (c42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c26))))
  (:durative-action set_perimeter
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (c44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c27))))
  (:durative-action buy_squirt_guns
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c28))))
  (:durative-action buy_canvas
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c29))))
  (:durative-action clear_garage
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (c32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c30))))
  (:durative-action design_pattern
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c31))))
  (:durative-action invite_friends
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)) (at start (c48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c32))))
  (:durative-action set_timer
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)) (at start (c47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c33))))
  (:durative-action begin_firing
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)) (at start (c6)) (at start (c19)) (at start (c32)) (at start (c42)) (at start (c59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c34))))
  (:durative-action prepare_cleaning_station
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c35))))
  (:durative-action remove_poncho
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)) (at start (c37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c36))))
  (:durative-action refill_guns
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)) (at start (c6)) (at start (c30)) (at start (c48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c37))))
  (:durative-action allow_paint_to_settle
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)) (at start (c20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c38))))
  (:durative-action put_on_goggles
    :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)) (at start (c50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c39))))
  (:durative-action mix_orange_paint
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)) (at start (c31)) (at start (c51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c40))))
  (:durative-action lay_newspapers
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step41 ?s)) (at start (c35)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c41))))
  (:durative-action mount_canvas_frame
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step42 ?s)) (at start (c21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c42))))
  (:durative-action check_gun_pressure
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step43 ?s)) (at start (c50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c43))))
  (:durative-action set_up_easel
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step44 ?s)) (at start (c47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c44))))
  (:durative-action sign_canvas
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step45 ?s)) (at start (c4)) (at start (c60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c45))))
  (:durative-action inspect_guns
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step46 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c46))))
  (:durative-action choose_palette
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step47 ?s)) (at start (c31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c47))))
  (:durative-action buy_drop_cloths
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step48 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c48))))
  (:durative-action fire_first_burst
    :parameters (?s - step) :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step49 ?s)) (at start (c3)) (at start (c16)) (at start (c31)) (at start (c39)) (at start (c41)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c49))))
  (:durative-action locate_safety_gear
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step50 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c50))))
  (:durative-action stir_paints
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step51 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c51))))
  (:durative-action adjust_nozzles
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step52 ?s)) (at start (c15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c52))))
  (:durative-action prepare_tape
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step53 ?s)) (at start (c4)) (at start (c28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c53))))
  (:durative-action put_on_old_clothes
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step54 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c54))))
  (:durative-action sweep_area
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step55 ?s)) (at start (c24)) (at start (c32)) (at start (c47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c55))))
  (:durative-action open_paint_containers
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step56 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c56))))
  (:durative-action store_clean_guns
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step57 ?s)) (at start (c8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c57))))
  (:durative-action check_paint_consistency
    :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step58 ?s)) (at start (c12)) (at start (c16)) (at start (c46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c58))))
  (:durative-action check_easel_stability
    :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step59 ?s)) (at start (c50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c59))))
  (:durative-action finalize_design
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step60 ?s)) (at start (c51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (c60))))
)