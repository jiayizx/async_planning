(define (domain go_to_school)
  (:requirements :durative-actions)
  (:predicates
    (shower_pending)
    (shower_done)
    (dress_pending)
    (dress_done)
    (wake_pending)
    (wake_done)
    (pack_pending)
    (pack_done)
    (commute_pending)
    (commute_done)
  )

  (:durative-action do_shower
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (shower_pending)) (at start (wake_done)))
    :effect (and (at start (not (shower_pending))) (at end (shower_done)))
  )

  (:durative-action do_dress
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (dress_pending)) (at start (shower_done)))
    :effect (and (at start (not (dress_pending))) (at end (dress_done)))
  )

  (:durative-action do_wake
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (wake_pending))
    :effect (and (at start (not (wake_pending))) (at end (wake_done)))
  )

  (:durative-action do_pack_lunch
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (pack_pending))
    :effect (and (at start (not (pack_pending))) (at end (pack_done)))
  )

  (:durative-action do_commute
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (commute_pending)) (at start (dress_done)) (at start (pack_done)))
    :effect (and (at start (not (commute_pending))) (at end (commute_done)))
  )
)
