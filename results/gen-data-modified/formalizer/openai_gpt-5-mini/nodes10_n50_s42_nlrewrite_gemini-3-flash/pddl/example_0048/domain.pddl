(define (domain sunchokes)
  (:requirements :durative-actions)
  (:predicates
    (slice_pending) (slice_done)
    (toss_pending) (toss_done)
    (pat_pending) (pat_done)
    (scrub_pending) (scrub_done)
    (arrange_pending) (arrange_done)
    (soak_pending) (soak_done)
    (buy_pending) (buy_done)
    (sort_pending) (sort_done)
    (prepare_pending) (prepare_done)
    (roast_pending) (roast_done)
  )

  (:durative-action slice
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (slice_pending)) (at start (scrub_done)))
    :effect (and (at start (not (slice_pending))) (at end (slice_done)))
  )

  (:durative-action toss
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (toss_pending)) (at start (pat_done)))
    :effect (and (at start (not (toss_pending))) (at end (toss_done)))
  )

  (:durative-action pat
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pat_pending)) (at start (soak_done)) (at start (prepare_done)))
    :effect (and (at start (not (pat_pending))) (at end (pat_done)))
  )

  (:durative-action scrub
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (scrub_pending)) (at start (soak_done)))
    :effect (and (at start (not (scrub_pending))) (at end (scrub_done)))
  )

  (:durative-action arrange
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (arrange_pending)) (at start (slice_done)))
    :effect (and (at start (not (arrange_pending))) (at end (arrange_done)))
  )

  (:durative-action soak
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (soak_pending)) (at start (sort_done)))
    :effect (and (at start (not (soak_pending))) (at end (soak_done)))
  )

  (:durative-action buy
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (buy_pending))
    :effect (and (at start (not (buy_pending))) (at end (buy_done)))
  )

  (:durative-action sort
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (sort_pending)) (at start (buy_done)))
    :effect (and (at start (not (sort_pending))) (at end (sort_done)))
  )

  (:durative-action prepare
    :parameters ()
    :duration (= ?duration 480)
    :condition (at start (prepare_pending))
    :effect (and (at start (not (prepare_pending))) (at end (prepare_done)))
  )

  (:durative-action roast
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (roast_pending)) (at start (toss_done)) (at start (pat_done)))
    :effect (and (at start (not (roast_pending))) (at end (roast_done)))
  )
)
