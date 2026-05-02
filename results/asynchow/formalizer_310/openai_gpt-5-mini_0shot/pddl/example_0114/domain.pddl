(define (domain ice_skating)
  (:requirements :durative-actions)
  (:predicates
    (search_pending) (search_done)
    (drive_pending) (drive_done)
    (rent_pending) (rent_done)
    (left_on_pending) (left_on_done)
    (right_on_pending) (right_on_done)
  )

  (:durative-action do_search
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (search_pending))
    :effect (and (at start (not (search_pending))) (at end (search_done)))
  )

  (:durative-action do_drive
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (drive_pending)) (at start (search_done)))
    :effect (and (at start (not (drive_pending))) (at end (drive_done)))
  )

  (:durative-action do_rent
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (rent_pending)) (at start (drive_done)))
    :effect (and (at start (not (rent_pending))) (at end (rent_done)))
  )

  (:durative-action do_put_left_on
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (left_on_pending)) (at start (rent_done)))
    :effect (and (at start (not (left_on_pending))) (at end (left_on_done)))
  )

  (:durative-action do_put_right_on
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (right_on_pending)) (at start (rent_done)))
    :effect (and (at start (not (right_on_pending))) (at end (right_on_done)))
  )
)
