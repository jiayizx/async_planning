(define (domain walk_to_front_door)
  (:requirements :durative-actions)
  (:predicates
    (locate_front_door_pending)
    (locate_front_door_done)
    (turn_toward_door_pending)
    (turn_toward_door_done)
    (lift_left_leg_pending)
    (lift_left_leg_done)
    (lift_right_leg_pending)
    (lift_right_leg_done)
    (move_left_leg_forward_pending)
    (move_left_leg_forward_done)
    (move_right_leg_forward_pending)
    (move_right_leg_forward_done)
    (move_forward_until_door_pending)
    (move_forward_until_door_done)
  )

  (:durative-action locate_front_door
    :parameters ()
    :duration (= ?duration 3)
    :condition (at start (locate_front_door_pending))
    :effect (and (at start (not (locate_front_door_pending))) (at end (locate_front_door_done)))
  )

  (:durative-action turn_toward_door
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (turn_toward_door_pending)) (at start (locate_front_door_done)))
    :effect (and (at start (not (turn_toward_door_pending))) (at end (turn_toward_door_done)))
  )

  (:durative-action lift_left_leg
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (lift_left_leg_pending)) (at start (turn_toward_door_done)))
    :effect (and (at start (not (lift_left_leg_pending))) (at end (lift_left_leg_done)))
  )

  (:durative-action lift_right_leg
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (lift_right_leg_pending)) (at start (turn_toward_door_done)))
    :effect (and (at start (not (lift_right_leg_pending))) (at end (lift_right_leg_done)))
  )

  (:durative-action move_left_leg_forward
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (move_left_leg_forward_pending)) (at start (lift_left_leg_done)))
    :effect (and (at start (not (move_left_leg_forward_pending))) (at end (move_left_leg_forward_done)))
  )

  (:durative-action move_right_leg_forward
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (move_right_leg_forward_pending)) (at start (lift_right_leg_done)))
    :effect (and (at start (not (move_right_leg_forward_pending))) (at end (move_right_leg_forward_done)))
  )

  (:durative-action move_forward_until_door
    :parameters ()
    :duration (= ?duration 6)
    :condition (and (at start (move_forward_until_door_pending)) (at start (move_left_leg_forward_done)) (at start (move_right_leg_forward_done)))
    :effect (and (at start (not (move_forward_until_door_pending))) (at end (move_forward_until_door_done)))
  )
)
