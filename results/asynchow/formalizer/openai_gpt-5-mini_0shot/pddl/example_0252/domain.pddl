(define (domain chili_sauce)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_completed)
    (s2_completed)
    (s3_completed)
    (s4_completed)
    (s5_completed)
    (s6_completed)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (s1_completed))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step2)) (at start (s1_completed)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (s2_completed))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step3))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (s3_completed))
            )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step4)) (at start (s2_completed)) (at start (s3_completed)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (s4_completed))
            )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (s4_completed)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (s5_completed))
            )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (s5_completed)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (s6_completed))
            )
  )
)
