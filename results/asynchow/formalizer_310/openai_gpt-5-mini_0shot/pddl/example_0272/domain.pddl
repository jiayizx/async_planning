(define (domain calculate-owners-equity)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
  )

  (:durative-action do_step1
    :parameters ()
    ;; Step 1: Add up the value of your business assets. 10 minutes = 600 seconds
    :duration (= ?duration 600)
    :condition (and (at start (step1_pending)) (at start (step6_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action do_step2
    :parameters ()
    ;; Step 2: Calculate contra accounts on the businesses' assets. 5 minutes = 300 seconds
    :duration (= ?duration 300)
    :condition (and (at start (step2_pending)) (at start (step6_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action do_step3
    :parameters ()
    ;; Step 3: Calculate net asset value. 2 minutes = 120 seconds
    :duration (= ?duration 120)
    :condition (and (at start (step3_pending)) (at start (step1_done)) (at start (step2_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action do_step4
    :parameters ()
    ;; Step 4: Calculate the total of your business liabilities. 10 minutes = 600 seconds
    :duration (= ?duration 600)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action do_step5
    :parameters ()
    ;; Step 5: Subtract liabilities from net asset value to get the amount of equity. 2 minutes = 120 seconds
    :duration (= ?duration 120)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action do_step6
    :parameters ()
    ;; Step 6: Calculate the equity of individual owners. 5 minutes = 300 seconds
    :duration (= ?duration 300)
    :condition (and (at start (step6_pending)) (at start (step5_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )
)
