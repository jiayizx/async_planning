(define (domain couch_stand_up)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (decided)
    (space_found)
    (left_foot_out)
    (right_foot_out)
    (stood_up)
  )

  (:durative-action decide_to_stand_up
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (decided)))
  )

  (:durative-action find_open_space
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (and (at start (step_pending ?s)) (at start (decided)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (space_found)))
  )

  (:durative-action stick_left_foot_out
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (and (at start (step_pending ?s)) (at start (space_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (left_foot_out)))
  )

  (:durative-action stick_right_foot_out
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (and (at start (step_pending ?s)) (at start (space_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (right_foot_out)))
  )

  (:durative-action move_body_upwards
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (and (at start (step_pending ?s)) (at start (left_foot_out)) (at start (right_foot_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stood_up)))
  )
)