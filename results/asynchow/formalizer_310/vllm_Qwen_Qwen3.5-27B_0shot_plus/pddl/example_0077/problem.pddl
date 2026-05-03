(define (problem put_on_shoes_task)
    (:domain put_on_shoes)
    
    (:init
        (walk_to_closet_pending)
        (find_shoes_pending)
        (get_socks_pending)
        (put_on_right_sock_pending)
        (put_on_left_sock_pending)
    )

    (:goal (and
        (walk_to_closet_done)
        (find_shoes_done)
        (get_socks_done)
        (put_on_right_sock_done)
        (put_on_left_sock_done)
    ))
)
