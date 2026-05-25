(define (domain party-planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step))
  (:durative-action do-step1
    :duration (= ?duration 3600)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1))))
  (:durative-action do-step2
    :duration (= ?duration 10800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2))))
  (:durative-action do-step3
    :duration (= ?duration 172800)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3))))
  (:durative-action do-step4
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step4)) (at start (step_done step1)) (at start (step_done step5)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4))))
  (:durative-action do-step5
    :duration (= ?duration 1800)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5))))
  (:durative-action do-step6
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step6)) (at start (step_done step3)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6))))
  (:durative-action do-step7
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step7)) (at start (step_done step2)) (at start (step_done step8)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7))))
  (:durative-action do-step8
    :duration (= ?duration 900)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8))))
  (:durative-action do-step9
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step9)) (at start (step_done step6)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9))))
  (:durative-action do-step10
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step10)) (at start (step_done step1)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10))))
)