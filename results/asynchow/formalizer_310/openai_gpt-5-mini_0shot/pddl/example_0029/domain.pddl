(define (domain leave_house)
  (:requirements :durative-actions)
  (:predicates
    (decide_pending) (decide_done)
    (put_clothing_pending) (put_clothing_done)
    (find_keys_wallet_pending) (find_keys_wallet_done)
    (check_mirror_pending) (check_mirror_done)
    (put_shoes_pending) (put_shoes_done)
    (step_outside_pending) (step_outside_done)
  )

  (:durative-action do_decide
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (decide_pending))
    :effect (and (at start (not (decide_pending))) (at end (decide_done)))
  )

  (:durative-action do_put_on_clothing
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (put_clothing_pending)) (at start (decide_done)))
    :effect (and (at start (not (put_clothing_pending))) (at end (put_clothing_done)))
  )

  (:durative-action do_find_keys_wallet
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (find_keys_wallet_pending)) (at start (decide_done)))
    :effect (and (at start (not (find_keys_wallet_pending))) (at end (find_keys_wallet_done)))
  )

  (:durative-action do_check_mirror
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (check_mirror_pending)) (at start (put_clothing_done)))
    :effect (and (at start (not (check_mirror_pending))) (at end (check_mirror_done)))
  )

  (:durative-action do_put_on_shoes
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (put_shoes_pending)) (at start (put_clothing_done)))
    :effect (and (at start (not (put_shoes_pending))) (at end (put_shoes_done)))
  )

  (:durative-action do_step_outside
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_outside_pending)) (at start (find_keys_wallet_done)) (at start (check_mirror_done)) (at start (put_shoes_done)))
    :effect (and (at start (not (step_outside_pending))) (at end (step_outside_done)))
  )
)
