(define (domain leave_school)
  (:requirements :durative-actions)
  (:predicates
    (pack_pending) (pack_done)
    (keys_pending) (keys_done)
    (logout_pending) (logout_done)
    (walk_pending) (walk_done)
    (unlock_pending) (unlock_done)
  )

  (:durative-action pack_backpack
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pack_pending)) (at start (logout_done)))
    :effect (and (at start (not (pack_pending))) (at end (pack_done)))
  )

  (:durative-action locate_keys
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (keys_pending))
    :effect (and (at start (not (keys_pending))) (at end (keys_done)))
  )

  (:durative-action logout_workstation
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (logout_pending))
    :effect (and (at start (not (logout_pending))) (at end (logout_done)))
  )

  (:durative-action walk_to_parking
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (walk_pending)) (at start (pack_done)))
    :effect (and (at start (not (walk_pending))) (at end (walk_done)))
  )

  (:durative-action unlock_and_start
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (unlock_pending)) (at start (keys_done)))
    :effect (and (at start (not (unlock_pending))) (at end (unlock_done)))
  )
)
