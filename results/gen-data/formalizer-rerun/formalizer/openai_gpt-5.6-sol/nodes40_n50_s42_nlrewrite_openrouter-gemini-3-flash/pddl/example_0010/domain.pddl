(define (domain tengwar-writing)
  (:requirements :typing :durative-actions)
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
    (is_step31 ?s - step) (is_step32 ?s - step) (is_step33 ?s - step)
    (is_step34 ?s - step) (is_step35 ?s - step) (is_step36 ?s - step)
    (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step)
    (is_step40 ?s - step)
    (step1_complete) (step2_complete) (step3_complete) (step4_complete)
    (step5_complete) (step6_complete) (step7_complete) (step8_complete)
    (step9_complete) (step10_complete) (step11_complete) (step12_complete)
    (step13_complete) (step14_complete) (step15_complete) (step16_complete)
    (step17_complete) (step18_complete) (step19_complete) (step20_complete)
    (step21_complete) (step22_complete) (step23_complete) (step24_complete)
    (step25_complete) (step26_complete) (step27_complete) (step28_complete)
    (step29_complete) (step30_complete) (step31_complete) (step32_complete)
    (step33_complete) (step34_complete) (step35_complete) (step36_complete)
    (step37_complete) (step38_complete) (step39_complete) (step40_complete)
  )

  (:durative-action research_english_mode
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (step15_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_complete))))

  (:durative-action purchase_calligraphy_nib
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)) (at start (step38_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_complete))))

  (:durative-action memorize_consonant_series
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (step1_complete)) (at start (step25_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_complete))))

  (:durative-action study_tehtar_placement
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (step33_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_complete))))

  (:durative-action grind_ink_stick
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (step2_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_complete))))

  (:durative-action select_parchment
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_complete))))

  (:durative-action download_reference_chart
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (step40_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_complete))))

  (:durative-action clear_workspace
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_complete))))

  (:durative-action practice_vertical_stem
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (step30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_complete))))

  (:durative-action write_namarie_stanza
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (step28_complete)) (at start (step39_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_complete))))

  (:durative-action print_reference_chart
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (step7_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_complete))))

  (:durative-action draft_final_composition
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (step20_complete)) (at start (step29_complete)) (at start (step36_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_complete))))

  (:durative-action map_text_phonemes
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (step1_complete)) (at start (step5_complete)) (at start (step31_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_complete))))

  (:durative-action adjust_desk_slant
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (step32_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_complete))))

  (:durative-action mix_gum_arabic
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (step37_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_complete))))

  (:durative-action secure_nib
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (step2_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_complete))))

  (:durative-action apply_gold_leaf
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (step12_complete)) (at start (step20_complete)) (at start (step38_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_complete))))

  (:durative-action set_up_lamp
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (step8_complete)) (at start (step37_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_complete))))

  (:durative-action practice_bow_shapes
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (step1_complete)) (at start (step26_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_complete))))

  (:durative-action trace_character_outlines
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (step11_complete)) (at start (step34_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_complete))))

  (:durative-action review_double_consonants
    :parameters (?s - step)
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_complete))))

  (:durative-action test_ink_flow
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (step29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_complete))))

  (:durative-action execute_final_ink_strokes
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)) (at start (step6_complete)) (at start (step9_complete)) (at start (step22_complete)) (at start (step33_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_complete))))

  (:durative-action clean_workspace
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (step35_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_complete))))

  (:durative-action learn_grade_values
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (step5_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_complete))))

  (:durative-action practice_carriers
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (step4_complete)) (at start (step9_complete)) (at start (step20_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_complete))))

  (:durative-action proofread_transcription
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (step19_complete)) (at start (step21_complete)) (at start (step30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_complete))))

  (:durative-action cut_parchment
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (step40_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_complete))))

  (:durative-action rule_guidelines
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (step14_complete)) (at start (step32_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_complete))))

  (:durative-action watch_pen_angle_tutorial
    :parameters (?s - step)
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_complete))))

  (:durative-action identify_vowels
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step31_complete))))

  (:durative-action tape_parchment
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)) (at start (step7_complete)) (at start (step33_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step32_complete))))

  (:durative-action learn_telco_luva
    :parameters (?s - step)
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step33_complete))))

  (:durative-action practice_tehtar_marks
    :parameters (?s - step)
    :duration (= ?duration 3000)
    :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)) (at start (step4_complete)) (at start (step21_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step34_complete))))

  (:durative-action prepare_damp_cloth
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)) (at start (step40_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step35_complete))))

  (:durative-action recite_letters
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)) (at start (step3_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step36_complete))))

  (:durative-action dip_pen
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)) (at start (step2_complete)) (at start (step16_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step37_complete))))

  (:durative-action travel_to_stationery_store
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step38_complete))))

  (:durative-action combine_consonants_vowels
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)) (at start (step9_complete)) (at start (step19_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step39_complete))))

  (:durative-action purchase_linguistic_guides
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step40_complete))))
)