(define (domain do-something-different)
  (:requirements :durative-actions)
  (:predicates
    (consider_pending)
    (consider_done)
    (brainstorm_pending)
    (brainstorm_done)
    (write_pending)
    (write_done)
    (see_pending)
    (see_done)
    (pick_pending)
    (pick_done)
  )

  (:durative-action do_consider
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (consider_pending))
    :effect (and (at start (not (consider_pending))) (at end (consider_done)))
  )

  (:durative-action do_brainstorm
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (brainstorm_pending)) (at start (consider_done)))
    :effect (and (at start (not (brainstorm_pending))) (at end (brainstorm_done)))
  )

  (:durative-action do_write
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (write_pending)) (at start (brainstorm_done)))
    :effect (and (at start (not (write_pending))) (at end (write_done)))
  )

  (:durative-action do_see
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (see_pending)) (at start (brainstorm_done)))
    :effect (and (at start (not (see_pending))) (at end (see_done)))
  )

  (:durative-action do_pick
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pick_pending)) (at start (write_done)) (at start (see_done)))
    :effect (and (at start (not (pick_pending))) (at end (pick_done)))
  )
)
