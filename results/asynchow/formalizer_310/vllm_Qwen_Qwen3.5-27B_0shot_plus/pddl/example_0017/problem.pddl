(define (problem gym_task)
    (:domain gym_planning)
    
    (:init
        (search_pending)
        (compare_pending)
        (find_pending)
        (drive_pending)
        (membership_pending)
    )

    (:goal (and
        (search_done)
        (compare_done)
        (find_done)
        (drive_done)
        (membership_done)
    ))
)
