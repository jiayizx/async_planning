(define (problem squirrel_deterrence_problem)
  (:domain squirrel_deterrence)
  
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
