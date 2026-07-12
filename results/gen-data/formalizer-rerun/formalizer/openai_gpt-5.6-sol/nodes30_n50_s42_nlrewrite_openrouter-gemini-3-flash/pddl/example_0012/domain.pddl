(define (domain center-of-gravity)
  (:requirements :typing :durative-actions)
  (:types step s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (weighted_averages_compiled)
    (summary_report_drafted)
    (x_axis_moments_calculated)
    (workspace_cleaned)
    (total_mass_determined)
    (vertical_mass_mapped)
    (secondary_scale_calibrated)
    (first_component_distance_measured)
    (torque_verified)
    (subcomponent_weights_recorded)
    (moments_summed)
    (raw_data_entered)
    (geometric_profile_created)
    (safety_protocols_reviewed)
    (origin_identified)
    (prototype_disassembled)
    (mass_distance_products_calculated)
    (center_of_gravity_calculated)
    (material_densities_checked)
    (component_dimensions_measured)
    (environment_checked)
    (prototype_transported)
    (tools_gathered)
    (sensors_cleaned)
    (coordinates_uploaded)
    (drawings_annotated)
    (platform_sanitized)
    (software_license_confirmed)
    (measurements_peer_reviewed)
    (testing_surface_leveled)
  )

  (:durative-action step1_compile_weighted_averages
    :parameters (?s - s1)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleaned)) (at start (safety_protocols_reviewed)) (at start (tools_gathered)) (at start (measurements_peer_reviewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (weighted_averages_compiled))))

  (:durative-action step2_draft_summary_report
    :parameters (?s - s2)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (environment_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (summary_report_drafted))))

  (:durative-action step3_calculate_x_axis_moments
    :parameters (?s - s3)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (origin_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (x_axis_moments_calculated))))

  (:durative-action step4_clean_workspace
    :parameters (?s - s4)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleaned))))

  (:durative-action step5_determine_total_mass
    :parameters (?s - s5)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (component_dimensions_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (total_mass_determined))))

  (:durative-action step6_map_vertical_mass
    :parameters (?s - s6)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (material_densities_checked)) (at start (component_dimensions_measured)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vertical_mass_mapped))))

  (:durative-action step7_calibrate_secondary_scale
    :parameters (?s - s7)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (center_of_gravity_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (secondary_scale_calibrated))))

  (:durative-action step8_measure_first_component_distance
    :parameters (?s - s8)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (testing_surface_leveled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (first_component_distance_measured))))

  (:durative-action step9_verify_torque
    :parameters (?s - s9)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (subcomponent_weights_recorded)) (at start (origin_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (torque_verified))))

  (:durative-action step10_record_subcomponent_weights
    :parameters (?s - s10)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (total_mass_determined)) (at start (prototype_disassembled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (subcomponent_weights_recorded))))

  (:durative-action step11_sum_moments
    :parameters (?s - s11)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (mass_distance_products_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (moments_summed))))

  (:durative-action step12_input_raw_data
    :parameters (?s - s12)
    :duration (= ?duration 3000)
    :condition (and (at start (step_pending ?s)) (at start (center_of_gravity_calculated)) (at start (environment_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (raw_data_entered))))

  (:durative-action step13_create_geometric_profile
    :parameters (?s - s13)
    :duration (= ?duration 2100)
    :condition (and (at start (step_pending ?s)) (at start (tools_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (geometric_profile_created))))

  (:durative-action step14_review_safety_protocols
    :parameters (?s - s14)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (safety_protocols_reviewed))))

  (:durative-action step15_identify_origin
    :parameters (?s - s15)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (first_component_distance_measured)) (at start (prototype_disassembled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (origin_identified))))

  (:durative-action step16_disassemble_prototype
    :parameters (?s - s16)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (prototype_transported)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (prototype_disassembled))))

  (:durative-action step17_calculate_mass_distance_products
    :parameters (?s - s17)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (x_axis_moments_calculated)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mass_distance_products_calculated))))

  (:durative-action step18_calculate_center_of_gravity
    :parameters (?s - s18)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (moments_summed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (center_of_gravity_calculated))))

  (:durative-action step19_check_material_densities
    :parameters (?s - s19)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (raw_data_entered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (material_densities_checked))))

  (:durative-action step20_measure_component_dimensions
    :parameters (?s - s20)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (geometric_profile_created)) (at start (origin_identified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (component_dimensions_measured))))

  (:durative-action step21_check_environment
    :parameters (?s - s21)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (tools_gathered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (environment_checked))))

  (:durative-action step22_transport_prototype
    :parameters (?s - s22)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (prototype_transported))))

  (:durative-action step23_gather_tools
    :parameters (?s - s23)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tools_gathered))))

  (:durative-action step24_clean_sensors
    :parameters (?s - s24)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (sensors_cleaned))))

  (:durative-action step25_upload_coordinates
    :parameters (?s - s25)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (subcomponent_weights_recorded)) (at start (component_dimensions_measured)) (at start (software_license_confirmed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (coordinates_uploaded))))

  (:durative-action step26_annotate_drawings
    :parameters (?s - s26)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (vertical_mass_mapped)) (at start (sensors_cleaned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (drawings_annotated))))

  (:durative-action step27_sanitize_platform
    :parameters (?s - s27)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (workspace_cleaned)) (at start (prototype_disassembled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (platform_sanitized))))

  (:durative-action step28_confirm_software_license
    :parameters (?s - s28)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (software_license_confirmed))))

  (:durative-action step29_peer_review_measurements
    :parameters (?s - s29)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (subcomponent_weights_recorded)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (measurements_peer_reviewed))))

  (:durative-action step30_level_testing_surface
    :parameters (?s - s30)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (prototype_disassembled)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (testing_surface_leveled))))
)