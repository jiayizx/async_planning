(define (domain attraction_detection)
  (:requirements :durative-actions)
  
  (:predicates
    (watch_pending)
    (watch_done)
    (sense_pending)
    (sense_done)
    (clues_pending)
    (clues_done)
  )

  (:durative-action do_watch
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (watch_pending))
    :effect (and (at start (not (watch_pending))) (at end (watch_done)))
  )

  (:durative-action do_sense
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (sense_pending))
    :effect (and (at start (not (sense_pending))) (at end (sense_done)))
  )

  (:durative-action do_clues
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (clues_pending)) (at start (watch_done)) (at start (sense_done)))
    :effect (and (at start (not (clues_pending))) (at end (clues_done)))
  )
)