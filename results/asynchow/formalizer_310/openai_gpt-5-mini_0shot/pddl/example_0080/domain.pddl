(define (domain build_raft)
  (:requirements :durative-actions)
  (:predicates
    (acquire_boards_pending)
    (acquire_boards_done)
    (lay_pieces_pending)
    (lay_pieces_done)
    (attach_pieces_pending)
    (attach_pieces_done)
    (acquire_tools_pending)
    (acquire_tools_done)
    (test_buoyancy_pending)
    (test_buoyancy_done)
  )

  (:durative-action do_acquire_boards
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (acquire_boards_pending))
    :effect (and (at start (not (acquire_boards_pending))) (at end (acquire_boards_done)))
  )

  (:durative-action do_lay_pieces
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (lay_pieces_pending)) (at start (acquire_boards_done)))
    :effect (and (at start (not (lay_pieces_pending))) (at end (lay_pieces_done)))
  )

  (:durative-action do_attach_pieces
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (attach_pieces_pending)) (at start (lay_pieces_done)) (at start (acquire_tools_done)))
    :effect (and (at start (not (attach_pieces_pending))) (at end (attach_pieces_done)))
  )

  (:durative-action do_acquire_tools
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (acquire_tools_pending))
    :effect (and (at start (not (acquire_tools_pending))) (at end (acquire_tools_done)))
  )

  (:durative-action do_test_buoyancy
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (test_buoyancy_pending)) (at start (attach_pieces_done)))
    :effect (and (at start (not (test_buoyancy_pending))) (at end (test_buoyancy_done)))
  )
)
