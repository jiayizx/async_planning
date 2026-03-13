(define (domain deter-squirrels)
  (:requirements :durative-actions)
  (:predicates
    (hang_pending) (hang_done)
    (buy_pending) (buy_done)
    (make_pending) (make_done)
  )

  (:durative-action hang_feeder
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (hang_pending)) (at start (buy_done)) (at start (make_done)))
    :effect (and (at start (not (hang_pending))) (at end (hang_done)))
  )

  (:durative-action buy_baffle
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (buy_pending))
    :effect (and (at start (not (buy_pending))) (at end (buy_done)))
  )

  (:durative-action make_baffle
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (make_pending))
    :effect (and (at start (not (make_pending))) (at end (make_done)))
  )
)
