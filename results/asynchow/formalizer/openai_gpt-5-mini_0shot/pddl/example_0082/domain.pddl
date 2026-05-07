(define (domain short_film)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete)
    (s2_complete)
    (s3_complete)
    (s4_complete)
    (s5_complete)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_complete))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step2)) (at start (s3_complete)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_complete))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step3)) (at start (s1_complete)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_complete))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (s3_complete)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_complete))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending step5)) (at start (s4_complete)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (s5_complete))
    )
  )
)
