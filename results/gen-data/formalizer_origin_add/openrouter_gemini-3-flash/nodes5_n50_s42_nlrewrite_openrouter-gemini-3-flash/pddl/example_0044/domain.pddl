(define (domain school_departure)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (assignment_submitted)
    (backpack_packed)
    (utilities_off)
    (at_parking_lot)
    (door_locked)
  )

  (:durative-action finalize_assignment
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (assignment_submitted)))
  )

  (:durative-action pack_backpack
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (assignment_submitted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (backpack_packed)))
  )

  (:durative-action turn_off_utilities
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (utilities_off)))
  )

  (:durative-action walk_to_parking
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (backpack_packed)) (at start (assignment_submitted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (at_parking_lot)))
  )

  (:durative-action lock_door
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (utilities_off)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (door_locked)))
  )
)