(define (domain marshmallow-desserts)
  (:requirements :durative-actions)
  (:predicates
    (melt_chocolate_pending)
    (melt_chocolate_done)
    (assemble_kebabs_pending)
    (assemble_kebabs_done)
    (drizzle_chocolate_pending)
    (drizzle_chocolate_done)
  )

  (:durative-action melt_chocolate
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (melt_chocolate_pending))
    :effect (and
      (at start (not (melt_chocolate_pending)))
      (at end (melt_chocolate_done))
    )
  )

  (:durative-action assemble_kebabs
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (assemble_kebabs_pending))
    :effect (and
      (at start (not (assemble_kebabs_pending)))
      (at end (assemble_kebabs_done))
    )
  )

  (:durative-action drizzle_chocolate
    :parameters ()
    :duration (= ?duration 60)
    :condition (and
      (at start (drizzle_chocolate_pending))
      (at start (melt_chocolate_done))
      (at start (assemble_kebabs_done))
    )
    :effect (and
      (at start (not (drizzle_chocolate_pending)))
      (at end (drizzle_chocolate_done))
    )
  )
)
