(define (domain change-name-after-divorce)
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
    ; Step 1: 3 months ≈ 12 weeks -> 12 * 604800 = 7257600 seconds
    :duration (= ?duration 7257600)
    :condition (at start (step1_pending))
    :effect (and
              (at start (not (step1_pending)))
              (at end (step1_done))
            )
  )

  (:durative-action do_step2
    :parameters ()
    ; Step 2: 4 weeks -> 4 * 604800 = 2419200 seconds
    :duration (= ?duration 2419200)
    :condition (and (at start (step2_pending)) (at start (step1_done)))
    :effect (and
              (at start (not (step2_pending)))
              (at end (step2_done))
            )
  )

  (:durative-action do_step3
    :parameters ()
    ; Step 3: 6 weeks -> 6 * 604800 = 3628800 seconds
    :duration (= ?duration 3628800)
    :condition (and (at start (step3_pending)) (at start (step1_done)))
    :effect (and
              (at start (not (step3_pending)))
              (at end (step3_done))
            )
  )

  (:durative-action do_step4
    :parameters ()
    ; Step 4: 6 weeks -> 6 * 604800 = 3628800 seconds
    :duration (= ?duration 3628800)
    :condition (and (at start (step4_pending)) (at start (step1_done)))
    :effect (and
              (at start (not (step4_pending)))
              (at end (step4_done))
            )
  )
)
