(define (problem play_baseball)
    (:domain baseball_planning)
    
    (:init
        (dress_pending)
        (call_friends_pending)
        (arrange_time_pending)
        (drive_to_venue_pending)
        (exit_car_pending)
        (walk_to_field_pending)
    )

    (:goal (and
        (dress_done)
        (call_friends_done)
        (arrange_time_done)
        (drive_to_venue_done)
        (exit_car_done)
        (walk_to_field_done)
    ))
)
