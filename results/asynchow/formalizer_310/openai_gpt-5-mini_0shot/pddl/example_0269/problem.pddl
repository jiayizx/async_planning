(define (problem make_marshmallow_dessert)
  (:domain marshmallow_dessert)
  (:init
    (melt_pending)
    (assemble_pending)
    (drizzle_pending)
  )
  (:goal (and
    (melt_done)
    (assemble_done)
    (drizzle_done)
  ))
)
