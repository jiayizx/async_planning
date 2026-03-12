(define (domain baseball)
  (:requirements :durative-actions)
  (:predicates
    (dress_pending)
    (dress_done)
    (call_pending)
    (call_done)
    (arrange_pending)
    (arrange_done)
    (drive_pending)
    (drive_done)
    (exit_pending)
    (exit_done)
    (walk_pending)
    (walk_done)
  )

  (:durative-action do_dress
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (dress_pending))
    :effect (and (at start (not (dress_pending))) (at end (dress_done)))
  )

  (:durative-action do_call
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (call_pending))
    :effect (and (at start (not (call_pending))) (at end (call_done)))
  )

  (:durative-action do_arrange
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (arrange_pending)) (at start (call_done)))
    :effect (and (at start (not (arrange_pending))) (at end (arrange_done)))
  )

  (:durative-action do_drive
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (drive_pending)) (at start (dress_done)) (at start (arrange_done)))
    :effect (and (at start (not (drive_pending))) (at end (drive_done)))
  )

  (:durative-action do_exit
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (exit_pending)) (at start (drive_done)))
    :effect (and (at start (not (exit_pending))) (at end (exit_done)))
  )

  (:durative-action do_walk
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (walk_pending)) (at start (exit_done)))
    :effect (and (at start (not (walk_pending))) (at end (walk_done)))
  )
)
