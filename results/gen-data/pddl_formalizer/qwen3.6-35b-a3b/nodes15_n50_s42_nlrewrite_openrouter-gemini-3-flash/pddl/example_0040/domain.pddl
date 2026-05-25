(define (domain pico_de_gallo)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done))
  (:durative-action do_step1
    :duration 480
    :condition (and (at start (step_pending step1)) (at start (s9_done)) (at start (s13_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done))))
  (:durative-action do_step2
    :duration 60
    :condition (and (at start (step_pending step2)) (at start (s9_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done))))
  (:durative-action do_step3
    :duration 300
    :condition (and (at start (step_pending step3)) (at start (s9_done)) (at start (s5_done)) (at start (s14_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done))))
  (:durative-action do_step4
    :duration 120
    :condition (and (at start (step_pending step4)) (at start (s9_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done))))
  (:durative-action do_step5
    :duration 180
    :condition (and (at start (step_pending step5)) (at start (s9_done)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done))))
  (:durative-action do_step6
    :duration 240
    :condition (and (at start (step_pending step6)) (at start (s9_done)) (at start (s4_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done))))
  (:durative-action do_step7
    :duration 360
    :condition (and (at start (step_pending step7)) (at start (s9_done)) (at start (s6_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done))))
  (:durative-action do_step8
    :duration 300
    :condition (and (at start (step_pending step8)) (at start (s9_done)) (at start (s2_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done))))
  (:durative-action do_step9
    :duration 30
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done))))
  (:durative-action do_step10
    :duration 60
    :condition (and (at start (step_pending step10)) (at start (s9_done)) (at start (s1_done)) (at start (s3_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done))))
  (:durative-action do_step11
    :duration 120
    :condition (and (at start (step_pending step11)) (at start (s9_done)) (at start (s10_done)) (at start (s12_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done))))
  (:durative-action do_step12
    :duration 120
    :condition (and (at start (step_pending step12)) (at start (s9_done)) (at start (s4_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done))))
  (:durative-action do_step13
    :duration 180
    :condition (and (at start (step_pending step13)) (at start (s9_done)) (at start (s7_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done))))
  (:durative-action do_step14
    :duration 240
    :condition (and (at start (step_pending step14)) (at start (s9_done)) (at start (s2_done)) (at start (s4_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done))))
  (:durative-action do_step15
    :duration 60
    :condition (and (at start (step_pending step15)) (at start (s9_done)) (at start (s3_done)) (at start (s10_done)) (at start (s11_done)) (at start (s12_done)) (at start (s13_done)) (at start (s14_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done))))
)