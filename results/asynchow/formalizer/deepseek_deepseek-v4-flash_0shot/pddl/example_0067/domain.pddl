(define (domain dress-clothes)
  (:requirements :durative-actions :typing)
  (:types step)
  (:constants step1 step2 step3 step4 step5 step6 step7 - step)
  (:predicates (step_pending ?s - step) (step_done ?s - step))
  (:durative-action do_step1
    :duration (= ?duration 5)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1))))
  (:durative-action do_step2
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step2)) (at start (step_done step1)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2))))
  (:durative-action do_step3
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step3)) (at start (step_done step1)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3))))
  (:durative-action do_step4
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step4)) (at start (step_done step1)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4))))
  (:durative-action do_step5
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step5)) (at start (step_done step2)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5))))
  (:durative-action do_step6
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step6)) (at start (step_done step3)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6))))
  (:durative-action do_step7
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step7)) (at start (step_done step4)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7))))
)
