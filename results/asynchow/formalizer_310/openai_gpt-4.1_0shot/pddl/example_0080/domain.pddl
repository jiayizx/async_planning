(define (domain raft_building)
  (:requirements :durative-actions)
  (:predicates
    (acquire_wooden_boards_pending)
    (acquire_wooden_boards_done)
    (lay_out_pieces_pending)
    (lay_out_pieces_done)
    (begin_attaching_pieces_pending)
    (begin_attaching_pieces_done)
    (acquire_construction_tools_pending)
    (acquire_construction_tools_done)
    (test_buoyancy_pending)
    (test_buoyancy_done)
  )

  (:durative-action acquire_wooden_boards
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (acquire_wooden_boards_pending))
    :effect (and (at start (not (acquire_wooden_boards_pending)))
                 (at end (acquire_wooden_boards_done)))
  )

  (:durative-action lay_out_pieces
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (lay_out_pieces_pending))
                    (at start (acquire_wooden_boards_done)))
    :effect (and (at start (not (lay_out_pieces_pending)))
                 (at end (lay_out_pieces_done)))
  )

  (:durative-action begin_attaching_pieces
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (begin_attaching_pieces_pending))
                    (at start (lay_out_pieces_done))
                    (at start (acquire_construction_tools_done)))
    :effect (and (at start (not (begin_attaching_pieces_pending)))
                 (at end (begin_attaching_pieces_done)))
  )

  (:durative-action acquire_construction_tools
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (acquire_construction_tools_pending))
    :effect (and (at start (not (acquire_construction_tools_pending)))
                 (at end (acquire_construction_tools_done)))
  )

  (:durative-action test_buoyancy
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (test_buoyancy_pending))
                    (at start (begin_attaching_pieces_done)))
    :effect (and (at start (not (test_buoyancy_pending)))
                 (at end (test_buoyancy_done)))
  )
)
