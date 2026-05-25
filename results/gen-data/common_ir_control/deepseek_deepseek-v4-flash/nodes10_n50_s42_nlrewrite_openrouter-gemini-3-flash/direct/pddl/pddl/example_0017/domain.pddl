(define (domain firm-breasts)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (pending ?s - step) (step_done ?s - step))
  (:durative-action do-step1
    :duration (= ?duration 1200)
    :condition (at start (pending step1))
    :effect (and (at start (not (pending step1))) (at end (step_done step1))))
  (:durative-action do-step2
    :duration (= ?duration 2700)
    :condition (and (at start (pending step2)) (at start (step_done step4)) (at start (step_done step10)))
    :effect (and (at start (not (pending step2))) (at end (step_done step2))))
  (:durative-action do-step3
    :duration (= ?duration 300)
    :condition (and (at start (pending step3)) (at start (step_done step8)))
    :effect (and (at start (not (pending step3))) (at end (step_done step3))))
  (:durative-action do-step4
    :duration (= ?duration 3600)
    :condition (and (at start (pending step4)) (at start (step_done step7)))
    :effect (and (at start (not (pending step4))) (at end (step_done step4))))
  (:durative-action do-step5
    :duration (= ?duration 1800)
    :condition (and (at start (pending step5)) (at start (step_done step4)))
    :effect (and (at start (not (pending step5))) (at end (step_done step5))))
  (:durative-action do-step6
    :duration (= ?duration 3600)
    :condition (and (at start (pending step6)) (at start (step_done step8)))
    :effect (and (at start (not (pending step6))) (at end (step_done step6))))
  (:durative-action do-step7
    :duration (= ?duration 1800)
    :condition (and (at start (pending step7)) (at start (step_done step6)))
    :effect (and (at start (not (pending step7))) (at end (step_done step7))))
  (:durative-action do-step8
    :duration (= ?duration 7200)
    :condition (and (at start (pending step8)) (at start (step_done step1)))
    :effect (and (at start (not (pending step8))) (at end (step_done step8))))
  (:durative-action do-step9
    :duration (= ?duration 2400)
    :condition (and (at start (pending step9)) (at start (step_done step7)))
    :effect (and (at start (not (pending step9))) (at end (step_done step9))))
  (:durative-action do-step10
    :duration (= ?duration 600)
    :condition (and (at start (pending step10)) (at start (step_done step9)))
    :effect (and (at start (not (pending step10))) (at end (step_done step10))))
)
