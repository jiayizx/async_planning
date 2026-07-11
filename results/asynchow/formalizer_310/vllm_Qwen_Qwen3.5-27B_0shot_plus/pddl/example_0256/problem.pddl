(define (problem lose_upper_body_fat_problem)
    (:domain lose_upper_body_fat)
    
    (:init
        (choose_exercises_pending)
        (do_chin_ups_pending)
        (do_dumbbell_row_pending)
        (do_rear_delt_raise_pending)
    )

    (:goal (and
        (choose_exercises_done)
        (do_chin_ups_done)
        (do_dumbbell_row_done)
        (do_rear_delt_raise_done)
    ))
)
