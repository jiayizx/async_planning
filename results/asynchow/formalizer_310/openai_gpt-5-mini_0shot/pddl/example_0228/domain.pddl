(define (domain deal_anxiety_ordering)
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

  (:durative-action do_step1
    :parameters ()
    ;; Step 1: Order over the phone — 5 minutes = 300 seconds
    :duration (= ?duration 300)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action do_step2
    :parameters ()
    ;; Step 2: Go through a drive-thru — 10 minutes = 600 seconds
    :duration (= ?duration 600)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action do_step3
    :parameters ()
    ;; Step 3: Ask a friend to order for you — 3 minutes = 180 seconds
    :duration (= ?duration 180)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action do_step4
    :parameters ()
    ;; Step 4: Use an app or order online — 5 minutes = 300 seconds
    :duration (= ?duration 300)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action do_step5
    :parameters ()
    ;; Step 5: Receive your food — 2 minutes = 120 seconds
    ;; Requires steps 1,2,3,4 to be finished before starting step5
    :duration (= ?duration 120)
    :condition (and (at start (step5_pending)) (at start (step1_done)) (at start (step2_done)) (at start (step3_done)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)
