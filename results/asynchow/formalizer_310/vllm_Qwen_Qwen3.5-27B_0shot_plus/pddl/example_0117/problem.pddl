(define (problem learn_basketball)
    (:domain basketball_learning)
    
    (:init
        (hire_coach_pending)
        (buy_ball_pending)
        (find_court_pending)
        (practice_dribbling_pending)
        (practice_shooting_pending)
    )

    (:goal (and
        (hire_coach_done)
        (buy_ball_done)
        (find_court_done)
        (practice_dribbling_done)
        (practice_shooting_done)
    ))
)
