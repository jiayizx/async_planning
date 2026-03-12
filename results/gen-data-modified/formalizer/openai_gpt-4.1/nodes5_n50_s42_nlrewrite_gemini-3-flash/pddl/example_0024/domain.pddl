(define (domain jewelry-polishing)
  (:requirements :durative-actions)
  (:predicates
    (soak_pending)
    (soak_done)
    (buff_pending)
    (buff_done)
    (rinse_pending)
    (rinse_done)
    (inspect_pending)
    (inspect_done)
    (scrub_pending)
    (scrub_done)
  )

  (:durative-action do_soak
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (soak_pending)) (at start (inspect_done)))
    :effect (and (at start (not (soak_pending))) (at end (soak_done)))
  )

  (:durative-action do_buff
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (buff_pending)) (at start (scrub_done)))
    :effect (and (at start (not (buff_pending))) (at end (buff_done)))
  )

  (:durative-action do_rinse
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (rinse_pending)) (at start (soak_done)))
    :effect (and (at start (not (rinse_pending))) (at end (rinse_done)))
  )

  (:durative-action do_inspect
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (inspect_pending))
    :effect (and (at start (not (inspect_pending))) (at end (inspect_done)))
  )

  (:durative-action do_scrub
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (scrub_pending)) (at start (inspect_done)))
    :effect (and (at start (not (scrub_pending))) (at end (scrub_done)))
  )
)
