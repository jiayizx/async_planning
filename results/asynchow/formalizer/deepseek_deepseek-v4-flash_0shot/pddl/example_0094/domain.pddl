(define (domain start_varsity)
  (:requirements :durative-actions :typing)
  (:predicates
    (step_pending1) (step_pending2) (step_pending3) (step_pending4) (step_pending5) (step_pending6) (step_pending7)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done) (step6_done) (step7_done)
  )
  (:durative-action do_step1
    :duration (= ?duration 31536000)
    :condition (at start (step_pending1))
    :effect (and (at start (not (step_pending1))) (at end (step1_done)))
  )
  (:durative-action do_step2
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending2)) (at start (step1_done)))
    :effect (and (at start (not (step_pending2))) (at end (step2_done)))
  )
  (:durative-action do_step3
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending3)) (at start (step1_done)))
    :effect (and (at start (not (step_pending3))) (at end (step3_done)))
  )
  (:durative-action do_step4
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending4)) (at start (step2_done)))
    :effect (and (at start (not (step_pending4))) (at end (step4_done)))
  )
  (:durative-action do_step5
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending5)) (at start (step3_done)) (at start (step6_done)))
    :effect (and (at start (not (step_pending5))) (at end (step5_done)))
  )
  (:durative-action do_step6
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending6)) (at start (step4_done)))
    :effect (and (at start (not (step_pending6))) (at end (step6_done)))
  )
  (:durative-action do_step7
    :duration (= ?duration 300)
    :condition (and (at start (step_pending7)) (at start (step5_done)))
    :effect (and (at start (not (step_pending7))) (at end (step7_done)))
  )
)
