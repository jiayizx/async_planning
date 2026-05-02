(define (domain overcome_fear_reading)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending)
    (step1_done)
    (step2_pending)
    (step2_done)
    (step3_pending)
    (step3_done)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1209600) ; 14 days = 1209600 seconds
    :condition (at start (and (step1_pending)))
    :effect (and
              (at start (not (step1_pending)))
              (at end (step1_done))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 604800) ; 7 days = 604800 seconds
    :condition (at start (and (step2_pending)))
    :effect (and
              (at start (not (step2_pending)))
              (at end (step2_done))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 172800) ; given explicitly in seconds (2 days)
    :condition (at start (and (step3_pending) (step1_done))) ; requires completion of step1
    :effect (and
              (at start (not (step3_pending)))
              (at end (step3_done))
            )
  )
)
