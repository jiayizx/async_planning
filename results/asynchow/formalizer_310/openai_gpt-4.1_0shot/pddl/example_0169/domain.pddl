(define (domain overcome-fear-reading)
  (:requirements :durative-actions)
  (:predicates
    (practice_pending)
    (practice_done)
    (calm_pending)
    (calm_done)
    (move_past_pending)
    (move_past_done)
  )

  (:durative-action practice_reading
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (practice_pending))
    :effect (and (at start (not (practice_pending))) (at end (practice_done)))
  )

  (:durative-action work_on_calm
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (calm_pending))
    :effect (and (at start (not (calm_pending))) (at end (calm_done)))
  )

  (:durative-action move_past_mistakes
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (move_past_pending)) (at start (practice_done)))
    :effect (and (at start (not (move_past_pending))) (at end (move_past_done)))
  )
)
