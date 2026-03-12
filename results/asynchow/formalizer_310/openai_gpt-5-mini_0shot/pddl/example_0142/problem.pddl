(define (problem know-attraction-problem)
  (:domain know-attraction)
  (:init
    (watch_pending)
    (sense_pending)
    (put_clues_pending)
  )
  (:goal (and (watch_done) (sense_done) (put_clues_done)))
)
