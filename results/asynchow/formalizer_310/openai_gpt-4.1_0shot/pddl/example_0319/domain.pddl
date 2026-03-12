(define (domain sky_lanterns)
  (:requirements :durative-actions)
  (:predicates
    (buy_wax_paper_pending)
    (buy_wax_paper_done)
    (cut_wax_paper_pending)
    (cut_wax_paper_done)
    (glue_long_edge_pending)
    (glue_long_edge_done)
    (glue_short_ends_pending)
    (glue_short_ends_done)
    (cut_square_pending)
    (cut_square_done)
    (glue_square_pending)
    (glue_square_done)
    (buy_wire_pending)
    (buy_wire_done)
    (make_ring_pending)
    (make_ring_done)
    (run_strips_pending)
    (run_strips_done)
    (glue_ring_pending)
    (glue_ring_done)
    (melt_wax_pending)
    (melt_wax_done)
    (dip_cloth_pending)
    (dip_cloth_done)
    (tie_cloth_pending)
    (tie_cloth_done)
    (light_lantern_pending)
    (light_lantern_done)
    (light_wax_cloth_pending)
    (light_wax_cloth_done)
    (hold_lantern_pending)
    (hold_lantern_done)
    (release_lantern_pending)
    (release_lantern_done)
  )

  (:durative-action buy_wax_paper
    :duration (= ?duration 5)
    :condition (at start (buy_wax_paper_pending))
    :effect (and (at start (not (buy_wax_paper_pending))) (at end (buy_wax_paper_done)))
  )

  (:durative-action cut_wax_paper
    :duration (= ?duration 10)
    :condition (and (at start (cut_wax_paper_pending)) (at start (buy_wax_paper_done)))
    :effect (and (at start (not (cut_wax_paper_pending))) (at end (cut_wax_paper_done)))
  )

  (:durative-action glue_long_edge
    :duration (= ?duration 5)
    :condition (and (at start (glue_long_edge_pending)) (at start (cut_wax_paper_done)))
    :effect (and (at start (not (glue_long_edge_pending))) (at end (glue_long_edge_done)))
  )

  (:durative-action glue_short_ends
    :duration (= ?duration 5)
    :condition (and (at start (glue_short_ends_pending)) (at start (glue_long_edge_done)))
    :effect (and (at start (not (glue_short_ends_pending))) (at end (glue_short_ends_done)))
  )

  (:durative-action cut_square
    :duration (= ?duration 5)
    :condition (and (at start (cut_square_pending)) (at start (glue_ring_done)) (at start (run_strips_done)))
    :effect (and (at start (not (cut_square_pending))) (at end (cut_square_done)))
  )

  (:durative-action glue_square
    :duration (= ?duration 10)
    :condition (and (at start (glue_square_pending)) (at start (glue_short_ends_done)) (at start (cut_square_done)))
    :effect (and (at start (not (glue_square_pending))) (at end (glue_square_done)))
  )

  (:durative-action buy_wire
    :duration (= ?duration 10)
    :condition (and (at start (buy_wire_pending)) (at start (tie_cloth_done)))
    :effect (and (at start (not (buy_wire_pending))) (at end (buy_wire_done)))
  )

  (:durative-action make_ring
    :duration (= ?duration 10)
    :condition (and (at start (make_ring_pending)) (at start (buy_wire_done)))
    :effect (and (at start (not (make_ring_pending))) (at end (make_ring_done)))
  )

  (:durative-action run_strips
    :duration (= ?duration 10)
    :condition (and (at start (run_strips_pending)) (at start (make_ring_done)))
    :effect (and (at start (not (run_strips_pending))) (at end (run_strips_done)))
  )

  (:durative-action glue_ring
    :duration (= ?duration 5)
    :condition (and (at start (glue_ring_pending)) (at start (make_ring_done)) (at start (glue_short_ends_done)))
    :effect (and (at start (not (glue_ring_pending))) (at end (glue_ring_done)))
  )

  (:durative-action melt_wax
    :duration (= ?duration 15)
    :condition (at start (melt_wax_pending))
    :effect (and (at start (not (melt_wax_pending))) (at end (melt_wax_done)))
  )

  (:durative-action dip_cloth
    :duration (= ?duration 10)
    :condition (and (at start (dip_cloth_pending)) (at start (melt_wax_done)))
    :effect (and (at start (not (dip_cloth_pending))) (at end (dip_cloth_done)))
  )

  (:durative-action tie_cloth
    :duration (= ?duration 5)
    :condition (and (at start (tie_cloth_pending)) (at start (dip_cloth_done)))
    :effect (and (at start (not (tie_cloth_pending))) (at end (tie_cloth_done)))
  )

  (:durative-action light_lantern
    :duration (= ?duration 2)
    :condition (and (at start (light_lantern_pending)) (at start (glue_square_done)))
    :effect (and (at start (not (light_lantern_pending))) (at end (light_lantern_done)))
  )

  (:durative-action light_wax_cloth
    :duration (= ?duration 2)
    :condition (and (at start (light_wax_cloth_pending)) (at start (light_lantern_done)))
    :effect (and (at start (not (light_wax_cloth_pending))) (at end (light_wax_cloth_done)))
  )

  (:durative-action hold_lantern
    :duration (= ?duration 10)
    :condition (and (at start (hold_lantern_pending)) (at start (light_wax_cloth_done)))
    :effect (and (at start (not (hold_lantern_pending))) (at end (hold_lantern_done)))
  )

  (:durative-action release_lantern
    :duration (= ?duration 2)
    :condition (and (at start (release_lantern_pending)) (at start (hold_lantern_done)))
    :effect (and (at start (not (release_lantern_pending))) (at end (release_lantern_done)))
  )
)
