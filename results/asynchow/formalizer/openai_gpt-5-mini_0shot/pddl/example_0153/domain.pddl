(define (domain move_in_domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (move_in_ready)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_done))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_done))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step3)) (at start (s1_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_done))
              (at end (move_in_ready))
            )
  )
)
