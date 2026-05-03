(define (problem put_on_left_sock_instance)
    (:domain put_on_left_sock)
    
    (:init
        (grab_sock_pending)
        (sit_down_pending)
        (raise_foot_pending)
        (pull_toes_pending)
        (pull_back_pending)
    )

    (:goal (and
        (grab_sock_done)
        (sit_down_done)
        (raise_foot_done)
        (pull_toes_done)
        (pull_back_done)
    ))
)
