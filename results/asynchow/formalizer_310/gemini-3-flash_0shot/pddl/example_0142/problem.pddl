(define (problem attraction_problem)
  (:domain attraction_detection)
  (:init
    (watch_others_pending)
    (sense_attention_pending)
    (put_clues_together_pending)
  )
  (:goal (and
    (watch_others_done)
    (sense_attention_done)
    (put_clues_together_done)
  ))
  (:metric minimize (total-time))
)