(define (domain put_on_shoes)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (walked_to_closet_done)
    (found_shoes_done)
    (got_socks_done)
    (right_sock_on_done)
    (left_sock_on_done)
  )

  (:durative-action walk_to_closet
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (walked_to_closet_done)))
  )

  (:durative-action find_pair_of_shoes
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step2)) (at start (walked_to_closet_done)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (found_shoes_done)))
  )

  (:durative-action get_pair_of_socks
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step3)) (at start (found_shoes_done)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (got_socks_done)))
  )

  (:durative-action put_on_right_sock
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step4)) (at start (got_socks_done)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (right_sock_on_done)))
  )

  (:durative-action put_on_left_sock
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step5)) (at start (got_socks_done)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (left_sock_on_done)))
  )
)
