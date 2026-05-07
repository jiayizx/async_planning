(define (domain try_different_diet)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (recs_done)
    (lookup_done)
    (commit_done)
    (compare_done)
    (doctor_done)
  )

  (:durative-action do_recs
    :duration (= ?duration 10800)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (recs_done))
    )
  )

  (:durative-action do_lookup
    :duration (= ?duration 18000)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (lookup_done))
    )
  )

  (:durative-action do_compare
    :duration (= ?duration 10800)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (compare_done))
    )
  )

  (:durative-action do_doctor
    :duration (= ?duration 10800)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (doctor_done))
    )
  )

  (:durative-action do_commit
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending step3))
      (at start (recs_done))
      (at start (lookup_done))
      (at start (compare_done))
      (at start (doctor_done))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (commit_done))
    )
  )
)
