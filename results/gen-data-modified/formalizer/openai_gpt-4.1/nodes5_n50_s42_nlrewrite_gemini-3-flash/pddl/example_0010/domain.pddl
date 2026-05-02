(define (domain get_new_tv)
  (:requirements :durative-actions)
  (:predicates
    (research_pending)
    (research_done)
    (measure_pending)
    (measure_done)
    (drive_pending)
    (drive_done)
    (unbox_pending)
    (unbox_done)
    (transfer_pending)
    (transfer_done)
  )

  (:durative-action do_research
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (research_pending))
    :effect (and (at start (not (research_pending))) (at end (research_done)))
  )

  (:durative-action do_measure
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (measure_pending)) (at start (research_done)))
    :effect (and (at start (not (measure_pending))) (at end (measure_done)))
  )

  (:durative-action do_drive
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (drive_pending)) (at start (transfer_done)))
    :effect (and (at start (not (drive_pending))) (at end (drive_done)))
  )

  (:durative-action do_unbox
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (unbox_pending)) (at start (drive_done)))
    :effect (and (at start (not (unbox_pending))) (at end (unbox_done)))
  )

  (:durative-action do_transfer
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (transfer_pending))
    :effect (and (at start (not (transfer_pending))) (at end (transfer_done)))
  )
)
