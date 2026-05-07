(define (domain stretch_canvas_shoes)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (newspapers_stuffed)
    (socks_stuffed)
    (shoes_frozen)
  )

  (:durative-action stuff_newspapers
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (newspapers_stuffed))
    )
  )

  (:durative-action stuff_socks
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (socks_stuffed))
    )
  )

  (:durative-action freeze_shoes
    :parameters (?s - step)
    :duration (= ?duration 36000)
    :condition (and
      (at start (step_pending ?s))
      (at start (newspapers_stuffed))
      (at start (socks_stuffed))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shoes_frozen))
    )
  )
)