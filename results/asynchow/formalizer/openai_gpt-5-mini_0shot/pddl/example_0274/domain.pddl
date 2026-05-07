(define (domain double-jointed)
  (:requirements :typing :durative-actions)
  (:types step)

  ;; Declare the concrete step objects as constants so the domain can reference them
  (:constants step1 step2 step3 step4 step5 step6 - step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
  )

  ;; One durative-action per concrete step (no parameters) referencing the constants

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done))))

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done))))

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 3)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done))))

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 3)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done))))

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_done))))

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step6) (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (s6_done)))))
