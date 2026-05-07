(define (domain karate_basics)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (gravity_lowered)
    (high_block_done)
    (forward_block_done)
    (cross_block_done)
    (downward_block_done)
  )

  (:durative-action practice_gravity
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (gravity_lowered)))
  )

  (:durative-action high_block
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (gravity_lowered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (high_block_done)))
  )

  (:durative-action forward_block
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (gravity_lowered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (forward_block_done)))
  )

  (:durative-action cross_block
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (gravity_lowered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cross_block_done)))
  )

  (:durative-action downward_block
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (gravity_lowered)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (downward_block_done)))
  )
)