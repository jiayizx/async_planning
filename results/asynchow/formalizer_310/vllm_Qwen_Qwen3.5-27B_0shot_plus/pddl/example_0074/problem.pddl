(define (problem turn_on_computer_problem)
    (:domain turn_on_computer)
    
    (:init
        (approach_desk_pending)
        (sit_down_pending)
        (move_hand_pending)
        (reach_monitor_pending)
        (hold_power_pending)
        (press_monitor_pending)
    )

    (:goal (and
        (approach_desk_done)
        (sit_down_done)
        (move_hand_done)
        (reach_monitor_done)
        (hold_power_done)
        (press_monitor_done)
    ))
)
