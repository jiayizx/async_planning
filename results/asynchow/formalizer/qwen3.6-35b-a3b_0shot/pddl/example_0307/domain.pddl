(define (domain aloe_vera)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done))
  (:durative-action do_step1
    :duration 2
    :parameters ()
    :condition (and (at start (step_pending step1)) (at start (s2_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done))))
  (:durative-action do_step2
    :duration 5
    :parameters ()
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done))))
  (:durative-action do_step3
    :duration 3
    :parameters ()
    :condition (and (at start (step_pending step3)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done))))
  (:durative-action do_step4
    :duration 5
    :parameters ()
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done))))
  (:durative-action do_step5
    :duration 10
    :parameters ()
    :condition (and (at start (step_pending step5)) (at start (s3_done)) (at start (s4_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done))))
  (:durative-action do_step6
    :duration 5
    :parameters ()
    :condition (and (at start (step_pending step6)) (at start (s3_done)) (at start (s4_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done))))
  (:durative-action do_step7
    :duration 7
    :parameters ()
    :condition (and (at start (step_pending step7)) (at start (s3_done)) (at start (s4_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done))))
  (:durative-action do_step8
    :duration 2
    :parameters ()
    :condition (and (at start (step_pending step8)) (at start (s3_done)) (at start (s4_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done))))
  (:durative-action do_step9
    :duration 15
    :parameters ()
    :condition (and (at start (step_pending step9)) (at start (s3_done)) (at start (s4_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done))))
)