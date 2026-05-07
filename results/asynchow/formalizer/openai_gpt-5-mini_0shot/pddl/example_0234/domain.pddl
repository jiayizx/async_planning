(define (domain stop_coworker)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (talked_done)
    (discussed_done)
    (stood_up_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 3600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (talked_done))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (discussed_done))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step3)) (at start (talked_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (stood_up_done))
    )
  )
)
