(define (domain pool_fun)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step1_done)
    (step2_done)
    (step3_done))
  (:durative-action do_step1
    :duration (= ?duration 1800)
    :condition (and (at start (step1_pending)) (at start (step3_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done))))
  (:durative-action do_step2
    :duration (= ?duration 3600)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done))))
  (:durative-action do_step3
    :duration (= ?duration 1200)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done))))
)