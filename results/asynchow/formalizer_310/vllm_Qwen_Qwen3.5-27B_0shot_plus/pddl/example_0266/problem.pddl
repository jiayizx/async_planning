(define (problem havdalah_task)
  (:domain havdalah)
  
  (:init
    (prepare_pending)
    (prayer_wine_pending)
    (prayer_spices_pending)
    (prayer_candle_pending)
    (concluding_prayer_pending)
    (extinguish_pending)
  )

  (:goal (and
    (prepare_done)
    (prayer_wine_done)
    (prayer_spices_done)
    (prayer_candle_done)
    (concluding_prayer_done)
    (extinguish_done)
  ))
)
