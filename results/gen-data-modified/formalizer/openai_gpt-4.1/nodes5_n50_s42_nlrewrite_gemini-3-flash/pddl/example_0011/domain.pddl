(define (domain buspass)
  (:requirements :durative-actions)
  (:predicates
    (purchase_pass_pending)
    (purchase_pass_done)
    (register_serial_pending)
    (register_serial_done)
    (wait_activation_pending)
    (wait_activation_done)
    (withdraw_cash_pending)
    (withdraw_cash_done)
    (find_wallet_pending)
    (find_wallet_done)
  )

  (:durative-action purchase_pass
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (purchase_pass_pending)) (at start (withdraw_cash_done)))
    :effect (and (at start (not (purchase_pass_pending))) (at end (purchase_pass_done)))
  )

  (:durative-action register_serial
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (register_serial_pending)) (at start (purchase_pass_done)))
    :effect (and (at start (not (register_serial_pending))) (at end (register_serial_done)))
  )

  (:durative-action wait_activation
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (wait_activation_pending)) (at start (register_serial_done)))
    :effect (and (at start (not (wait_activation_pending))) (at end (wait_activation_done)))
  )

  (:durative-action withdraw_cash
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (withdraw_cash_pending)) (at start (find_wallet_done)))
    :effect (and (at start (not (withdraw_cash_pending))) (at end (withdraw_cash_done)))
  )

  (:durative-action find_wallet
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (find_wallet_pending))
    :effect (and (at start (not (find_wallet_pending))) (at end (find_wallet_done)))
  )
)
