(define (domain live_minimalist)
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

  ;; Step 1: Clear out extra furniture. 172800 seconds (2 days)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step1_pending)) (at start (step2_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  ;; Step 2: Consider moving to a smaller living space. 2 months = 60 days = 5184000 seconds
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (step2_pending)) (at start (step4_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  ;; Step 3: Think about going car-less. 2 months = 60 days = 5184000 seconds
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 5184000)
    :condition (and (at start (step3_pending)) (at start (step4_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  ;; Step 4: Discuss the changes with your loved ones. 2 weeks = 14 days = 1209600 seconds
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )
)
