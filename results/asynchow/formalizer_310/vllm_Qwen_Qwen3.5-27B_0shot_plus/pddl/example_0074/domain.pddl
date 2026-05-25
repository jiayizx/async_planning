(define (domain turn_on_computer)
    (:requirements :durative-actions)
    
    (:predicates
        (approach_desk_pending)
        (approach_desk_done)
        (sit_down_pending)
        (sit_down_done)
        (move_hand_pending)
        (move_hand_done)
        (reach_monitor_pending)
        (reach_monitor_done)
        (hold_power_pending)
        (hold_power_done)
        (press_monitor_pending)
        (press_monitor_done)
    )

    (:durative-action approach_desk
        :parameters ()
        :duration (= ?duration 45)
        :condition (at start (approach_desk_pending))
        :effect (and (at start (not (approach_desk_pending))) (at end (approach_desk_done)))
    )

    (:durative-action sit_down
        :parameters ()
        :duration (= ?duration 30)
        :condition (and (at start (sit_down_pending)) (at start (approach_desk_done)))
        :effect (and (at start (not (sit_down_pending))) (at end (sit_down_done)))
    )

    (:durative-action move_hand
        :parameters ()
        :duration (= ?duration 15)
        :condition (and (at start (move_hand_pending)) (at start (sit_down_done)))
        :effect (and (at start (not (move_hand_pending))) (at end (move_hand_done)))
    )

    (:durative-action reach_monitor
        :parameters ()
        :duration (= ?duration 15)
        :condition (and (at start (reach_monitor_pending)) (at start (sit_down_done)))
        :effect (and (at start (not (reach_monitor_pending))) (at end (reach_monitor_done)))
    )

    (:durative-action hold_power
        :parameters ()
        :duration (= ?duration 10)
        :condition (and (at start (hold_power_pending)) (at start (move_hand_done)))
        :effect (and (at start (not (hold_power_pending))) (at end (hold_power_done)))
    )

    (:durative-action press_monitor
        :parameters ()
        :duration (= ?duration 10)
        :condition (and (at start (press_monitor_pending)) (at start (reach_monitor_done)))
        :effect (and (at start (not (press_monitor_pending))) (at end (press_monitor_done)))
    )
)
