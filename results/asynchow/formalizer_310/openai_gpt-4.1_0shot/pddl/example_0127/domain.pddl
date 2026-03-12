(define (domain get-into-car)
  (:requirements :durative-actions)
  (:predicates
    (grab_wallet_pending)
    (grab_wallet_done)
    (grab_keys_pending)
    (grab_keys_done)
    (exit_garage_pending)
    (exit_garage_done)
    (unlock_car_pending)
    (unlock_car_done)
    (check_wallet_pending)
    (check_wallet_done)
  )

  (:durative-action grab_wallet
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (grab_wallet_pending))
    :effect (and (at start (not (grab_wallet_pending))) (at end (grab_wallet_done)))
  )

  (:durative-action grab_keys
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (grab_keys_pending))
    :effect (and (at start (not (grab_keys_pending))) (at end (grab_keys_done)))
  )

  (:durative-action exit_garage
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (exit_garage_pending)) (at start (grab_keys_done)) (at start (check_wallet_done)))
    :effect (and (at start (not (exit_garage_pending))) (at end (exit_garage_done)))
  )

  (:durative-action unlock_car
    :parameters ()
    :duration (= ?duration 35)
    :condition (and (at start (unlock_car_pending)) (at start (exit_garage_done)))
    :effect (and (at start (not (unlock_car_pending))) (at end (unlock_car_done)))
  )

  (:durative-action check_wallet
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (check_wallet_pending)) (at start (grab_wallet_done)))
    :effect (and (at start (not (check_wallet_pending))) (at end (check_wallet_done)))
  )
)
