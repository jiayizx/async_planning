(define (domain chandelier-size)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (height_measured)
    (room_measured)
    (sum_computed)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)  ; 5 minutes = 300 seconds
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (height_measured))
    )
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 600)  ; 10 minutes = 600 seconds
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (room_measured))
    )
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 120)  ; 2 minutes = 120 seconds
    :condition (and (at start (step_pending ?s)) (at start (room_measured)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sum_computed))
    )
  )
)
