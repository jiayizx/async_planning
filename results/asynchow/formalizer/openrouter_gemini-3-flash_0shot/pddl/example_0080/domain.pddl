(define (domain raft_building)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (boards_acquired)
    (layout_done)
    (tools_acquired)
    (pieces_attached)
    (buoyancy_tested)
  )

  (:durative-action acquire_boards
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (boards_acquired)))
  )

  (:durative-action layout_pieces
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (boards_acquired)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (layout_done)))
  )

  (:durative-action acquire_tools
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tools_acquired)))
  )

  (:durative-action attach_pieces
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (layout_done)) (at start (tools_acquired)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pieces_attached)))
  )

  (:durative-action test_buoyancy
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (pieces_attached)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (buoyancy_tested)))
  )
)