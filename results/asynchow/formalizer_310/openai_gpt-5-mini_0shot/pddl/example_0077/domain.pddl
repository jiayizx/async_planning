(define (domain put_on_shoes)
  (:requirements :durative-actions)
  (:predicates
    (walk_pending) (walk_done)
    (find_pending) (find_done)
    (socks_pending) (socks_done)
    (right_sock_pending) (right_sock_done)
    (left_sock_pending) (left_sock_done)
  )

  (:durative-action walk_to_closet
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (walk_pending))
    :effect (and (at start (not (walk_pending))) (at end (walk_done)))
  )

  (:durative-action find_pair_of_shoes
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (find_pending)) (at start (walk_done)))
    :effect (and (at start (not (find_pending))) (at end (find_done)))
  )

  (:durative-action get_pair_of_socks
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (socks_pending)) (at start (find_done)))
    :effect (and (at start (not (socks_pending))) (at end (socks_done)))
  )

  (:durative-action put_on_right_sock
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (right_sock_pending)) (at start (socks_done)))
    :effect (and (at start (not (right_sock_pending))) (at end (right_sock_done)))
  )

  (:durative-action put_on_left_sock
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (left_sock_pending)) (at start (socks_done)))
    :effect (and (at start (not (left_sock_pending))) (at end (left_sock_done)))
  )
)
