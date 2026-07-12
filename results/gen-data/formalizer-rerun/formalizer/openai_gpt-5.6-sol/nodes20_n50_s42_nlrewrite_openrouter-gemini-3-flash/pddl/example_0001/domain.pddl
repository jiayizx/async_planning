(define (domain go-to-space)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step)
    (is_step2 ?s - step)
    (is_step3 ?s - step)
    (is_step4 ?s - step)
    (is_step5 ?s - step)
    (is_step6 ?s - step)
    (is_step7 ?s - step)
    (is_step8 ?s - step)
    (is_step9 ?s - step)
    (is_step10 ?s - step)
    (is_step11 ?s - step)
    (is_step12 ?s - step)
    (is_step13 ?s - step)
    (is_step14 ?s - step)
    (is_step15 ?s - step)
    (is_step16 ?s - step)
    (is_step17 ?s - step)
    (is_step18 ?s - step)
    (is_step19 ?s - step)
    (is_step20 ?s - step)
    (preflight_check_complete)
    (high_g_training_complete)
    (egress_drill_complete)
    (flight_plan_finalized)
    (rocket_at_launch_pad)
    (physical_exam_passed)
    (life_support_installed)
    (flight_suit_donned)
    (propulsion_system_designed)
    (survival_training_complete)
    (rocket_fueled)
    (fuselage_manufactured)
    (spacecraft_boarded)
    (capsule_integrated)
    (navigation_reviewed)
    (launch_permits_secured)
    (mission_briefing_attended)
    (static_fire_test_complete)
    (cargo_loaded)
    (equipment_sterilized)
  )

  (:durative-action conduct_preflight_check
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step1 ?s))
      (at start (flight_suit_donned))
      (at start (spacecraft_boarded)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (preflight_check_complete))))

  (:durative-action complete_high_g_training
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step2 ?s))
      (at start (physical_exam_passed))
      (at start (mission_briefing_attended)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (high_g_training_complete))))

  (:durative-action perform_egress_drill
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step3 ?s))
      (at start (high_g_training_complete))
      (at start (flight_plan_finalized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (egress_drill_complete))))

  (:durative-action finalize_flight_plan
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step4 ?s))
      (at start (navigation_reviewed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flight_plan_finalized))))

  (:durative-action transport_rocket
    :parameters (?s - step)
    :duration (= ?duration 43200)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step5 ?s))
      (at start (fuselage_manufactured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rocket_at_launch_pad))))

  (:durative-action pass_physical_exam
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step6 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (physical_exam_passed))))

  (:durative-action install_life_support
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step7 ?s))
      (at start (capsule_integrated)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (life_support_installed))))

  (:durative-action don_flight_suit
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step8 ?s))
      (at start (survival_training_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flight_suit_donned))))

  (:durative-action design_propulsion_system
    :parameters (?s - step)
    :duration (= ?duration 15552000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step9 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (propulsion_system_designed))))

  (:durative-action complete_survival_training
    :parameters (?s - step)
    :duration (= ?duration 864000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step10 ?s))
      (at start (high_g_training_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (survival_training_complete))))

  (:durative-action fuel_rocket
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step11 ?s))
      (at start (life_support_installed))
      (at start (fuselage_manufactured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (rocket_fueled))))

  (:durative-action manufacture_fuselage
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step12 ?s))
      (at start (propulsion_system_designed)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (fuselage_manufactured))))

  (:durative-action board_spacecraft
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step13 ?s))
      (at start (launch_permits_secured))
      (at start (equipment_sterilized)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (spacecraft_boarded))))

  (:durative-action integrate_capsule
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step14 ?s))
      (at start (static_fire_test_complete)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (capsule_integrated))))

  (:durative-action review_navigation
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step15 ?s))
      (at start (spacecraft_boarded)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (navigation_reviewed))))

  (:durative-action secure_launch_permits
    :parameters (?s - step)
    :duration (= ?duration 10368000)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step16 ?s))
      (at start (rocket_at_launch_pad)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (launch_permits_secured))))

  (:durative-action attend_mission_briefing
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step17 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (mission_briefing_attended))))

  (:durative-action conduct_static_fire_test
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step18 ?s))
      (at start (launch_permits_secured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (static_fire_test_complete))))

  (:durative-action load_cargo
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step19 ?s))
      (at start (fuselage_manufactured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (cargo_loaded))))

  (:durative-action sterilize_equipment
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and
      (at start (step_pending ?s))
      (at start (is_step20 ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (equipment_sterilized))))
)