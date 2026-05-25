(define (domain chicken-curry)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (curry_ready)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
                 (at start (step_pending step1))
                 (at start (s3_done))
                 (at start (s4_done))
                 (at start (s5_done))
               )
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_done))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and
                 (at start (step_pending step2))
                 (at start (s1_done))
                 (at start (s4_done))
                 (at start (s5_done))
               )
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_done))
              (at end (curry_ready))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and
                 (at start (step_pending step3))
               )
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_done))
            )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
                 (at start (step_pending step4))
               )
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_done))
            )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
                 (at start (step_pending step5))
                 (at start (s4_done))
                 (at start (s3_done))
               )
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (s5_done))
            )
  )
)
