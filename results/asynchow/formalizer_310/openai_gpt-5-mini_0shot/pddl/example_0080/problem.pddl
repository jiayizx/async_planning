(define (problem build_raft_problem)
  (:domain build_raft)
  (:init
    (acquire_boards_pending)
    (lay_pieces_pending)
    (attach_pieces_pending)
    (acquire_tools_pending)
    (test_buoyancy_pending)
  )

  (:goal (and
    (acquire_boards_done)
    (lay_pieces_done)
    (attach_pieces_done)
    (acquire_tools_done)
    (test_buoyancy_done)
  ))
)
