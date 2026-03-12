(define (domain buy_bus_pass)
  (:requirements :durative-actions)
  (:predicates
    (purchase_pending) (purchase_done)
    (register_pending) (register_done)
    (wait_pending) (wait_done)
    (withdraw_pending) (withdraw_done)
    (find_pending) (find_done)
  )

  (:durative-action purchase_pass
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (purchase_pending)) (at start (withdraw_done)))
    :effect (and (at start (not (purchase_pending))) (at end (purchase_done)))
  )

  (:durative-action register_serial
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (register_pending)))
    :effect (and (at start (not (register_pending))) (at end (register_done)))
  )

  (:durative-action wait_activation
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (wait_pending)) (at start (register_done)))
    :effect (and (at start (not (wait_pending))) (at end (wait_done)))
  )

  (:durative-action withdraw_cash
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (withdraw_pending)) (at start (find_done)))
    :effect (and (at start (not (withdraw_pending))) (at end (withdraw_done)))
  )

  (:durative-action find_wallet
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (find_pending)))
    :effect (and (at start (not (find_pending))) (at end (find_done)))
  )
)
