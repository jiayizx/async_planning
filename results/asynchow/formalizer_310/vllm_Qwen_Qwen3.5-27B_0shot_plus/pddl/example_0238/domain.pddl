(define (domain fix_quartz_chip)
  (:requirements :durative-actions)
  
  (:predicates
    (clean_pending)
    (clean_done)
    (tape_pending)
    (tape_done)
    (superglue_pending)
    (superglue_done)
    (epoxy_pending)
    (epoxy_done)
    (file_pending)
    (file_done)
  )

  (:durative-action do_clean
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (clean_pending))
    :effect (and (at start (not (clean_pending))) (at end (clean_done)))
  )

  (:durative-action do_tape
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (tape_pending)) (at start (clean_done)))
    :effect (and (at start (not (tape_pending))) (at end (tape_done)))
  )

  (:durative-action do_superglue
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (superglue_pending)) (at start (tape_done)))
    :effect (and (at start (not (superglue_pending))) (at end (superglue_done)))
  )

  (:durative-action do_epoxy
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (epoxy_pending)) (at start (tape_done)))
    :effect (and (at start (not (epoxy_pending))) (at end (epoxy_done)))
  )

  (:durative-action do_file
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (file_pending)) (at start (superglue_done)) (at start (epoxy_done)))
    :effect (and (at start (not (file_pending))) (at end (file_done)))
  )
)
