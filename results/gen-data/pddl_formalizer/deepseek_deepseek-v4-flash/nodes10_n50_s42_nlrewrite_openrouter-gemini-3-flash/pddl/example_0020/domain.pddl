(define (domain play_ds)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step))
  
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3))))
  
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 45)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8))))
  
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step10)) (at start (step_done step3)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10))))
  
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step9)) (at start (step_done step3)) (at start (step_done step10)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9))))
  
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (step_done step3)) (at start (step_done step8)) (at start (step_done step9)) (at start (step_done step10)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2))))
  
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step6)) (at start (step_done step2)) (at start (step_done step3)) (at start (step_done step8)) (at start (step_done step9)) (at start (step_done step10)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6))))
  
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (step_pending step4)) (at start (step_done step2)) (at start (step_done step3)) (at start (step_done step6)) (at start (step_done step8)) (at start (step_done step9)) (at start (step_done step10)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4))))
  
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (step_done step2)) (at start (step_done step3)) (at start (step_done step4)) (at start (step_done step6)) (at start (step_done step8)) (at start (step_done step9)) (at start (step_done step10)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5))))
  
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (step_pending step1)) (at start (step_done step2)) (at start (step_done step3)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step8)) (at start (step_done step9)) (at start (step_done step10)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1))))
  
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (step_pending step7)) (at start (step_done step1)) (at start (step_done step2)) (at start (step_done step3)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step8)) (at start (step_done step9)) (at start (step_done step10)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7))))
)