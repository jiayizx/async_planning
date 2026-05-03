(define (domain put_on_left_sock)
    (:requirements :durative-actions)
    
    (:predicates
        (grab_sock_pending)
        (grab_sock_done)
        (sit_down_pending)
        (sit_down_done)
        (raise_foot_pending)
        (raise_foot_done)
        (pull_toes_pending)
        (pull_toes_done)
        (pull_back_pending)
        (pull_back_done)
    )

    (:durative-action grab_sock
        :parameters ()
        :duration (= ?duration 1)
        :condition (at start (grab_sock_pending))
        :effect (and (at start (not (grab_sock_pending))) (at end (grab_sock_done)))
    )

    (:durative-action sit_down
        :parameters ()
        :duration (= ?duration 5)
        :condition (at start (sit_down_pending))
        :effect (and (at start (not (sit_down_pending))) (at end (sit_down_done)))
    )

    (:durative-action raise_foot
        :parameters ()
        :duration (= ?duration 1)
        :condition (and (at start (raise_foot_pending)) (at start (grab_sock_done)) (at start (sit_down_done)))
        :effect (and (at start (not (raise_foot_pending))) (at end (raise_foot_done)))
    )

    (:durative-action pull_toes
        :parameters ()
        :duration (= ?duration 1)
        :condition (and (at start (pull_toes_pending)) (at start (raise_foot_done)))
        :effect (and (at start (not (pull_toes_pending))) (at end (pull_toes_done)))
    )

    (:durative-action pull_back
        :parameters ()
        :duration (= ?duration 1)
        :condition (and (at start (pull_back_pending)) (at start (pull_toes_done)))
        :effect (and (at start (not (pull_back_pending))) (at end (pull_back_done)))
    )
)
