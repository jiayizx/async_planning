(define (domain create-ink)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done)
    (step2_done)
    (ink_created)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (step1_done))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (step2_done))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
                 (at start (step_pending step3))
                 (at start (step1_done))
                 (at start (step2_done))
               )
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (ink_created))
            )
  )
)
