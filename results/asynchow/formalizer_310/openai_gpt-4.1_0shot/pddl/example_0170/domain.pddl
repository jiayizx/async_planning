(define (domain minimalist)
  (:requirements :durative-actions)
  (:predicates
    (clear_furniture_pending)
    (clear_furniture_done)
    (move_smaller_pending)
    (move_smaller_done)
    (carless_pending)
    (carless_done)
    (discuss_pending)
    (discuss_done)
  )

  (:durative-action clear_furniture
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (clear_furniture_pending)) (at start (move_smaller_done)))
    :effect (and (at start (not (clear_furniture_pending))) (at end (clear_furniture_done)))
  )

  (:durative-action move_smaller
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (move_smaller_pending)) (at start (discuss_done)))
    :effect (and (at start (not (move_smaller_pending))) (at end (move_smaller_done)))
  )

  (:durative-action carless
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (carless_pending)) (at start (discuss_done)))
    :effect (and (at start (not (carless_pending))) (at end (carless_done)))
  )

  (:durative-action discuss
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (discuss_pending))
    :effect (and (at start (not (discuss_pending))) (at end (discuss_done)))
  )
)
