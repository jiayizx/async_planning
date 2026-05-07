(define (domain make_extra_money)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (picked_app)
    (went_rest)
    (filled_app)
    (turned_in_app)
    (worked_job)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (picked_app))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (went_rest))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (went_rest)) (at start (filled_app)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (turned_in_app))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending step4)) (at start (turned_in_app)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (worked_job))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (picked_app)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (filled_app))
    )
  )
)
