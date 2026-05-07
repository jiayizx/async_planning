(define (domain walk_to_door)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (located)
    (turned)
    (left_leg_lifted)
    (right_leg_lifted)
    (left_leg_moved)
    (right_leg_moved)
    (door_reached)
  )

  (:durative-action locate_door
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (located)))
  )

  (:durative-action turn_toward_door
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (turned)))
  )

  (:durative-action lift_left_leg
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (and (at start (step_pending ?s)) (at start (turned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (left_leg_lifted)))
  )

  (:durative-action lift_right_leg
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (and (at start (step_pending ?s)) (at start (turned)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (right_leg_lifted)))
  )

  (:durative-action move_left_leg
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (and (at start (step_pending ?s)) (at start (left_leg_lifted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (left_leg_moved)))
  )

  (:durative-action move_right_leg
    :parameters (?s - step)
    :duration (= ?duration 1)
    :condition (and (at start (step_pending ?s)) (at start (right_leg_lifted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (right_leg_moved)))
  )

  (:durative-action move_to_door
    :parameters (?s - step)
    :duration (= ?duration 6)
    :condition (and (at start (step_pending ?s)) (at start (left_leg_moved)) (at start (right_leg_moved)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (door_reached)))
  )
)