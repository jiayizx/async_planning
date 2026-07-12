(define (domain move-to-ohio)
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
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done)
    (s9_done) (s10_done) (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done)
    (s17_done) (s18_done) (s19_done) (s20_done) (s21_done) (s22_done) (s23_done) (s24_done)
    (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done) (s31_done) (s32_done)
    (s33_done) (s34_done) (s35_done) (s36_done) (s37_done) (s38_done) (s39_done) (s40_done))

  (:durative-action research_neighborhoods
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))
  (:durative-action schedule_walkthrough
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (s15_done)) (at start (s16_done)) (at start (s22_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))
  (:durative-action hire_moving_company
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (s34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))
  (:durative-action create_moving_budget
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))
  (:durative-action transfer_car_insurance
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))
  (:durative-action pack_kitchen_dining
    :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (s4_done)) (at start (s10_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))
  (:durative-action set_up_utilities
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (s25_done)) (at start (s39_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))
  (:durative-action confirm_move_in_date
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (s2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))
  (:durative-action purchase_boxes_tape
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))
  (:durative-action clean_current_apartment
    :parameters (?s - step) :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (s12_done)) (at start (s35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))
  (:durative-action forward_mail
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (s17_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))
  (:durative-action submit_resignation
    :parameters (?s - step) :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (s2_done)) (at start (s22_done)) (at start (s38_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))
  (:durative-action apply_housing
    :parameters (?s - step) :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (s1_done)) (at start (s4_done)) (at start (s12_done)) (at start (s28_done)) (at start (s32_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))
  (:durative-action request_medical_records
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))
  (:durative-action save_security_deposit
    :parameters (?s - step) :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))
  (:durative-action update_resume
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (s31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))
  (:durative-action notify_bank
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (s21_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))
  (:durative-action sell_furniture
    :parameters (?s - step) :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (s9_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))
  (:durative-action register_to_vote
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (s1_done)) (at start (s5_done)) (at start (s38_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))
  (:durative-action update_subscriptions_address
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (s11_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))
  (:durative-action cancel_memberships
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))
  (:durative-action browse_job_listings
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (s35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done))))
  (:durative-action sort_garage_attic
    :parameters (?s - step) :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (s31_done)) (at start (s34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))
  (:durative-action collect_dental_vision_records
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))
  (:durative-action pack_bedroom_bathroom
    :parameters (?s - step) :duration (= ?duration 28800)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (s33_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))
  (:durative-action update_credit_card_address
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))
  (:durative-action request_moving_week_off
    :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (s3_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))
  (:durative-action get_credit_check
    :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (s25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))
  (:durative-action get_physical_exam
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))
  (:durative-action research_schools
    :parameters (?s - step) :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (s15_done)) (at start (s35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done))))
  (:durative-action research_cost_of_living
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_done))))
  (:durative-action secure_references
    :parameters (?s - step) :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)) (at start (s16_done)) (at start (s24_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_done))))
  (:durative-action rent_moving_truck
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)) (at start (s10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_done))))
  (:durative-action donate_old_clothes
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_done))))
  (:durative-action attend_job_interviews
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)) (at start (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_done))))
  (:durative-action pick_up_prescriptions
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)) (at start (s14_done)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_done))))
  (:durative-action calculate_travel_costs
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)) (at start (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_done))))
  (:durative-action request_final_utility_reading
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_done))))
  (:durative-action pack_car
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)) (at start (s34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_done))))
  (:durative-action drive_to_ohio
    :parameters (?s - step) :duration (= ?duration 36000)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)) (at start (s39_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_done))))
)