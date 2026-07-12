(define (domain lip-lightening)
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
    (step1_completed) (step2_completed) (step3_completed)
    (step4_completed) (step5_completed) (step6_completed)
    (step7_completed) (step8_completed) (step9_completed)
    (step10_completed) (step11_completed) (step12_completed)
    (step13_completed) (step14_completed) (step15_completed)
    (step16_completed) (step17_completed) (step18_completed)
    (step19_completed) (step20_completed) (step21_completed)
    (step22_completed) (step23_completed) (step24_completed)
    (step25_completed) (step26_completed) (step27_completed)
    (step28_completed) (step29_completed) (step30_completed)
  )

  (:durative-action apply_overnight_mask
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (step12_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_completed))))

  (:durative-action apply_melanin_serum
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (step28_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_completed))))

  (:durative-action steam_lips
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_completed))))

  (:durative-action apply_zinc_balm
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (step16_completed)) (at start (step26_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_completed))))

  (:durative-action purchase_lightening_cream
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_completed))))

  (:durative-action undergo_chemical_peel
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (step3_completed)) (at start (step23_completed)) (at start (step29_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_completed))))

  (:durative-action apply_cooling_gel
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (step6_completed)) (at start (step11_completed)) (at start (step16_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_completed))))

  (:durative-action schedule_followup
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (step27_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_completed))))

  (:durative-action sugar_scrub
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_completed))))

  (:durative-action purchase_almond_oil
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_completed))))

  (:durative-action cleanse_lips
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_completed))))

  (:durative-action apply_vitamin_c
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (step2_completed)) (at start (step6_completed)) (at start (step9_completed)) (at start (step13_completed)) (at start (step23_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_completed))))

  (:durative-action massage_almond_oil
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (step9_completed)) (at start (step10_completed)) (at start (step20_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_completed))))

  (:durative-action apply_sunscreen
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (step8_completed)) (at start (step25_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_completed))))

  (:durative-action spot_treatment
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (step21_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_completed))))

  (:durative-action drink_water
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_completed))))

  (:durative-action take_glutathione
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (step18_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_completed))))

  (:durative-action consult_nutritionist
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_completed))))

  (:durative-action take_before_photo
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (step11_completed)) (at start (step24_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_completed))))

  (:durative-action sterilize_bowl
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_completed))))

  (:durative-action apply_numbing_cream
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (step16_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_completed))))

  (:durative-action rest_lips
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (step3_completed)) (at start (step25_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_completed))))

  (:durative-action apply_lactic_prep
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (step13_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_completed))))

  (:durative-action wash_hands
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_completed))))

  (:durative-action apply_turmeric_paste
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (step15_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_completed))))

  (:durative-action prepare_workspace
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (step24_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_completed))))

  (:durative-action document_reactions
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (step13_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_completed))))

  (:durative-action patch_test_cream
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (step5_completed)) (at start (step21_completed)) (at start (step25_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_completed))))

  (:durative-action wait_for_redness
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (step14_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_completed))))

  (:durative-action set_maintenance_reminder
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (step5_completed)) (at start (step8_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_completed))))
)