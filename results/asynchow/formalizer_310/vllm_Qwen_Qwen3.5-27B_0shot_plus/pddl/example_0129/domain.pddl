(define (domain get_up_from_couch)
  (:requirements :durative-actions)
  
  (:predicates
    (decide_to_stand_up_pending)
    (decide_to_stand_up_done)
    (find_open_space_pending)
    (find_open_space_done)
    (stick_left_foot_out_pending)
    (stick_left_foot_out_done)
    (stick_right_foot_out_pending)
    (stick_right_foot_out_done)
    (move_body_upwards_pending)
    (move_body_upwards_done)
  )

  (:durative-action decide_to_stand_up
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (decide_to_stand_up_pending)))
    :effect (and (at start (not (decide_to_stand_up_pending)))
                 (at end (decide_to_stand_up_done)))
  )

  (:durative-action find_open_space
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (find_open_space_pending))
                    (at start (decide_to_stand_up_done)))
    :effect (and (at start (not (find_open_space_pending)))
                 (at end (find_open_space_done)))
  )

  (:durative-action stick_left_foot_out
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (stick_left_foot_out_pending))
                    (at start (find_open_space_done)))
    :effect (and (at start (not (stick_left_foot_out_pending)))
                 (at end (stick_left_foot_out_done)))
  )

  (:durative-action stick_right_foot_out
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (stick_right_foot_out_pending))
                    (at start (find_open_space_done)))
    :effect (and (at start (not (stick_right_foot_out_pending)))
                 (at end (stick_right_foot_out_done)))
  )

  (:durative-action move_body_upwards
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (move_body_upwards_pending))
                    (at start (stick_left_foot_out_done))
                    (at start (stick_right_foot_out_done)))
    :effect (and (at start (not (move_body_upwards_pending)))
                 (at end (move_body_upwards_done)))
  )
)
