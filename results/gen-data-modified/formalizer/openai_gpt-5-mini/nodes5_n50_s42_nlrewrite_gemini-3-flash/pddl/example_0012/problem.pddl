(define (problem go_to_school_prob)
  (:domain go_to_school)

  (:init
    (shower_pending)
    (dress_pending)
    (wake_pending)
    (pack_pending)
    (commute_pending)
  )

  (:goal (and
    (shower_done)
    (dress_done)
    (wake_done)
    (pack_done)
    (commute_done)
  ))
)
