(define (domain sky_lanterns)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
    (step6_done)
    (step7_done)
    (step8_done)
    (step9_done)
    (step10_done)
    (step11_done)
    (step12_done)
    (step13_done)
    (step14_done)
    (step15_done)
    (step16_done)
    (step17_done)
  )

  (:durative-action buy_wax_paper
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step1_done)))
  )

  (:durative-action cut_wax_paper
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step2_done)))
  )

  (:durative-action glue_long_edges
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step3_done)))
  )

  (:durative-action glue_short_ends
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step4_done)))
  )

  (:durative-action cut_square_paper
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step5_done)))
  )

  (:durative-action glue_square_top
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step4_done)) (at start (step5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step6_done)))
  )

  (:durative-action buy_metal_wire
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step7_done)))
  )

  (:durative-action make_wire_ring
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step8_done)))
  )

  (:durative-action run_cross_wires
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step9_done)))
  )

  (:durative-action glue_ring_to_shell
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step10_done)))
  )

  (:durative-action melt_candle_wax
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step11_done)))
  )

  (:durative-action dip_cloth
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step12_done)))
  )

  (:durative-action tie_cloth_to_frame
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step13_done)))
  )

  (:durative-action light_lantern_outdoor
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step6_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step14_done)))
  )

  (:durative-action hold_and_light_cloth
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step15_done)))
  )

  (:durative-action hold_until_pulling
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step16_done)))
  )

  (:durative-action release_lantern
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step17_done)))
  )
)