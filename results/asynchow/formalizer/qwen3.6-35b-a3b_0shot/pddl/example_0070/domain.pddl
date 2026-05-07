(define (domain marathon_sign_up)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step)
               (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done))

  (:durative-action step1_action
    :duration 30
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (s1_done))))

  (:durative-action step2_action
    :duration 10
    :condition (and (at start (step_pending step2)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (s2_done))))

  (:durative-action step3_action
    :duration 60
    :condition (and (at start (step_pending step3)) (at start (s2_done)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (s3_done))))

  (:durative-action step4_action
    :duration 20
    :condition (and (at start (step_pending step4)) (at start (s3_done)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (s4_done))))

  (:durative-action step5_action
    :duration 30
    :condition (and (at start (step_pending step5)) (at start (s3_done)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (s5_done))))

  (:durative-action step6_action
    :duration 60
    :condition (and (at start (step_pending step6)) (at start (s4_done)) (at start (s5_done)))
    :effect (and (at start (not (step_pending step6)))
                 (at end (step_done step6))
                 (at end (s6_done))))
)