(define (domain evolve-munchlax)
  (:requirements :durative-actions)
  (:predicates
    (trade_cinccino_pending)
    (trade_cinccino_done)
    (catch_cinccino_pending)
    (catch_cinccino_done)
    (raise_friendship_pending)
    (raise_friendship_done)
    (use_rare_candy_pending)
    (use_rare_candy_done)
  )

  (:durative-action catch_cinccino
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (catch_cinccino_pending))
    :effect (and (at start (not (catch_cinccino_pending))) (at end (catch_cinccino_done)))
  )

  (:durative-action trade_cinccino
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (trade_cinccino_pending)) (at start (catch_cinccino_done)))
    :effect (and (at start (not (trade_cinccino_pending))) (at end (trade_cinccino_done)))
  )

  (:durative-action raise_friendship
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (raise_friendship_pending)) (at start (trade_cinccino_done)))
    :effect (and (at start (not (raise_friendship_pending))) (at end (raise_friendship_done)))
  )

  (:durative-action use_rare_candy
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (use_rare_candy_pending)) (at start (trade_cinccino_done)))
    :effect (and (at start (not (use_rare_candy_pending))) (at end (use_rare_candy_done)))
  )
)
