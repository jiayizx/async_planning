(define (domain put_on_left_sock)
  (:requirements :durative-actions)
  (:predicates
    (grab_sock_pending) (grab_sock_done)
    (sit_down_pending) (sit_down_done)
    (raise_left_foot_pending) (raise_left_foot_done)
    (pull_opening_pending) (pull_opening_done)
    (pull_backwards_pending) (pull_backwards_done)
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

  (:durative-action raise_left_foot
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (raise_left_foot_pending)) (at start (grab_sock_done)) (at start (sit_down_done)))
    :effect (and (at start (not (raise_left_foot_pending))) (at end (raise_left_foot_done)))
  )

  (:durative-action pull_opening
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (pull_opening_pending)) (at start (raise_left_foot_done)))
    :effect (and (at start (not (pull_opening_pending))) (at end (pull_opening_done)))
  )

  (:durative-action pull_backwards
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (pull_backwards_pending)) (at start (pull_opening_done)))
    :effect (and (at start (not (pull_backwards_pending))) (at end (pull_backwards_done)))
  )
)
