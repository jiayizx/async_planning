(define (domain canine-liver-treatment)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step) (is_step4 ?s - step) (is_step5 ?s - step)
    (is_step6 ?s - step) (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step) (is_step10 ?s - step)
    (is_step11 ?s - step) (is_step12 ?s - step) (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step) (is_step19 ?s - step) (is_step20 ?s - step)
    (is_step21 ?s - step) (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step) (is_step25 ?s - step)
    (is_step26 ?s - step) (is_step27 ?s - step) (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (is_step31 ?s - step) (is_step32 ?s - step) (is_step33 ?s - step) (is_step34 ?s - step) (is_step35 ?s - step)
    (is_step36 ?s - step) (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step) (is_step40 ?s - step)
    (is_step41 ?s - step) (is_step42 ?s - step) (is_step43 ?s - step) (is_step44 ?s - step) (is_step45 ?s - step)
    (is_step46 ?s - step) (is_step47 ?s - step) (is_step48 ?s - step) (is_step49 ?s - step) (is_step50 ?s - step)
    (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
    (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
    (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
    (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
    (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
  )

  (:durative-action schedule_followup_ultrasound
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (p22)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
  (:durative-action research_hepatologists
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
  (:durative-action perform_bile_acid_test
    :parameters (?s - step) :duration (= ?duration 43200)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (p12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
  (:durative-action administer_antibiotics
    :parameters (?s - step) :duration (= ?duration 864000)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (p15)) (at start (p17)) (at start (p29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
  (:durative-action transition_hepatic_diet
    :parameters (?s - step) :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (p27)) (at start (p42)) (at start (p45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
  (:durative-action monitor_water_intake
    :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (p18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
  (:durative-action track_activity
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (p18)) (at start (p42)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
  (:durative-action palpate_abdomen
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (p13)) (at start (p29)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
  (:durative-action purchase_supplements
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
  (:durative-action record_baseline_weight
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
  (:durative-action consult_nutritionist
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
  (:durative-action fast_overnight
    :parameters (?s - step) :duration (= ?duration 43200)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
  (:durative-action obtain_second_opinion
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (p2)) (at start (p16)) (at start (p22)) (at start (p45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
  (:durative-action mix_supplements
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (p9)) (at start (p49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
  (:durative-action review_antibiotic_side_effects
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (p29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
  (:durative-action draw_metabolic_panel
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (p31)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
  (:durative-action discuss_medical_history
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (p10)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
  (:durative-action observe_jaundice
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (p17)) (at start (p30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
  (:durative-action evaluate_initial_treatment
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (p4)) (at start (p24)) (at start (p26)) (at start (p28)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
  (:durative-action order_orthopedic_bed
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (p27)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
  (:durative-action prepare_recovery_area
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
  (:durative-action perform_needle_aspirate
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
  (:durative-action begin_denamarin
    :parameters (?s - step) :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (p9)) (at start (p11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
  (:durative-action schedule_surgical_consultation
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (p13)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
  (:durative-action update_vaccinations
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (p9)) (at start (p11)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
  (:durative-action purchase_low_protein_treats
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
  (:durative-action sanitize_bowls
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
  (:durative-action monitor_liver_enzymes
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (p23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
  (:durative-action pick_up_antibiotics
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
  (:durative-action set_medication_reminder
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (p20)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
  (:durative-action fill_intake_forms
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
  (:durative-action analyze_ultrasound
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)) (at start (p1)) (at start (p18)) (at start (p38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
  (:durative-action place_non_slip_rugs
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)) (at start (p21)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
  (:durative-action check_abdominal_swelling
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)) (at start (p1)) (at start (p6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
  (:durative-action administer_fluids
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)) (at start (p31)) (at start (p44)) (at start (p47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
  (:durative-action consult_lobectomy_surgeon
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)) (at start (p32)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
  (:durative-action remove_toxic_plants
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)) (at start (p21)) (at start (p26)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
  (:durative-action review_antioxidants
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)) (at start (p9)) (at start (p48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
  (:durative-action initial_physical_exam
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
  (:durative-action measure_caloric_intake
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)) (at start (p16)) (at start (p27)) (at start (p35)) (at start (p45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
  (:durative-action log_digestive_distress
    :parameters (?s - step) :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (is_step41 ?s)) (at start (p4)) (at start (p16)) (at start (p30)) (at start (p49)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
  (:durative-action wait_for_lab_results
    :parameters (?s - step) :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (is_step42 ?s)) (at start (p3)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
  (:durative-action finalize_management_plan
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step43 ?s)) (at start (p1)) (at start (p28)) (at start (p31)) (at start (p46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
  (:durative-action discuss_fluid_therapy
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step44 ?s)) (at start (p30)) (at start (p39)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
  (:durative-action submit_liver_biopsy
    :parameters (?s - step) :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (is_step45 ?s)) (at start (p22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
  (:durative-action coagulation_profile
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step46 ?s)) (at start (p1)) (at start (p35)) (at start (p45)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
  (:durative-action purchase_syringes
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step47 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
  (:durative-action research_vitamin_e
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step48 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
  (:durative-action buy_pill_organizer
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step49 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
  (:durative-action final_health_assessment
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step50 ?s)) (at start (p5)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
)