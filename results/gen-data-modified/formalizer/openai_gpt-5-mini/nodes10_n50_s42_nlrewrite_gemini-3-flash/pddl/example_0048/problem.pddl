(define (problem sunchokes-problem)
  (:domain sunchokes)
  (:init
    (slice_pending) (toss_pending) (pat_pending) (scrub_pending) (arrange_pending)
    (soak_pending) (buy_pending) (sort_pending) (prepare_pending) (roast_pending)
  )
  (:goal (and
    (slice_done) (toss_done) (pat_done) (scrub_done) (arrange_done)
    (soak_done) (buy_done) (sort_done) (prepare_done) (roast_done)
  ))
)
