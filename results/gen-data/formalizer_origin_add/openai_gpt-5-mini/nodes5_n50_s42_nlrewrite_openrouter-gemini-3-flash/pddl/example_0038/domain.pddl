(define (domain milanesa-domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pounded)
    (eggs_whisked)
    (dipped)
    (station_ready)
    (milanesa_ready)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (pounded))
            )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (eggs_whisked))
            )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (pounded)) (at start (eggs_whisked)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (dipped))
            )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (pounded)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (station_ready))
            )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (pounded)) (at start (eggs_whisked)) (at start (dipped)) (at start (station_ready)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (milanesa_ready))
            )
  )
)
