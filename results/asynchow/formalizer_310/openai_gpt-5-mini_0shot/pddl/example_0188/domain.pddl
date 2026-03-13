(define (domain early-payment-discount)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending)
    (step1_done)
    (step2_pending)
    (step2_done)
    (step3_pending)
    (step3_done)
    (step4_pending)
    (step4_done)
  )

  (:durative-action step1
    :parameters ()
    :duration (= ?duration 300) ; 5 minutes = 300 seconds
    :condition (at start (step1_pending))
    :effect (and
      (at start (not (step1_pending)))
      (at end (step1_done))
    )
  )

  (:durative-action step2
    :parameters ()
    :duration (= ?duration 120) ; 2 minutes = 120 seconds
    :condition (at start (step2_pending))
    :effect (and
      (at start (not (step2_pending)))
      (at end (step2_done))
    )
  )

  (:durative-action step3
    :parameters ()
    :duration (= ?duration 120) ; 2 minutes = 120 seconds
    :condition (and (at start (step3_pending)) (at start (step1_done)) (at start (step2_done)))
    :effect (and
      (at start (not (step3_pending)))
      (at end (step3_done))
    )
  )

  (:durative-action step4
    :parameters ()
    :duration (= ?duration 120) ; 2 minutes = 120 seconds
    :condition (and (at start (step4_pending)) (at start (step3_done)))
    :effect (and
      (at start (not (step4_pending)))
      (at end (step4_done))
    )
  )
)
