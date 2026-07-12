(define (domain melt-almond-bark)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step)
    (is_step4 ?s - step) (is_step5 ?s - step) (is_step6 ?s - step)
    (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step)
    (is_step10 ?s - step) (is_step11 ?s - step) (is_step12 ?s - step)
    (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step)
    (is_step19 ?s - step) (is_step20 ?s - step) (is_step21 ?s - step)
    (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step)
    (is_step25 ?s - step) (is_step26 ?s - step) (is_step27 ?s - step)
    (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (bark_unpacked) (bark_in_bowl) (bark_purchased)
    (turntable_cleaned) (knife_located) (bark_broken)
    (power_level_set) (microwave_plugged) (spatula_retrieved)
    (condensation_checked) (bowl_centered) (first_interval_completed)
    (workspace_cleared) (squares_on_board) (moisture_absent)
    (microwave_dry) (bark_inspected) (microwave_closed)
    (timer_programmed) (heat_distributed) (warm_bowl_removed)
    (cutting_board_washed) (bowl_in_microwave) (instructions_read)
    (expiration_checked) (bark_melted) (heat_workspace_selected)
    (bark_chopped) (parchment_prepared) (tools_organized)
  )

  (:durative-action unpack_bark
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (bark_purchased)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bark_unpacked))))

  (:durative-action place_chopped_bark_in_bowl
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (bark_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bark_in_bowl))))

  (:durative-action purchase_bark
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bark_purchased))))

  (:durative-action wipe_turntable
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (microwave_dry)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (turntable_cleaned))))

  (:durative-action locate_knife
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (workspace_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knife_located))))

  (:durative-action break_bark
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (bark_unpacked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bark_broken))))

  (:durative-action set_power_level
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (instructions_read)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (power_level_set))))

  (:durative-action plug_in_microwave
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (microwave_plugged))))

  (:durative-action retrieve_spatula
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (microwave_plugged)) (at start (heat_workspace_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (spatula_retrieved))))

  (:durative-action check_condensation
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (microwave_plugged)) (at start (timer_programmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (condensation_checked))))

  (:durative-action center_bowl
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (power_level_set)) (at start (moisture_absent)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowl_centered))))

  (:durative-action run_first_interval
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (microwave_closed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (first_interval_completed))))

  (:durative-action clear_workspace
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleared))))

  (:durative-action place_squares_on_board
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (bark_broken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (squares_on_board))))

  (:durative-action ensure_no_moisture
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (bark_in_bowl)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (moisture_absent))))

  (:durative-action verify_microwave_dry
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (cutting_board_washed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (microwave_dry))))

  (:durative-action inspect_bark
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (bark_unpacked)) (at start (microwave_plugged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bark_inspected))))

  (:durative-action close_microwave
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (tools_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (microwave_closed))))

  (:durative-action program_timer
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (bowl_centered)) (at start (tools_organized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (timer_programmed))))

  (:durative-action distribute_heat
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (bowl_in_microwave)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (heat_distributed))))

  (:durative-action remove_warm_bowl
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (first_interval_completed)) (at start (instructions_read)) (at start (heat_workspace_selected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (warm_bowl_removed))))

  (:durative-action wash_cutting_board
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (workspace_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cutting_board_washed))))

  (:durative-action place_bowl_in_microwave
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (turntable_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bowl_in_microwave))))

  (:durative-action read_instructions
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (instructions_read))))

  (:durative-action check_expiration
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (bark_chopped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (expiration_checked))))

  (:durative-action stir_bark
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (spatula_retrieved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bark_melted))))

  (:durative-action select_heat_workspace
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (heat_workspace_selected))))

  (:durative-action chop_bark
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (knife_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bark_chopped))))

  (:durative-action prepare_parchment
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (microwave_plugged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (parchment_prepared))))

  (:durative-action organize_tools
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (workspace_cleared)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tools_organized))))
)