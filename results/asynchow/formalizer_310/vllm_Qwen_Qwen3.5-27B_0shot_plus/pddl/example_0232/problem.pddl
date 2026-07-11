(define (problem understand_math_problem)
    (:domain understand_math)
    
    (:init
        (go_for_extra_help_pending)
        (practice_more_pending)
        (hire_tutor_pending)
        (look_to_friend_pending)
    )

    (:goal (and
        (go_for_extra_help_done)
        (practice_more_done)
        (hire_tutor_done)
        (look_to_friend_done)
    ))
)
