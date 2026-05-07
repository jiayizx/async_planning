(define (domain rollerblade)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done))
  (:durative-action step1
    :duration 600
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (s1_done))))
  (:durative-action step2
    :duration 900
    :condition (and (at start (step_pending step2)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (s2_done))))
  (:durative-action step3
    :duration 1200
    :condition (and (at start (step_pending step3)) (at start (s2_done)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (s3_done))))
  (:durative-action step4
    :duration 300
    :condition (and (at start (step_pending step4)) (at start (s3_done)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (s4_done))))
  (:durative-action step5
    :duration 300
    :condition (and (at start (step_pending step5)) (at start (s3_done)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (s5_done))))
  (:durative-action step6
    :duration 3600
    :condition (and (at start (step_pending step6)) (at start (s4_done)))
    :effect (and (at start (not (step_pending step6)))
                 (at end (step_done step6))
                 (at end (s6_done))))
  (:durative-action step7
    :duration 3600
    :condition (and (at start (step_pending step7)) (at start (s5_done)) (at start (s6_done)))
    :effect (and (at start (not (step_pending step7)))
                 (at end (step_done step7))
                 (at end (s7_done))))
)