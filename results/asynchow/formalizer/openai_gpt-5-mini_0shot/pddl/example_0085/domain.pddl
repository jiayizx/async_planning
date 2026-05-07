(define (domain adoption)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_ok)
    (step2_ok)
    (step3_ok)
    (step4_ok)
    (step5_ok)
    (step6_ok)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (step1_ok))) )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step2)) (at start (step1_ok)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (step2_ok))) )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending step3)) (at start (step2_ok)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (step3_ok))) )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step4)) (at start (step3_ok)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (step4_ok))) )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending step5)) (at start (step3_ok)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (step5_ok))) )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step6)) (at start (step4_ok)) (at start (step5_ok)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (step6_ok))) )
)
