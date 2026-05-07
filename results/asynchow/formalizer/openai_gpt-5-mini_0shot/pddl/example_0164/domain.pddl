(define (domain use-art-supplies)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete)
    (s2_complete)
    (s3_complete)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)) (at start (s2_complete)))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_complete))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_complete))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (s2_complete)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_complete))
    )
  )
)
