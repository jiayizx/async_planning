(define (domain wii_dialup)
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
    (step5_pending)
    (step5_done)
  )

  (:durative-action purchase_adapter
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action configure_ics
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step2_pending)) (at start (step4_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action connection_test
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step3_pending)) (at start (step4_done)) (at start (step5_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action connect_phone_line
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action plug_ethernet
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step5_pending)) (at start (step1_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)