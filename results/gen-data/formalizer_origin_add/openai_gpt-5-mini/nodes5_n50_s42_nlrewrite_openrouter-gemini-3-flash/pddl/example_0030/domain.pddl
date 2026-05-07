(define (domain make_canoe)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (varnish_done)
    (source_done)
    (assemble_done)
    (seats_done)
    (sand_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 172800)
    :condition (and
                 (at start (step_pending step1))
                 (at start (source_done))
                 (at start (assemble_done))
                 (at start (sand_done))
               )
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (varnish_done))
            )
  )

  (:durative-action do_step2
    :duration (= ?duration 10800)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (source_done))
            )
  )

  (:durative-action do_step3
    :duration (= ?duration 432000)
    :condition (and
                 (at start (step_pending step3))
                 (at start (source_done))
               )
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (assemble_done))
            )
  )

  (:durative-action do_step4
    :duration (= ?duration 14400)
    :condition (and
                 (at start (step_pending step4))
                 (at start (source_done))
                 (at start (assemble_done))
               )
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (seats_done))
            )
  )

  (:durative-action do_step5
    :duration (= ?duration 21600)
    :condition (and
                 (at start (step_pending step5))
                 (at start (source_done))
                 (at start (assemble_done))
               )
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (sand_done))
            )
  )
)
