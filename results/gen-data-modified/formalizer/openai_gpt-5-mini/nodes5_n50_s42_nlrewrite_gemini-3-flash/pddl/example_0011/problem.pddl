(define (problem buy_bus_pass_prob)
  (:domain buy_bus_pass)

  (:init
    (purchase_pending) (register_pending) (wait_pending) (withdraw_pending) (find_pending)
  )

  (:goal (and
    (purchase_done) (register_done) (wait_done) (withdraw_done) (find_done)
  ))
)
