(define (domain marathon_signup)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; unique semantic predicates produced by each step
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (signup_completed)
  )

  ;; One durative-action per step
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step1)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_done)) ) )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (at start (and (step_pending step2) (s1_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_done)) ) )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step3) (s2_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_done)) ) )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (at start (and (step_pending step4) (s3_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_done)) ) )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step5) (s3_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (s5_done)) ) )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step6) (s4_done) (s5_done)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (signup_completed)) ) )
)
