(define (domain maine_trip)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (booked_cottage)
    (researched_trails)
    (watched_sunrise)
    (drove_park_loop)
    (drove_airport_park)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (booked_cottage))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (researched_trails))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step3) (drove_airport_park)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (watched_sunrise))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step4) (booked_cottage) (drove_airport_park)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (drove_park_loop))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step5) (researched_trails)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (drove_airport_park))
    )
  )
)
