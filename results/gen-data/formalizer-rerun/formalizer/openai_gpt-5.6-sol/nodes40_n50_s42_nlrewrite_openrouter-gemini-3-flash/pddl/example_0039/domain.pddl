(define (domain pro-basketball)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete) (s2_complete) (pro_basketball_player)
    (s4_complete) (s5_complete) (s6_complete) (s7_complete)
    (s8_complete) (s9_complete) (s10_complete) (s11_complete)
    (s12_complete) (s13_complete) (s14_complete) (s15_complete)
    (s16_complete) (s17_complete) (s18_complete) (s19_complete)
    (s20_complete) (s21_complete) (s22_complete) (s23_complete)
    (s24_complete) (s25_complete) (s26_complete) (s27_complete)
    (s28_complete) (s29_complete) (s30_complete) (s31_complete)
    (s32_complete) (s33_complete) (s34_complete) (s35_complete)
    (s36_complete) (s37_complete) (s38_complete) (s39_complete)
    (s40_complete)
  )

  (:durative-action attend_elite_youth_camp
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_complete))))

  (:durative-action hire_sports_agent
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step2)) (at start (s38_complete)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_complete))))

  (:durative-action sign_professional_contract
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step3)) (at start (s31_complete)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (pro_basketball_player))))

  (:durative-action participate_summer_league
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step4)) (at start (s16_complete)) (at start (s23_complete)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_complete))))

  (:durative-action complete_team_physical
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step5)) (at start (s40_complete)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_complete))))

  (:durative-action attend_draft_combine
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step6)) (at start (s17_complete)) (at start (s20_complete)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_complete))))

  (:durative-action hire_personal_chef
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step7)) (at start (s16_complete)) (at start (s34_complete)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_complete))))

  (:durative-action conduct_media_interviews
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step8)) (at start (s13_complete)) (at start (s18_complete)) (at start (s26_complete)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_complete))))

  (:durative-action participate_preseason_camp
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending step9)) (at start (s12_complete)) (at start (s18_complete)) (at start (s35_complete)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_complete))))

  (:durative-action film_sneaker_commercial
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step10)) (at start (s25_complete)) (at start (s35_complete)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_complete))))

  (:durative-action negotiate_endorsement_deal
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step11)) (at start (s2_complete)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_complete))))

  (:durative-action secure_housing_lease
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step12)) (at start (s16_complete)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_complete))))

  (:durative-action open_savings_account
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step13)) (at start (s18_complete)) (at start (s38_complete)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_complete))))

  (:durative-action undergo_mri
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (s40_complete)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_complete))))

  (:durative-action apply_player_license
    :parameters ()
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending step15)) (at start (s18_complete)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_complete))))

  (:durative-action move_to_temporary_hotel
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step16)) (at start (s15_complete)) (at start (s22_complete)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_complete))))

  (:durative-action submit_measurements
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (s22_complete)) (at start (s25_complete)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_complete))))

  (:durative-action declare_for_draft
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_complete))))

  (:durative-action hire_financial_advisor
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_complete))))

  (:durative-action meet_general_manager
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step20)) (at start (s26_complete)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_complete))))

  (:durative-action review_team_playbook
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step21)) (at start (s35_complete)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_complete))))

  (:durative-action graduate_high_school
    :parameters ()
    :duration (= ?duration 126144000)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_complete))))

  (:durative-action perform_team_workouts
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step23)) (at start (s6_complete)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_complete))))

  (:durative-action receive_team_jersey
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step24)) (at start (s36_complete)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_complete))))

  (:durative-action play_collegiate_program
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending step25)) (at start (s1_complete)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_complete))))

  (:durative-action fit_custom_travel_suit
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step26)) (at start (s15_complete)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_complete))))

  (:durative-action hire_shooting_coach
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step27)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_complete))))

  (:durative-action practice_high_intensity_drills
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step28)) (at start (s27_complete)) (at start (s39_complete)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_complete))))

  (:durative-action play_international_developmental_league
    :parameters ()
    :duration (= ?duration 15552000)
    :condition (and (at start (step_pending step29)) (at start (s1_complete)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_complete))))

  (:durative-action complete_collegiate_career
    :parameters ()
    :duration (= ?duration 63072000)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_complete))))

  (:durative-action review_contract_with_lawyer
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step31)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_complete))))

  (:durative-action obtain_disability_insurance
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step32)) (at start (s13_complete)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_complete))))

  (:durative-action set_up_utilities
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step33)) (at start (s12_complete)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_complete))))

  (:durative-action find_massage_therapist
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_complete))))

  (:durative-action attend_draft_lottery
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step35)) (at start (s22_complete)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_complete))))

  (:durative-action pass_league_drug_test
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step36)) (at start (s1_complete)) (at start (s5_complete)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_complete))))

  (:durative-action receive_draft_selection
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step37)) (at start (s14_complete)) (at start (s20_complete)) (at start (s38_complete)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_complete))))

  (:durative-action participate_draft_night
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step38)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_complete))))

  (:durative-action hire_strength_coach
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step39)) (at start (s22_complete)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_complete))))

  (:durative-action undergo_cardiac_screening
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_complete))))
)