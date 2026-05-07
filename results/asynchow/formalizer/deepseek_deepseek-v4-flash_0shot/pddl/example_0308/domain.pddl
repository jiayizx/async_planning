(define (domain bake_pie)
  (:requirements :durative-actions :typing)
  (:types)
  (:predicates
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending) (step6_pending) (step7_pending) (step8_pending) (step9_pending)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done) (step6_done) (step7_done) (step8_done) (finished)
  )
  (:durative-action do_step1
    :duration (= ?duration 5)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )
  (:durative-action do_step2
    :duration (= ?duration 15)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )
  (:durative-action do_step3
    :duration (= ?duration 10)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )
  (:durative-action do_step4
    :duration (= ?duration 5)
    :condition (and (at start (step4_pending)) (at start (step2_done)) (at start (step3_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )
  (:durative-action do_step5
    :duration (= ?duration 2)
    :condition (and (at start (step5_pending)) (at start (step4_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
  (:durative-action do_step6
    :duration (= ?duration 3)
    :condition (and (at start (step6_pending)) (at start (step5_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )
  (:durative-action do_step7
    :duration (= ?duration 2)
    :condition (and (at start (step7_pending)) (at start (step5_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )
  (:durative-action do_step8
    :duration (= ?duration 60)
    :condition (and (at start (step8_pending)) (at start (step1_done)) (at start (step6_done)) (at start (step7_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )
  (:durative-action do_step9
    :duration (= ?duration 0)
    :condition (and (at start (step9_pending)) (at start (step8_done)))
    :effect (and (at start (not (step9_pending))) (at end (finished)))
  )
)