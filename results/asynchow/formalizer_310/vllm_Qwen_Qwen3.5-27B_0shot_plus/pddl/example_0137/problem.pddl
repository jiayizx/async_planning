(define (problem identify_hornet_problem)
    (:domain identify_hornet)
    
    (:init
        (look_pending)
        (observe_pending)
        (estimate_pending)
    )

    (:goal (and (look_done) (observe_done) (estimate_done)))
)