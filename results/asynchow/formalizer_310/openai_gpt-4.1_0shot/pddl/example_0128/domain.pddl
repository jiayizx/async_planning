(define (domain put_on_left_sock)
  (:requirements :durative-actions)
  (:predicates
    (grab_sock_with_both_hands_pending)
    (grab_sock_with_both_hands_done)
    (sit_down_pending)
    (sit_down_done)
    (raise_left_foot_pending)
    (raise_left_foot_done)
    (pull_sock_over_toes_pending)
    (pull_sock_over_toes_done)
    (pull_sock_back_pending)
    (pull_sock_back_done)
  )

  (:durative-action grab_sock_with_both_hands
    :parameters ()
    :duration (= ?duration 1)
    :condition (at start (grab_sock_with_both_hands_pending))
    :effect (and
      (at start (not (grab_sock_with_both_hands_pending)))
      (at end (grab_sock_with_both_hands_done))
    )
  )

  (:durative-action sit_down
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (sit_down_pending))
    :effect (and
      (at start (not (sit_down_pending)))
      (at end (sit_down_done))
    )
  )

  (:durative-action raise_left_foot
    :parameters ()
    :duration (= ?duration 1)
    :condition (and
      (at start (raise_left_foot_pending))
      (at start (grab_sock_with_both_hands_done))
      (at start (sit_down_done))
    )
    :effect (and
      (at start (not (raise_left_foot_pending)))
      (at end (raise_left_foot_done))
    )
  )

  (:durative-action pull_sock_over_toes
    :parameters ()
    :duration (= ?duration 1)
    :condition (and
      (at start (pull_sock_over_toes_pending))
      (at start (raise_left_foot_done))
    )
    :effect (and
      (at start (not (pull_sock_over_toes_pending)))
      (at end (pull_sock_over_toes_done))
    )
  )

  (:durative-action pull_sock_back
    :parameters ()
    :duration (= ?duration 1)
    :condition (and
      (at start (pull_sock_back_pending))
      (at start (pull_sock_over_toes_done))
    )
    :effect (and
      (at start (not (pull_sock_back_pending)))
      (at end (pull_sock_back_done))
    )
  )
)
