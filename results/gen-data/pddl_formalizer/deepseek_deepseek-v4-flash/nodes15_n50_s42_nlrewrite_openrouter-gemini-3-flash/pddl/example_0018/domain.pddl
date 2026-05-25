(define (domain cooking)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (completed ?s - step))
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step1)) (at start (step_done step7)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (completed step1))))
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step2)) (at start (step_done step10)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (completed step2))))
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step3)) (at start (step_done step2)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (completed step3))))
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step4)) (at start (step_done step13)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (completed step4))))
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step5)) (at start (step_done step8)) (at start (step_done step15)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (completed step5))))
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step6)) (at start (step_done step4)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (completed step6))))
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step7)) (at start (step_done step12)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (completed step7))))
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step8)) (at start (step_done step1)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (completed step8))))
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step9)) (at start (step_done step3)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (completed step9))))
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step10)) (at start (step_done step15)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (completed step10))))
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step11)) (at start (step_done step14)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (completed step11))))
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step12)) (at start (step_done step9)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (completed step12))))
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (completed step13))))
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (completed step14))))
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step15)) (at start (step_done step11)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (completed step15))))
)