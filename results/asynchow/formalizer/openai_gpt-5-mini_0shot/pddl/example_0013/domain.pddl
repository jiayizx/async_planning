(define (domain make-pasta-mushrooms)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_s1)
    (done_s2)
    (done_s3)
    (done_s4)
    (done_s5)
    (done_s6)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (done_s1))) )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (done_s1)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (done_s2))) )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (done_s2)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (done_s3))) )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step4)) (at start (done_s3)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (done_s4))) )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step5)) (at start (done_s3)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (done_s5))) )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step6)) (at start (done_s3)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (done_s6))) )
)
