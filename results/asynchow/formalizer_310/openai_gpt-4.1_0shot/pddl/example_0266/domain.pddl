(define (domain havdalah)
  (:requirements :durative-actions)
  (:predicates
    (prepare_pending)
    (prepare_done)
    (wine_pending)
    (wine_done)
    (spices_pending)
    (spices_done)
    (candle_pending)
    (candle_done)
    (conclude_pending)
    (conclude_done)
    (extinguish_pending)
    (extinguish_done)
  )

  (:durative-action do_prepare
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (prepare_pending))
    :effect (and (at start (not (prepare_pending))) (at end (prepare_done)))
  )

  (:durative-action do_wine
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (wine_pending)) (at start (prepare_done)))
    :effect (and (at start (not (wine_pending))) (at end (wine_done)))
  )

  (:durative-action do_spices
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (spices_pending)) (at start (prepare_done)))
    :effect (and (at start (not (spices_pending))) (at end (spices_done)))
  )

  (:durative-action do_candle
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (candle_pending)) (at start (prepare_done)))
    :effect (and (at start (not (candle_pending))) (at end (candle_done)))
  )

  (:durative-action do_conclude
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (conclude_pending)) (at start (wine_done)) (at start (spices_done)) (at start (candle_done)))
    :effect (and (at start (not (conclude_pending))) (at end (conclude_done)))
  )

  (:durative-action do_extinguish
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (extinguish_pending)) (at start (conclude_done)))
    :effect (and (at start (not (extinguish_pending))) (at end (extinguish_done)))
  )
)
