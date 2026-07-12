(define (domain calculate-joules)
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
    (sensor_calibrated)
    (average_velocity_calculated)
    (displacement_measured)
    (final_temperature_recorded)
    (work_calculated)
    (workstation_powered)
    (friction_coefficient_determined)
    (object_mass_measured)
    (laser_aligned)
    (potential_energy_calculated)
    (net_force_calculated)
    (initial_time_recorded)
    (heating_element_placed)
    (insulation_materials_gathered)
    (joules_calculated)
    (workspace_cleaned)
    (beaker_insulated)
    (logging_software_opened)
    (displacement_data_verified)
    (energy_values_summed)
  )

  (:durative-action calibrate_sensor
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (workstation_powered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sensor_calibrated))))

  (:durative-action calculate_average_velocity
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (initial_time_recorded)) (at start (workspace_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (average_velocity_calculated))))

  (:durative-action measure_displacement
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (laser_aligned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (displacement_measured))))

  (:durative-action record_final_temperature
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (heating_element_placed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (final_temperature_recorded))))

  (:durative-action calculate_work
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (net_force_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (work_calculated))))

  (:durative-action power_on_workstation
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workstation_powered))))

  (:durative-action determine_friction_coefficient
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (workspace_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (friction_coefficient_determined))))

  (:durative-action measure_object_mass
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (workspace_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (object_mass_measured))))

  (:durative-action align_laser
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (laser_aligned))))

  (:durative-action calculate_potential_energy
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (object_mass_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (potential_energy_calculated))))

  (:durative-action calculate_net_force
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (displacement_data_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (net_force_calculated))))

  (:durative-action record_initial_time
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (initial_time_recorded))))

  (:durative-action place_heating_element
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (heating_element_placed))))

  (:durative-action gather_insulation_materials
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (insulation_materials_gathered))))

  (:durative-action convert_energy_to_joules
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (work_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (joules_calculated))))

  (:durative-action clean_workspace
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleaned))))

  (:durative-action wrap_beaker
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (insulation_materials_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (beaker_insulated))))

  (:durative-action open_logging_software
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (workstation_powered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (logging_software_opened))))

  (:durative-action verify_displacement_data
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (displacement_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (displacement_data_verified))))

  (:durative-action sum_energy_values
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (potential_energy_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (energy_values_summed))))
)