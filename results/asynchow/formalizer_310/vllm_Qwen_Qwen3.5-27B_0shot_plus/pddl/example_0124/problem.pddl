(define (problem walk_to_door_instance)
  (:domain walk_to_door)
  
  (:init
    (locate_front_door_pending)
    (turn_toward_door_pending)
    (lift_left_leg_pending)
    (lift_right_leg_pending)
    (move_left_leg_pending)
    (move_right_leg_pending)
    (move_forward_pending)
  )

  (:goal (and
    (locate_front_door_done)
    (turn_toward_door_done)
    (lift_left_leg_done)
    (lift_right_leg_done)
    (move_left_leg_done)
    (move_right_leg_done)
    (move_forward_done)
  ))
)
