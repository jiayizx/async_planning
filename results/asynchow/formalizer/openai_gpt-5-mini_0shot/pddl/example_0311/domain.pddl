(define (domain make-lavender-tea)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (tea_ready)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_done)) )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_done)) )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (s1_done)) (at start (s2_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_done))
              (at end (tea_ready)) )
  )
)
