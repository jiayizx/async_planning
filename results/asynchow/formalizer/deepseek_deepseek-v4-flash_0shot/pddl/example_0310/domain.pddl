(define (domain take_measurements)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_completed ?s - step))
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_completed step1))))
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (step_completed step1)))
    :effect (and (at start (not (step_pending step2))) (at end (step_completed step2))))
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_completed step3))))
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (step_completed step5)))
    :effect (and (at start (not (step_pending step4))) (at end (step_completed step4))))
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_completed step5))))
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_completed step6))))
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_completed step7))))
)