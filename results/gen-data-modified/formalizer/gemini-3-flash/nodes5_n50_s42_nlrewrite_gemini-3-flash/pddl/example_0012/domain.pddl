(define (domain school_prep)
  (:requirements :durative-actions)
  (:predicates
    (shower_pending)
    (shower_done)
    (dress_pending)
    (dress_done)
    (wake_pending)
    (wake_done)
    (pack_lunch_pending)
    (pack_lunch_done)
    (commute_pending)
    (commute_done)
  )

  (:durative-action take_shower
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (shower_pending)) (at start (wake_done)))
    :effect (and (at start (not (shower_pending))) (at end (shower_done)))
  )

  (:durative-action get_dressed
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (dress_pending)) (at start (shower_done)))
    :effect (and (at start (not (dress_pending))) (at end (dress_done)))
  )

  (:durative-action wake_up
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (wake_pending))
    :effect (and (at start (not (wake_pending))) (at end (wake_done)))
  )

  (:durative-action pack_lunch
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (pack_lunch_pending))
    :effect (and (at start (not (pack_lunch_pending))) (at end (pack_lunch_done)))
  )

  (:durative-action commute
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (commute_pending)) (at start (dress_done)) (at start (pack_lunch_done)))
    :effect (and (at start (not (commute_pending))) (at end (commute_done)))
  )
)