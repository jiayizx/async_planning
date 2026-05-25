(define (problem raft_building_problem)
  (:domain raft_building)
  
  (:init
    (acquire_wooden_boards_pending)
    (lay_out_pieces_pending)
    (begin_attaching_pieces_pending)
    (acquire_construction_tools_pending)
    (test_construction_pending)
  )

  (:goal (and
    (acquire_wooden_boards_done)
    (lay_out_pieces_done)
    (begin_attaching_pieces_done)
    (acquire_construction_tools_done)
    (test_construction_done)
  ))
)
