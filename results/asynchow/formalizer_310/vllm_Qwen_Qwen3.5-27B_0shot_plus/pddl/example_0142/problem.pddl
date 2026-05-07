(define (problem attraction_task)
  (:domain attraction_detection)
  
  (:init
    (watch_pending)
    (sense_pending)
    (clues_pending)
  )

  (:goal (and (watch_done) (sense_done) (clues_done)))
)