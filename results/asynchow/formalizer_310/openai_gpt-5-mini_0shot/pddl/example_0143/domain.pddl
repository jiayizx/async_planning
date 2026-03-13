(define (domain clean_silk_tie)
  (:requirements :durative-actions)
  (:predicates
    (spray_pending)
    (spray_done)
    (handwash_pending)
    (handwash_done)
    (tuck_pending)
    (tuck_done)
  )

  (:durative-action do_spray_protector
    :parameters ()
    :duration (= ?duration 300) ; 5 minutes = 300 seconds
    :condition (and (at start (spray_pending)) (at start (handwash_done)))
    :effect (and (at start (not (spray_pending))) (at end (spray_done)))
  )

  (:durative-action do_handwash_silk
    :parameters ()
    :duration (= ?duration 600) ; 10 minutes = 600 seconds
    :condition (at start (handwash_pending))
    :effect (and (at start (not (handwash_pending))) (at end (handwash_done)))
  )

  (:durative-action do_tuck_away
    :parameters ()
    :duration (= ?duration 120) ; 2 minutes = 120 seconds
    :condition (at start (tuck_pending))
    :effect (and (at start (not (tuck_pending))) (at end (tuck_done)))
  )
)
