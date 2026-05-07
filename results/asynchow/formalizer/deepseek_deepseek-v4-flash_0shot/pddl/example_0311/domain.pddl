(define (domain lavender_tea)
  (:requirements :durative-actions)
  (:predicates (step1_pending) (step2_pending) (step3_pending)
               (step1_done) (step2_done) (step3_done)
               (boil_done) (fill_done) (steep_done))
  (:durative-action do_step1
    :duration (= ?duration 300)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)) (at end (boil_done))))
  (:durative-action do_step2
    :duration (= ?duration 120)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)) (at end (fill_done))))
  (:durative-action do_step3
    :duration (= ?duration 600)
    :condition (and (at start (step3_pending)) (at start (boil_done)) (at start (fill_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)) (at end (steep_done))))
)