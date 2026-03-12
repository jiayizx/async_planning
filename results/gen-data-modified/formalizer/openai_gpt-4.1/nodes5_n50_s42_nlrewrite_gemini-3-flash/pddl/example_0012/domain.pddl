(define (domain go_to_school)
  (:requirements :durative-actions)
  (:predicates
    (shower_pending)
    (shower_done)
    (dressed_pending)
    (dressed_done)
    (wake_pending)
    (wake_done)
    (lunch_pending)
    (lunch_done)
    (commute_pending)
    (commute_done)
  )

  (:durative-action do_shower
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (shower_pending)) (at start (wake_done)))
    :effect (and (at start (not (shower_pending))) (at end (shower_done)))
  )

  (:durative-action do_dressed
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (dressed_pending)) (at start (shower_done)))
    :effect (and (at start (not (dressed_pending))) (at end (dressed_done)))
  )

  (:durative-action do_wake
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (wake_pending))
    :effect (and (at start (not (wake_pending))) (at end (wake_done)))
  )

  (:durative-action do_lunch
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (lunch_pending))
    :effect (and (at start (not (lunch_pending))) (at end (lunch_done)))
  )

  (:durative-action do_commute
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (commute_pending)) (at start (dressed_done)) (at start (lunch_done)))
    :effect (and (at start (not (commute_pending))) (at end (commute_done)))
  )
)
