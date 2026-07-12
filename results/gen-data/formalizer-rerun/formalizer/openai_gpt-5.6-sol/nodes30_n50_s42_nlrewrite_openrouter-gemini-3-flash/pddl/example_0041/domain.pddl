(define (domain ancient-ruins)
  (:requirements :durative-actions :typing)
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
    (s1_complete) (s2_complete) (s3_complete) (s4_complete) (s5_complete)
    (s6_complete) (s7_complete) (s8_complete) (s9_complete) (s10_complete)
    (s11_complete) (s12_complete) (s13_complete) (s14_complete) (s15_complete)
    (s16_complete) (s17_complete) (s18_complete) (s19_complete) (s20_complete)
    (s21_complete) (s22_complete) (s23_complete) (s24_complete) (s25_complete)
    (s26_complete) (s27_complete) (s28_complete) (s29_complete) (s30_complete)
  )

  (:durative-action purchase_tickets
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (s10_complete)) (at start (s14_complete)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_complete))))

  (:durative-action download_offline_map
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_complete))))

  (:durative-action pack_hiking_boots
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (s20_complete)) (at start (s23_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_complete))))

  (:durative-action buy_power_bank
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (s6_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_complete))))

  (:durative-action pack_rain_jacket
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (s3_complete)) (at start (s11_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_complete))))

  (:durative-action withdraw_currency
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (s11_complete)) (at start (s20_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_complete))))

  (:durative-action apply_entry_permit
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_complete))))

  (:durative-action visit_travel_clinic
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_complete))))

  (:durative-action purchase_travel_insurance
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_complete))))

  (:durative-action mail_passport_for_visa
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_complete))))

  (:durative-action research_ruins
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_complete))))

  (:durative-action book_guided_tour
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (s13_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_complete))))

  (:durative-action request_vacation
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_complete))))

  (:durative-action check_weather
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_complete))))

  (:durative-action buy_sun_hat
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_complete))))

  (:durative-action purchase_camera_lens
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (s20_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_complete))))

  (:durative-action book_flights
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (s13_complete)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_complete))))

  (:durative-action reserve_extra_legroom
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (s17_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_complete))))

  (:durative-action reserve_eco_lodge
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (s10_complete)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_complete))))

  (:durative-action schedule_checkup
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (s8_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_complete))))

  (:durative-action renew_passport
    :parameters (?s - step)
    :duration (= ?duration 3628800)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (s10_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_complete))))

  (:durative-action pack_first_aid_kit
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (s27_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_complete))))

  (:durative-action arrange_plant_watering
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (s11_complete)) (at start (s19_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_complete))))

  (:durative-action confirm_shuttle
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (s25_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_complete))))

  (:durative-action pack_toiletries
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (s6_complete)) (at start (s22_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_complete))))

  (:durative-action print_vouchers
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (s1_complete)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_complete))))

  (:durative-action finalize_luggage_weight
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (s3_complete)) (at start (s4_complete)) (at start (s6_complete)) (at start (s9_complete)) (at start (s23_complete)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_complete))))

  (:durative-action setup_out_of_office
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (s13_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_complete))))

  (:durative-action notify_bank
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_complete))))

  (:durative-action create_itinerary
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (s11_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_complete))))
)