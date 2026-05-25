(define (domain marching_band)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step) 
    (step_done ?s - step) 
    (task_complete)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done)
    (step16_done) (step17_done) (step18_done) (step19_done) (step20_done))
  
  (:durative-action do_step1
    :duration 3600
    :condition (and (at start (step_pending step1)) (at start (step3_done)) (at start (step7_done)) (at start (step14_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_done))))
  
  (:durative-action do_step2
    :duration 900
    :condition (and (at start (step_pending step2)) (at start (step4_done)) (at start (step20_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_done))))
  
  (:durative-action do_step3
    :duration 1800
    :condition (and (at start (step_pending step3)) (at start (step4_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_done))))
  
  (:durative-action do_step4
    :duration 600
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_done))))
  
  (:durative-action do_step5
    :duration 300
    :condition (and (at start (step_pending step5)) (at start (step10_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_done))))
  
  (:durative-action do_step6
    :duration 2700
    :condition (and (at start (step_pending step6)) (at start (step3_done)) (at start (step5_done)) (at start (step10_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_done))))
  
  (:durative-action do_step7
    :duration 1200
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_done))))
  
  (:durative-action do_step8
    :duration 1800
    :condition (and (at start (step_pending step8)) (at start (step17_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_done))))
  
  (:durative-action do_step9
    :duration 300
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_done))))
  
  (:durative-action do_step10
    :duration 1200
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_done))))
  
  (:durative-action do_step11
    :duration 900
    :condition (and (at start (step_pending step11)) (at start (step4_done)) (at start (step9_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_done))))
  
  (:durative-action do_step12
    :duration 2400
    :condition (and (at start (step_pending step12)) (at start (step17_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_done))))
  
  (:durative-action do_step13
    :duration 600
    :condition (and (at start (step_pending step13)) (at start (step15_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_done))))
  
  (:durative-action do_step14
    :duration 900
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_done))))
  
  (:durative-action do_step15
    :duration 1500
    :condition (and (at start (step_pending step15)) (at start (step14_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_done))))
  
  (:durative-action do_step16
    :duration 300
    :condition (and (at start (step_pending step16)) (at start (step1_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_done))))
  
  (:durative-action do_step17
    :duration 7200
    :condition (and (at start (step_pending step17)) (at start (step7_done)) (at start (step18_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_done))))
  
  (:durative-action do_step18
    :duration 3600
    :condition (and (at start (step_pending step18)) (at start (step7_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_done))))
  
  (:durative-action do_step19
    :duration 900
    :condition (and (at start (step_pending step19)) (at start (step12_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_done)) (at end (task_complete))))
  
  (:durative-action do_step20
    :duration 1200
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_done))))
)