(define (domain body-surf-learning)
  (:requirements :typing :durative-actions)
  (:types
    step
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type
    step11-type step12-type step13-type step14-type step15-type
    step16-type step17-type step18-type step19-type step20-type
    step21-type step22-type step23-type step24-type step25-type
    step26-type step27-type step28-type step29-type step30-type
    step31-type step32-type step33-type step34-type step35-type
    step36-type step37-type step38-type step39-type step40-type - step
  )
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete) (s2_complete) (s3_complete) (s4_complete)
    (s5_complete) (s6_complete) (s7_complete) (s8_complete)
    (s9_complete) (s10_complete) (s11_complete) (s12_complete)
    (s13_complete) (s14_complete) (s15_complete) (s16_complete)
    (s17_complete) (s18_complete) (s19_complete) (s20_complete)
    (body_surf_learned) (s22_complete) (s23_complete) (s24_complete)
    (s25_complete) (s26_complete) (s27_complete) (s28_complete)
    (s29_complete) (s30_complete) (s31_complete) (s32_complete)
    (s33_complete) (s34_complete) (s35_complete) (s36_complete)
    (s37_complete) (s38_complete) (s39_complete) (s40_complete)
  )

  (:durative-action watch_ocean_safety_documentary
    :parameters (?s - step1-type)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s25_complete)) (at start (s35_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_complete))))

  (:durative-action research_beginner_beaches
    :parameters (?s - step2-type)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_complete))))

  (:durative-action practice_breath_holding
    :parameters (?s - step3-type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s2_complete)) (at start (s9_complete)) (at start (s16_complete)) (at start (s27_complete)) (at start (s33_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_complete))))

  (:durative-action buy_swim_fins
    :parameters (?s - step4-type)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_complete))))

  (:durative-action apply_waterproof_sunscreen
    :parameters (?s - step5-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s11_complete)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_complete))))

  (:durative-action practice_streamline_on_land
    :parameters (?s - step6-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s14_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_complete))))

  (:durative-action check_tide_charts
    :parameters (?s - step7-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_complete))))

  (:durative-action pack_gear_bag
    :parameters (?s - step8-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s26_complete)) (at start (s29_complete)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_complete))))

  (:durative-action stretch_hamstrings_and_back
    :parameters (?s - step9-type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_complete))))

  (:durative-action do_twenty_pushups
    :parameters (?s - step10-type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s13_complete)) (at start (s14_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_complete))))

  (:durative-action put_on_rash_guard
    :parameters (?s - step11-type)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s22_complete)) (at start (s25_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_complete))))

  (:durative-action drive_to_beach
    :parameters (?s - step12-type)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_complete))))

  (:durative-action eat_energy_snack
    :parameters (?s - step13-type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_complete))))

  (:durative-action watch_wave_sets
    :parameters (?s - step14-type)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_complete))))

  (:durative-action tether_swim_fins
    :parameters (?s - step15-type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_complete))))

  (:durative-action practice_kicking_with_fins
    :parameters (?s - step16-type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s38_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_complete))))

  (:durative-action locate_lifeguard_tower
    :parameters (?s - step17-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_complete))))

  (:durative-action practice_breathing_recovery
    :parameters (?s - step18-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s3_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_complete))))

  (:durative-action identify_rip_currents
    :parameters (?s - step19-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_complete))))

  (:durative-action wade_into_waist_deep_water
    :parameters (?s - step20-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s28_complete)) (at start (s31_complete)) (at start (s39_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_complete))))

  (:durative-action catch_first_broken_wave
    :parameters (?s - step21-type)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s12_complete)) (at start (s15_complete)) (at start (s24_complete)) (at start (s33_complete)) (at start (s40_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (body_surf_learned))))

  (:durative-action introduce_to_lifeguard
    :parameters (?s - step22-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s17_complete)) (at start (s35_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_complete))))

  (:durative-action read_hydrodynamics_book
    :parameters (?s - step23-type)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_complete))))

  (:durative-action swim_past_breaking_surf
    :parameters (?s - step24-type)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (s12_complete)) (at start (s34_complete)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_complete))))

  (:durative-action rinse_new_fins
    :parameters (?s - step25-type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s4_complete)) (at start (s14_complete)) (at start (s26_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_complete))))

  (:durative-action buy_parking_pass
    :parameters (?s - step26-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_complete))))

  (:durative-action take_wave_mechanics_course
    :parameters (?s - step27-type)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s23_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_complete))))

  (:durative-action do_jumping_jacks
    :parameters (?s - step28-type)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s9_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_complete))))

  (:durative-action check_wind
    :parameters (?s - step29-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s2_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_complete))))

  (:durative-action check_water_temperature
    :parameters (?s - step30-type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s2_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_complete))))

  (:durative-action walk_to_sand
    :parameters (?s - step31-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s13_complete)) (at start (s26_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_complete))))

  (:durative-action secure_car_keys
    :parameters (?s - step32-type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s5_complete)) (at start (s15_complete)) (at start (s26_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_complete))))

  (:durative-action dive_under_wave
    :parameters (?s - step33-type)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s10_complete)) (at start (s20_complete)) (at start (s39_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_complete))))

  (:durative-action check_surf_report
    :parameters (?s - step34-type)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s7_complete)) (at start (s12_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_complete))))

  (:durative-action purchase_safety_handbook
    :parameters (?s - step35-type)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_complete))))

  (:durative-action summarize_safety_rules
    :parameters (?s - step36-type)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s1_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_complete))))

  (:durative-action read_beach_warning_signs
    :parameters (?s - step37-type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s35_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_complete))))

  (:durative-action fasten_swim_cap
    :parameters (?s - step38-type)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s26_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_complete))))

  (:durative-action perform_mental_focus
    :parameters (?s - step39-type)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_complete))))

  (:durative-action face_the_shore
    :parameters (?s - step40-type)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s20_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_complete))))
)