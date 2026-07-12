(define (domain learn-tennis)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (role1 ?s - step) (role2 ?s - step) (role3 ?s - step) (role4 ?s - step)
    (role5 ?s - step) (role6 ?s - step) (role7 ?s - step) (role8 ?s - step)
    (role9 ?s - step) (role10 ?s - step) (role11 ?s - step) (role12 ?s - step)
    (role13 ?s - step) (role14 ?s - step) (role15 ?s - step) (role16 ?s - step)
    (role17 ?s - step) (role18 ?s - step) (role19 ?s - step) (role20 ?s - step)
    (role21 ?s - step) (role22 ?s - step) (role23 ?s - step) (role24 ?s - step)
    (role25 ?s - step) (role26 ?s - step) (role27 ?s - step) (role28 ?s - step)
    (role29 ?s - step) (role30 ?s - step) (role31 ?s - step) (role32 ?s - step)
    (role33 ?s - step) (role34 ?s - step) (role35 ?s - step) (role36 ?s - step)
    (role37 ?s - step) (role38 ?s - step) (role39 ?s - step) (role40 ?s - step)
    (s1_complete) (s2_complete) (s3_complete) (s4_complete) (s5_complete)
    (s6_complete) (s7_complete) (s8_complete) (s9_complete) (s10_complete)
    (s11_complete) (s12_complete) (s13_complete) (s14_complete) (s15_complete)
    (s16_complete) (s17_complete) (s18_complete) (s19_complete) (s20_complete)
    (s21_complete) (s22_complete) (s23_complete) (s24_complete) (s25_complete)
    (s26_complete) (s27_complete) (s28_complete) (s29_complete) (s30_complete)
    (s31_complete) (s32_complete) (s33_complete) (s34_complete) (s35_complete)
    (s36_complete) (s37_complete) (s38_complete) (s39_complete) (s40_complete)
  )

  (:durative-action purchase_graphite_racket
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role1 ?s)) (at start (s3_complete)) (at start (s36_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_complete))))

  (:durative-action register_tournament
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (role2 ?s)) (at start (s26_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_complete))))

  (:durative-action watch_match_highlights
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (role3 ?s)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_complete))))

  (:durative-action practice_overhead_smashes
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role4 ?s)) (at start (s5_complete)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_complete))))

  (:durative-action serving_technique_lesson
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role5 ?s)) (at start (s24_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_complete))))

  (:durative-action research_tennis_clubs
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (role6 ?s)) (at start (s9_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_complete))))

  (:durative-action practice_cross_court_forehands
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (role7 ?s)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_complete))))

  (:durative-action buy_tennis_balls
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (role8 ?s)) (at start (s11_complete)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_complete))))

  (:durative-action ask_friends_for_recommendations
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (role9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_complete))))

  (:durative-action pay_club_membership
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (role10 ?s)) (at start (s6_complete)) (at start (s13_complete)) (at start (s27_complete)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_complete))))

  (:durative-action find_hitting_partner
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (role11 ?s)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_complete))))

  (:durative-action reserve_indoor_court
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (role12 ?s)) (at start (s16_complete)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_complete))))

  (:durative-action read_safety_guidelines
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (role13 ?s)) (at start (s26_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_complete))))

  (:durative-action purchase_athletic_shoes
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_complete))))

  (:durative-action apply_racket_overgrip
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (role15 ?s)) (at start (s1_complete)) (at start (s17_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_complete))))

  (:durative-action break_in_tennis_shoes
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (role16 ?s)) (at start (s14_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_complete))))

  (:durative-action buy_tennis_bag
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (role17 ?s)) (at start (s22_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_complete))))

  (:durative-action watch_scoring_tutorial
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (role18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_complete))))

  (:durative-action pack_tennis_bag
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (role19 ?s)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_complete))))

  (:durative-action play_three_set_match
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (role20 ?s)) (at start (s23_complete)) (at start (s27_complete)) (at start (s40_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_complete))))

  (:durative-action post_match_stretching
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (role21 ?s)) (at start (s30_complete)) (at start (s38_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_complete))))

  (:durative-action tension_racket_strings
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (role22 ?s)) (at start (s1_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_complete))))

  (:durative-action review_tiebreak_rules
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (role23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_complete))))

  (:durative-action practice_ball_toss
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (role24 ?s)) (at start (s35_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_complete))))

  (:durative-action check_tournament_schedule
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (role25 ?s)) (at start (s2_complete)) (at start (s17_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_complete))))

  (:durative-action decide_gear_budget
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role26 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_complete))))

  (:durative-action sign_up_weekend_clinic
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (role27 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_complete))))

  (:durative-action visit_equipment_warehouse
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (role28 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_complete))))

  (:durative-action purchase_headband
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (role29 ?s)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_complete))))

  (:durative-action watch_tennis_basics
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role30 ?s)) (at start (s26_complete)) (at start (s28_complete)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_complete))))

  (:durative-action practice_backhands
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (role31 ?s)) (at start (s7_complete)) (at start (s12_complete)) (at start (s15_complete)) (at start (s26_complete)) (at start (s36_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_complete))))

  (:durative-action buy_tennis_visor
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (role32 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_complete))))

  (:durative-action purchase_water_bottle
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (role33 ?s)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_complete))))

  (:durative-action buy_athletic_socks
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (role34 ?s)) (at start (s14_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_complete))))

  (:durative-action fill_bottle_with_electrolytes
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (role35 ?s)) (at start (s33_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_complete))))

  (:durative-action buy_vibration_dampeners
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (role36 ?s)) (at start (s8_complete)) (at start (s14_complete)) (at start (s18_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_complete))))

  (:durative-action download_score_tracking_app
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (role37 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_complete))))

  (:durative-action practice_flat_and_slice_serves
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (role38 ?s)) (at start (s5_complete)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_complete))))

  (:durative-action attach_vibration_dampener
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (role39 ?s)) (at start (s36_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_complete))))

  (:durative-action attend_pre_tournament_briefing
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (role40 ?s)) (at start (s2_complete)) (at start (s18_complete)) (at start (s27_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_complete))))
)