(define (domain hurricane_window_protection)
  (:requirements :durative-actions)
  (:predicates
    (cut_plywood_pending)
    (cut_plywood_done)
    (apply_sealant_pending)
    (apply_sealant_done)
    (drill_pilot_holes_pending)
    (drill_pilot_holes_done)
    (cleanup_driveway_pending)
    (cleanup_driveway_done)
    (check_radio_pending)
    (check_radio_done)
    (label_boards_pending)
    (label_boards_done)
    (clear_patio_pending)
    (clear_patio_done)
    (purchase_screws_pending)
    (purchase_screws_done)
    (sand_edges_pending)
    (sand_edges_done)
    (gather_tools_pending)
    (gather_tools_done)
    (paint_plywood_pending)
    (paint_plywood_done)
    (organize_boards_pending)
    (organize_boards_done)
    (mount_plywood_pending)
    (mount_plywood_done)
    (check_hardware_pending)
    (check_hardware_done)
    (mark_bolt_anchors_pending)
    (mark_bolt_anchors_done)
    (install_tracks_pending)
    (install_tracks_done)
    (carry_boards_pending)
    (carry_boards_done)
    (inspect_windows_pending)
    (inspect_windows_done)
    (purchase_plywood_pending)
    (purchase_plywood_done)
    (doublecheck_bolts_pending)
    (doublecheck_bolts_done)
  )

  (:durative-action cut_plywood
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (cut_plywood_pending)) (at start (label_boards_done)) (at start (gather_tools_done)) (at start (purchase_screws_done)))
    :effect (and (at start (not (cut_plywood_pending))) (at end (cut_plywood_done)))
  )

  (:durative-action apply_sealant
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (apply_sealant_pending)) (at start (install_tracks_done)))
    :effect (and (at start (not (apply_sealant_pending))) (at end (apply_sealant_done)))
  )

  (:durative-action drill_pilot_holes
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (drill_pilot_holes_pending)) (at start (carry_boards_done)))
    :effect (and (at start (not (drill_pilot_holes_pending))) (at end (drill_pilot_holes_done)))
  )

  (:durative-action cleanup_driveway
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (cleanup_driveway_pending)) (at start (inspect_windows_done)) (at start (doublecheck_bolts_done)))
    :effect (and (at start (not (cleanup_driveway_pending))) (at end (cleanup_driveway_done)))
  )

  (:durative-action check_radio
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (check_radio_pending))
    :effect (and (at start (not (check_radio_pending))) (at end (check_radio_done)))
  )

  (:durative-action label_boards
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (label_boards_pending)) (at start (gather_tools_done)))
    :effect (and (at start (not (label_boards_pending))) (at end (label_boards_done)))
  )

  (:durative-action clear_patio
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (clear_patio_pending)) (at start (purchase_plywood_done)))
    :effect (and (at start (not (clear_patio_pending))) (at end (clear_patio_done)))
  )

  (:durative-action purchase_screws
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (purchase_screws_pending))
    :effect (and (at start (not (purchase_screws_pending))) (at end (purchase_screws_done)))
  )

  (:durative-action sand_edges
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (sand_edges_pending)) (at start (cut_plywood_done)) (at start (purchase_screws_done)))
    :effect (and (at start (not (sand_edges_pending))) (at end (sand_edges_done)))
  )

  (:durative-action gather_tools
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (gather_tools_pending)) (at start (check_radio_done)) (at start (clear_patio_done)) (at start (purchase_screws_done)))
    :effect (and (at start (not (gather_tools_pending))) (at end (gather_tools_done)))
  )

  (:durative-action paint_plywood
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (paint_plywood_pending)) (at start (sand_edges_done)))
    :effect (and (at start (not (paint_plywood_pending))) (at end (paint_plywood_done)))
  )

  (:durative-action organize_boards
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (organize_boards_pending)) (at start (label_boards_done)))
    :effect (and (at start (not (organize_boards_pending))) (at end (organize_boards_done)))
  )

  (:durative-action mount_plywood
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (mount_plywood_pending)) (at start (mark_bolt_anchors_done)) (at start (inspect_windows_done)))
    :effect (and (at start (not (mount_plywood_pending))) (at end (mount_plywood_done)))
  )

  (:durative-action check_hardware
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (check_hardware_pending))
    :effect (and (at start (not (check_hardware_pending))) (at end (check_hardware_done)))
  )

  (:durative-action mark_bolt_anchors
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (mark_bolt_anchors_pending)) (at start (drill_pilot_holes_done)) (at start (clear_patio_done)) (at start (sand_edges_done)))
    :effect (and (at start (not (mark_bolt_anchors_pending))) (at end (mark_bolt_anchors_done)))
  )

  (:durative-action install_tracks
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (install_tracks_pending)) (at start (inspect_windows_done)))
    :effect (and (at start (not (install_tracks_pending))) (at end (install_tracks_done)))
  )

  (:durative-action carry_boards
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (carry_boards_pending)) (at start (organize_boards_done)))
    :effect (and (at start (not (carry_boards_pending))) (at end (carry_boards_done)))
  )

  (:durative-action inspect_windows
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (inspect_windows_pending))
    :effect (and (at start (not (inspect_windows_pending))) (at end (inspect_windows_done)))
  )

  (:durative-action purchase_plywood
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (purchase_plywood_pending)) (at start (check_hardware_done)))
    :effect (and (at start (not (purchase_plywood_pending))) (at end (purchase_plywood_done)))
  )

  (:durative-action doublecheck_bolts
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (doublecheck_bolts_pending)) (at start (mount_plywood_done)))
    :effect (and (at start (not (doublecheck_bolts_pending))) (at end (doublecheck_bolts_done)))
  )
)
