(define (domain prune-cherry-tree)
  (:requirements :durative-actions)
  (:predicates
    (sterilize_pending)
    (sterilize_done)
    (measure_pending)
    (measure_done)
    (cut_pending)
    (cut_done)
  )

  (:durative-action do_sterilize
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (sterilize_pending))
    :effect (and (at start (not (sterilize_pending))) (at end (sterilize_done)))
  )

  (:durative-action do_measure
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (measure_pending))
    :effect (and (at start (not (measure_pending))) (at end (measure_done)))
  )

  (:durative-action do_cut
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (cut_pending)) (at start (sterilize_done)) (at start (measure_done)))
    :effect (and (at start (not (cut_pending))) (at end (cut_done)))
  )
)
