(define (domain build_pool_deep_end)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (and (step1_pending)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (and (step2_pending)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (and (step3_pending) (step1_done) (step2_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (and (step4_pending) (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (at start (and (step5_pending) (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
)
