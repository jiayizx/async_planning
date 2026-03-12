(define (domain marshmallow_dessert)
  (:requirements :durative-actions)
  (:predicates
    (melt_pending)
    (melt_done)
    (assemble_pending)
    (assemble_done)
    (drizzle_pending)
    (drizzle_done)
  )

  (:durative-action melt_chocolate
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (melt_pending))
    :effect (and (at start (not (melt_pending))) (at end (melt_done)))
  )

  (:durative-action assemble_kebabs
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (assemble_pending))
    :effect (and (at start (not (assemble_pending))) (at end (assemble_done)))
  )

  (:durative-action drizzle_chocolate
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (drizzle_pending)) (at start (melt_done)) (at start (assemble_done)))
    :effect (and (at start (not (drizzle_pending))) (at end (drizzle_done)))
  )
)
