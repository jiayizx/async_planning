(define (domain get_new_tv)
  (:requirements :durative-actions)
  (:predicates
    (step1_research_pending)
    (step1_research_done)
    (step2_measure_pending)
    (step2_measure_done)
    (step3_drive_purchase_pending)
    (step3_drive_purchase_done)
    (step4_unbox_mount_pending)
    (step4_unbox_mount_done)
    (step5_transfer_funds_pending)
    (step5_transfer_funds_done)
  )

  (:durative-action step1_research
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step1_research_pending))
    :effect (and
      (at start (not (step1_research_pending)))
      (at end (step1_research_done))
    )
  )

  (:durative-action step2_measure
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step2_measure_pending)) (at start (step1_research_done)))
    :effect (and
      (at start (not (step2_measure_pending)))
      (at end (step2_measure_done))
    )
  )

  (:durative-action step3_drive_purchase
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step3_drive_purchase_pending)) (at start (step5_transfer_funds_done)))
    :effect (and
      (at start (not (step3_drive_purchase_pending)))
      (at end (step3_drive_purchase_done))
    )
  )

  (:durative-action step4_unbox_mount
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step4_unbox_mount_pending)) (at start (step3_drive_purchase_done)))
    :effect (and
      (at start (not (step4_unbox_mount_pending)))
      (at end (step4_unbox_mount_done))
    )
  )

  (:durative-action step5_transfer_funds
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step5_transfer_funds_pending))
    :effect (and
      (at start (not (step5_transfer_funds_pending)))
      (at end (step5_transfer_funds_done))
    )
  )
)
