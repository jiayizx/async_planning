(define (domain flight_bump)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step) (s1_done) (s2_done) (s3_done) (s4_done))
  (:durative-action step1
    :parameters ()
    :duration 600
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (s1_done))))
  (:durative-action step2
    :parameters ()
    :duration 1200
    :condition (and (at start (step_pending step2)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (s2_done))))
  (:durative-action step3
    :parameters ()
    :duration 600
    :condition (and (at start (step_pending step3)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (s3_done))))
  (:durative-action step4
    :parameters ()
    :duration 600
    :condition (and (at start (step_pending step4)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (s4_done))))
)