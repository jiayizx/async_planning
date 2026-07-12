(define (domain football-game-preparation)
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
    (playbook_reviewed) (transport_scheduled) (medical_kits_packed)
    (game_prepared) (turf_inspected) (hydration_stations_ready)
    (officials_coordinated) (pa_system_tested) (game_balls_inflated)
    (stretching_completed) (coin_toss_completed) (uniforms_distributed)
    (security_confirmed) (scoreboard_calibrated) (stadium_gates_opened)
    (player_weights_recorded) (eligibility_verified) (equipment_trunk_organized)
    (equipment_inventoried) (ball_boy_rotation_ready) (bus_route_finalized)
    (meal_vouchers_distributed) (special_teams_drills_completed)
    (walkthrough_completed) (yard_markers_positioned) (light_jog_completed)
    (individual_warmups_completed) (team_clocks_synchronized)
    (ankles_taped) (anthem_and_introductions_completed)
  )

  (:durative-action review_playbook
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (eligibility_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (playbook_reviewed))))

  (:durative-action schedule_transport
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (transport_scheduled))))

  (:durative-action pack_medical_kits
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (uniforms_distributed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (medical_kits_packed))))

  (:durative-action give_locker_room_speech
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (eligibility_verified)) (at start (ankles_taped)) (at start (anthem_and_introductions_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (game_prepared))))

  (:durative-action inspect_turf
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (turf_inspected))))

  (:durative-action set_up_hydration
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (ball_boy_rotation_ready)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hydration_stations_ready))))

  (:durative-action coordinate_officials
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (security_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (officials_coordinated))))

  (:durative-action test_pa_system
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (scoreboard_calibrated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pa_system_tested))))

  (:durative-action inflate_game_balls
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (game_balls_inflated))))

  (:durative-action perform_stretching
    :parameters (?s - step) :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (light_jog_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stretching_completed))))

  (:durative-action conduct_coin_toss
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (walkthrough_completed)) (at start (ankles_taped)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coin_toss_completed))))

  (:durative-action distribute_uniforms
    :parameters (?s - step) :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (equipment_trunk_organized)) (at start (meal_vouchers_distributed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (uniforms_distributed))))

  (:durative-action confirm_security
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (security_confirmed))))

  (:durative-action calibrate_scoreboard
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (scoreboard_calibrated))))

  (:durative-action open_stadium_gates
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (turf_inspected)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stadium_gates_opened))))

  (:durative-action record_player_weights
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (walkthrough_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (player_weights_recorded))))

  (:durative-action verify_eligibility
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (security_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (eligibility_verified))))

  (:durative-action organize_equipment_trunk
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (equipment_inventoried)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (equipment_trunk_organized))))

  (:durative-action inventory_equipment
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (equipment_inventoried))))

  (:durative-action prepare_ball_boy_rotation
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (game_balls_inflated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ball_boy_rotation_ready))))

  (:durative-action finalize_bus_route
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (transport_scheduled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (bus_route_finalized))))

  (:durative-action distribute_meal_vouchers
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (player_weights_recorded)) (at start (eligibility_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (meal_vouchers_distributed))))

  (:durative-action run_special_teams_drills
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (stretching_completed)) (at start (meal_vouchers_distributed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (special_teams_drills_completed))))

  (:durative-action conduct_walkthrough
    :parameters (?s - step) :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (playbook_reviewed)) (at start (transport_scheduled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (walkthrough_completed))))

  (:durative-action position_yard_markers
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (security_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (yard_markers_positioned))))

  (:durative-action lead_light_jog
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (light_jog_completed))))

  (:durative-action conduct_individual_warmups
    :parameters (?s - step) :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (ball_boy_rotation_ready)) (at start (bus_route_finalized)) (at start (yard_markers_positioned)) (at start (team_clocks_synchronized)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (individual_warmups_completed))))

  (:durative-action synchronize_team_clocks
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (transport_scheduled)) (at start (officials_coordinated)) (at start (equipment_trunk_organized)) (at start (light_jog_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (team_clocks_synchronized))))

  (:durative-action tape_players_ankles
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (medical_kits_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (ankles_taped))))

  (:durative-action anthem_and_introductions
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (individual_warmups_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (anthem_and_introductions_completed))))
)