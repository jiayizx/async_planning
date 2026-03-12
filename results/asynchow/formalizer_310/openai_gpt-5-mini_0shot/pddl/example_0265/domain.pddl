(define (domain sort_out_your_life)
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

  (:durative-action do_step1
    :parameters ()
    ; 3 months = 90 days = 90 * 86400 = 7776000 seconds
    :duration (= ?duration 7776000)
    :condition (at start (step1_pending))
    :effect (and
      (at start (not (step1_pending)))
      (at end (step1_done))
    )
  )

  (:durative-action do_step2
    :parameters ()
    ; 2 weeks = 14 days = 14 * 86400 = 1209600 seconds
    :duration (= ?duration 1209600)
    ; requires step1 and step4 to have finished before step2 can start
    :condition (and (at start (step2_pending)) (at start (step1_done)) (at start (step4_done)))
    :effect (and
      (at start (not (step2_pending)))
      (at end (step2_done))
    )
  )

  (:durative-action do_step3
    :parameters ()
    ; 2 months = 60 days = 60 * 86400 = 5184000 seconds
    :duration (= ?duration 5184000)
    :condition (and (at start (step3_pending)) (at start (step2_done)))
    :effect (and
      (at start (not (step3_pending)))
      (at end (step3_done))
    )
  )

  (:durative-action do_step4
    :parameters ()
    ; 4 years = 4 * 365 days = 1460 days = 1460 * 86400 = 126144000 seconds
    :duration (= ?duration 126144000)
    :condition (at start (step4_pending))
    :effect (and
      (at start (not (step4_pending)))
      (at end (step4_done))
    )
  )
)
