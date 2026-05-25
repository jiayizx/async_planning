(define (domain cabin_painting)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (taped_done)
    (varnish_done)
    (horizon_done)
    (sharpen_done)
    (washes_done)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (taped_done))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (taped_done)) (at start (washes_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (varnish_done))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (taped_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (horizon_done))
            )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step4)) (at start (taped_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (sharpen_done))
            )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step5)) (at start (taped_done)) (at start (horizon_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (washes_done))
            )
  )
)
