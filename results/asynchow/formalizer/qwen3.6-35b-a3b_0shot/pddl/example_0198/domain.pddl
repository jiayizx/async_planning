(define (domain hamster_diagnosis)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step) (s1_done) (s2_done) (s3_done))
  (:durative-action do_step1
    :parameters ()
    :duration 30
    :condition (and (at start (step_pending step1)) (at start s2_done) (at start s3_done))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end s1_done)))
  (:durative-action do_step2
    :parameters ()
    :duration 10080
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end s2_done)))
  (:durative-action do_step3
    :parameters ()
    :duration 5
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end s3_done)))
)