(define (domain reference_check)
  (:requirements :durative-actions)
  
  (:predicates
    (introduce_pending)
    (introduce_done)
    (emphasize_pending)
    (emphasize_done)
    (highlight_pending)
    (highlight_done)
  )

  (:durative-action do_introduce
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (introduce_pending))
    :effect (and (at start (not (introduce_pending)))
                 (at end (introduce_done)))
  )

  (:durative-action do_emphasize
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (emphasize_pending))
                    (at start (introduce_done)))
    :effect (and (at start (not (emphasize_pending)))
                 (at end (emphasize_done)))
  )

  (:durative-action do_highlight
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (highlight_pending))
                    (at start (introduce_done)))
    :effect (and (at start (not (highlight_pending)))
                 (at end (highlight_done)))
  )
)