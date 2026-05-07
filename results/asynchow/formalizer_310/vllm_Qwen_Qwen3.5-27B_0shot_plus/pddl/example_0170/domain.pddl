(define (domain minimalist_living)
  (:requirements :durative-actions)
  
  (:predicates
    (clear_furniture_pending)
    (clear_furniture_done)
    (consider_moving_pending)
    (consider_moving_done)
    (think_carless_pending)
    (think_carless_done)
    (discuss_changes_pending)
    (discuss_changes_done)
  )

  (:durative-action discuss_changes
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (discuss_changes_pending)))
    :effect (and (at start (not (discuss_changes_pending))) (at end (discuss_changes_done)))
  )

  (:durative-action consider_moving
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (consider_moving_pending)) (at start (discuss_changes_done)))
    :effect (and (at start (not (consider_moving_pending))) (at end (consider_moving_done)))
  )

  (:durative-action think_carless
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (think_carless_pending)) (at start (discuss_changes_done)))
    :effect (and (at start (not (think_carless_pending))) (at end (think_carless_done)))
  )

  (:durative-action clear_furniture
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (clear_furniture_pending)) (at start (consider_moving_done)))
    :effect (and (at start (not (clear_furniture_pending))) (at end (clear_furniture_done)))
  )
)
