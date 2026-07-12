(define (domain slow-cooker-inconsistency-certificate)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step12_completed)
    (step38_completed)
    (step45_completed)
  )

  (:durative-action execute_step12
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (step45_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (step12_completed))
    )
  )

  (:durative-action execute_step38
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and
      (at start (step_pending ?s))
      (at start (step12_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (step38_completed))
    )
  )

  (:durative-action execute_step45
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending ?s))
      (at start (step38_completed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (step45_completed))
    )
  )
)