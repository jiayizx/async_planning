(define (domain keep-nail-polish-from-separating)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_done ?s - step)

    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)

    (s1_pending)
    (s2_pending)
    (s3_pending)
    (s4_pending)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
                 (at start (s1_pending))
                 (at start (s2_done))
                 (at start (s4_done))
               )
    :effect (and
              (at start (not (s1_pending)))
              (at end (step_done step1))
              (at end (s1_done))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s2_pending))
    :effect (and
              (at start (not (s2_pending)))
              (at end (step_done step2))
              (at end (s2_done))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
                 (at start (s3_pending))
                 (at start (s1_done))
               )
    :effect (and
              (at start (not (s3_pending)))
              (at end (step_done step3))
              (at end (s3_done))
            )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (s4_pending))
    :effect (and
              (at start (not (s4_pending)))
              (at end (step_done step4))
              (at end (s4_done))
            )
  )
)
