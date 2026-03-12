(define (domain attraction_detection)
  (:requirements :durative-actions)
  (:predicates
    (watch_others_pending)
    (watch_others_done)
    (sense_attention_pending)
    (sense_attention_done)
    (put_clues_together_pending)
    (put_clues_together_done)
  )

  (:durative-action watch_others
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (watch_others_pending))
    :effect (and (at start (not (watch_others_pending))) (at end (watch_others_done)))
  )

  (:durative-action sense_attention
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (sense_attention_pending))
    :effect (and (at start (not (sense_attention_pending))) (at end (sense_attention_done)))
  )

  (:durative-action put_clues_together
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (put_clues_together_pending)) (at start (watch_others_done)) (at start (sense_attention_done)))
    :effect (and (at start (not (put_clues_together_pending))) (at end (put_clues_together_done)))
  )
)