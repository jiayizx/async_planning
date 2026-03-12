(define (domain deter_squirrels)
  (:requirements :durative-actions)
  (:predicates
    (hang_feeder_pending)
    (hang_feeder_done)
    (buy_baffle_pending)
    (buy_baffle_done)
    (make_baffle_pending)
    (make_baffle_done)
  )

  (:durative-action do_hang_feeder
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (hang_feeder_pending)) (at start (buy_baffle_done)) (at start (make_baffle_done)))
    :effect (and (at start (not (hang_feeder_pending))) (at end (hang_feeder_done)))
  )

  (:durative-action do_buy_baffle
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (buy_baffle_pending))
    :effect (and (at start (not (buy_baffle_pending))) (at end (buy_baffle_done)))
  )

  (:durative-action do_make_baffle
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (make_baffle_pending))
    :effect (and (at start (not (make_baffle_pending))) (at end (make_baffle_done)))
  )
)
