(define (problem know-attraction-problem)
  (:domain know-attraction)
  (:init
    (watch_how_person_acts_with_others_pending)
    (sense_attention_pending)
    (put_clues_together_pending)
  )
  (:goal (and
    (watch_how_person_acts_with_others_done)
    (sense_attention_done)
    (put_clues_together_done)
  ))
)
