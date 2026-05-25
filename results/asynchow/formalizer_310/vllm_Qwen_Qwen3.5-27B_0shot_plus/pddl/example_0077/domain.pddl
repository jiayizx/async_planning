(define (domain put_on_shoes)
    (:requirements :durative-actions)
    
    (:predicates
        (walk_to_closet_pending)
        (walk_to_closet_done)
        (find_shoes_pending)
        (find_shoes_done)
        (get_socks_pending)
        (get_socks_done)
        (put_on_right_sock_pending)
        (put_on_right_sock_done)
        (put_on_left_sock_pending)
        (put_on_left_sock_done)
    )

    (:durative-action walk_to_closet
        :parameters ()
        :duration (= ?duration 15)
        :condition (at start (walk_to_closet_pending))
        :effect (and (at start (not (walk_to_closet_pending))) (at end (walk_to_closet_done)))
    )

    (:durative-action find_shoes
        :parameters ()
        :duration (= ?duration 10)
        :condition (and (at start (find_shoes_pending)) (at start (walk_to_closet_done)))
        :effect (and (at start (not (find_shoes_pending))) (at end (find_shoes_done)))
    )

    (:durative-action get_socks
        :parameters ()
        :duration (= ?duration 20)
        :condition (and (at start (get_socks_pending)) (at start (find_shoes_done)))
        :effect (and (at start (not (get_socks_pending))) (at end (get_socks_done)))
    )

    (:durative-action put_on_right_sock
        :parameters ()
        :duration (= ?duration 10)
        :condition (and (at start (put_on_right_sock_pending)) (at start (get_socks_done)))
        :effect (and (at start (not (put_on_right_sock_pending))) (at end (put_on_right_sock_done)))
    )

    (:durative-action put_on_left_sock
        :parameters ()
        :duration (= ?duration 10)
        :condition (and (at start (put_on_left_sock_pending)) (at start (get_socks_done)))
        :effect (and (at start (not (put_on_left_sock_pending))) (at end (put_on_left_sock_done)))
    )
)
