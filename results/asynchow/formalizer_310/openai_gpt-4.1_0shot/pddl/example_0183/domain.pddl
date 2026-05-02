(define (domain revise-writing)
  (:requirements :durative-actions)
  (:predicates
    (wait_pending)
    (wait_done)
    (print_pending)
    (print_done)
    (readaloud_pending)
    (readaloud_done)
    (peerproof_pending)
    (peerproof_done)
  )

  (:durative-action do_wait
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (wait_pending))
    :effect (and (at start (not (wait_pending))) (at end (wait_done)))
  )

  (:durative-action do_print
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (print_pending)) (at start (wait_done)))
    :effect (and (at start (not (print_pending))) (at end (print_done)))
  )

  (:durative-action do_readaloud
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (readaloud_pending)) (at start (wait_done)))
    :effect (and (at start (not (readaloud_pending))) (at end (readaloud_done)))
  )

  (:durative-action do_peerproof
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (peerproof_pending)) (at start (wait_done)))
    :effect (and (at start (not (peerproof_pending))) (at end (peerproof_done)))
  )
)
