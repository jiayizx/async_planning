(define (domain furniture-painting)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step) (step_done ?s - step)
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
    (step1_complete) (step2_complete) (step3_complete) (step4_complete)
    (step5_complete) (step6_complete) (step7_complete) (step8_complete)
    (step9_complete) (step10_complete) (step11_complete) (step12_complete)
    (step13_complete) (step14_complete) (step15_complete) (step16_complete)
    (step17_complete) (step18_complete) (step19_complete) (step20_complete)
    (step21_complete) (step22_complete) (step23_complete) (step24_complete)
    (step25_complete) (step26_complete) (step27_complete) (step28_complete)
    (step29_complete) (step30_complete)
  )

  (:durative-action clear_room
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_complete))))

  (:durative-action purchase_brushes
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_complete))))

  (:durative-action remove_hardware
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (step1_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_complete))))

  (:durative-action apply_topcoat
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)) (at start (step23_complete)) (at start (step29_complete)) (at start (step30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_complete))))

  (:durative-action research_colors
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_complete))))

  (:durative-action apply_first_coat
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (step17_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_complete))))

  (:durative-action wipe_dust
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (step12_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_complete))))

  (:durative-action mix_paint
    :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (step27_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_complete))))

  (:durative-action clean_trays
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (step18_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_complete))))

  (:durative-action fill_holes
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (step11_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_complete))))

  (:durative-action sand_old_finish
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (step3_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_complete))))

  (:durative-action vacuum_dust
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (step24_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_complete))))

  (:durative-action reinstall_hardware
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (step29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_complete))))

  (:durative-action apply_second_coat
    :parameters (?s - step) :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)) (at start (step7_complete)) (at start (step19_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_complete))))

  (:durative-action tape_edges
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)) (at start (step1_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_complete))))

  (:durative-action dispose_cans
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (step28_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_complete))))

  (:durative-action purchase_paint
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (step5_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_complete))))

  (:durative-action wash_brushes
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_complete))))

  (:durative-action inspect_finish
    :parameters (?s - step) :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (step26_complete)) (at start (step30_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_complete))))

  (:durative-action apply_primer
    :parameters (?s - step) :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (step5_complete)) (at start (step10_complete)) (at start (step23_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_complete))))

  (:durative-action replace_furniture
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)) (at start (step13_complete)) (at start (step29_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_complete))))

  (:durative-action cure_paint
    :parameters (?s - step) :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)) (at start (step23_complete)) (at start (step26_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_complete))))

  (:durative-action degloss_surface
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_complete))))

  (:durative-action pick_up_vacuum
    :parameters (?s - step) :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)) (at start (step2_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_complete))))

  (:durative-action label_hardware
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (step24_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_complete))))

  (:durative-action sand_between_coats
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (step6_complete)) (at start (step8_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_complete))))

  (:durative-action dry_brushes
    :parameters (?s - step) :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (step18_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_complete))))

  (:durative-action gather_waste
    :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_complete))))

  (:durative-action apply_touch_up
    :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (step7_complete)) (at start (step26_complete)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_complete))))

  (:durative-action remove_tape
    :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_complete))))
)