(define (problem deter_squirrels-problem)
  (:domain deter_squirrels)
  (:init
    (hang_feeder_pending)
    (buy_baffle_pending)
    (make_baffle_pending)
  )
  (:goal (and
    (hang_feeder_done)
    (buy_baffle_done)
    (make_baffle_done)
  ))
)
