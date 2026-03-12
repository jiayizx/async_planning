(define (domain know-attraction)
  (:requirements :durative-actions)
  (:predicates
    (watch_pending)
    (watch_done)
    (sense_pending)
    (sense_done)
    (put_clues_pending)
    (put_clues_done)
  )

  (:durative-action watch_actions_with_others
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (watch_pending))
    :effect (and (at start (not (watch_pending))) (at end (watch_done)))
  )

  (:durative-action sense_attention
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (sense_pending))
    :effect (and (at start (not (sense_pending))) (at end (sense_done)))
  )

  (:durative-action put_clues_together
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (put_clues_pending)) (at start (watch_done)) (at start (sense_done)))
    :effect (and (at start (not (put_clues_pending))) (at end (put_clues_done)))
  )
)
