(define (domain marshmallow_desserts)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (chocolate_melted)
    (kebabs_assembled)
    (dessert_ready)
  )

  (:durative-action melt_chocolate
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (chocolate_melted))
    )
  )

  (:durative-action assemble_kebabs
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (kebabs_assembled))
    )
  )

  (:durative-action drizzle_chocolate
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (chocolate_melted))
      (at start (kebabs_assembled))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (dessert_ready))
    )
  )
)