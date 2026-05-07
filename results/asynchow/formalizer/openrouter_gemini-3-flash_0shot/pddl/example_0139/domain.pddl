(define (domain towel_butterflies)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (towel_bunched)
    (body_made)
    (butterfly_decorated)
  )

  (:durative-action fold_bunch_towel
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (towel_bunched))
    )
  )

  (:durative-action roll_washcloth_body
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (body_made))
    )
  )

  (:durative-action decorate_butterfly
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending ?s))
      (at start (towel_bunched))
      (at start (body_made))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (butterfly_decorated))
    )
  )
)