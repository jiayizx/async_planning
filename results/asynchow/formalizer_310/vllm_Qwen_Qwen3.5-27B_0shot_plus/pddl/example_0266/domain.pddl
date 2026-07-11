(define (domain havdalah)
  (:requirements :durative-actions)
  
  (:predicates
    (prepare_pending)
    (prepare_done)
    (prayer_wine_pending)
    (prayer_wine_done)
    (prayer_spices_pending)
    (prayer_spices_done)
    (prayer_candle_pending)
    (prayer_candle_done)
    (concluding_prayer_pending)
    (concluding_prayer_done)
    (extinguish_pending)
    (extinguish_done)
  )

  (:durative-action prepare
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (prepare_pending))
    :effect (and (at start (not (prepare_pending))) (at end (prepare_done)))
  )

  (:durative-action prayer_wine
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (prayer_wine_pending)) (at start (prepare_done)))
    :effect (and (at start (not (prayer_wine_pending))) (at end (prayer_wine_done)))
  )

  (:durative-action prayer_spices
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (prayer_spices_pending)) (at start (prepare_done)))
    :effect (and (at start (not (prayer_spices_pending))) (at end (prayer_spices_done)))
  )

  (:durative-action prayer_candle
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (prayer_candle_pending)) (at start (prepare_done)))
    :effect (and (at start (not (prayer_candle_pending))) (at end (prayer_candle_done)))
  )

  (:durative-action concluding_prayer
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (concluding_prayer_pending)) (at start (prayer_wine_done)) (at start (prayer_spices_done)) (at start (prayer_candle_done)))
    :effect (and (at start (not (concluding_prayer_pending))) (at end (concluding_prayer_done)))
  )

  (:durative-action extinguish
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (extinguish_pending)) (at start (concluding_prayer_done)))
    :effect (and (at start (not (extinguish_pending))) (at end (extinguish_done)))
  )
)
