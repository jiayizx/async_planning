(define (domain treat-diarrhea-lovebirds)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_completed)
    (step2_completed)
    (diarrhea_treated)
  )

  (:durative-action do_step1
    :duration (= ?duration 86400)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (step1_completed))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (step2_completed))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step3)) (at start (step1_completed)) (at start (step2_completed)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (diarrhea_treated))
    )
  )
)
