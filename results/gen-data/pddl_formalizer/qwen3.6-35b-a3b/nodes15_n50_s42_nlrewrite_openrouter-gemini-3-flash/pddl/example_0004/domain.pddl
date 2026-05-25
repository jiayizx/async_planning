(define (domain fighter_pilot)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
               (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
               (step11_done) (step12_done) (step13_done) (step14_done) (step15_done))
  (:durative-action do_step1
    :duration 1209600
    :parameters ()
    :condition (and (at start (step_pending step1)) (at start (step15_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_done))))
  (:durative-action do_step2
    :duration 10368000
    :parameters ()
    :condition (and (at start (step_pending step2)) (at start (step4_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_done))))
  (:durative-action do_step3
    :duration 1814400
    :parameters ()
    :condition (and (at start (step_pending step3)) (at start (step6_done)) (at start (step13_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_done))))
  (:durative-action do_step4
    :duration 31536000
    :parameters ()
    :condition (and (at start (step_pending step4)) (at start (step7_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_done))))
  (:durative-action do_step5
    :duration 172800
    :parameters ()
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_done))))
  (:durative-action do_step6
    :duration 126144000
    :parameters ()
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_done))))
  (:durative-action do_step7
    :duration 5443200
    :parameters ()
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_done))))
  (:durative-action do_step8
    :duration 180000
    :parameters ()
    :condition (and (at start (step_pending step8)) (at start (step1_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_done))))
  (:durative-action do_step9
    :duration 86400
    :parameters ()
    :condition (and (at start (step_pending step9)) (at start (step2_done)) (at start (step3_done)) (at start (step14_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_done))))
  (:durative-action do_step10
    :duration 15552000
    :parameters ()
    :condition (and (at start (step_pending step10)) (at start (step5_done)) (at start (step14_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_done))))
  (:durative-action do_step11
    :duration 7200
    :parameters ()
    :condition (and (at start (step_pending step11)) (at start (step14_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_done))))
  (:durative-action do_step12
    :duration 7776000
    :parameters ()
    :condition (and (at start (step_pending step12)) (at start (step1_done)) (at start (step8_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_done))))
  (:durative-action do_step13
    :duration 14400
    :parameters ()
    :condition (and (at start (step_pending step13)) (at start (step6_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_done))))
  (:durative-action do_step14
    :duration 2592000
    :parameters ()
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_done))))
  (:durative-action do_step15
    :duration 3600
    :parameters ()
    :condition (and (at start (step_pending step15)) (at start (step6_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_done))))
)