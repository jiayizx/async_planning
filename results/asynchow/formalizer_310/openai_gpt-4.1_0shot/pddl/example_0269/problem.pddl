(define (problem make-marshmallow-desserts)
  (:domain marshmallow-desserts)
  (:init
    (melt_chocolate_pending)
    (assemble_kebabs_pending)
    (drizzle_chocolate_pending)
  )
  (:goal (and
    (melt_chocolate_done)
    (assemble_kebabs_done)
    (drizzle_chocolate_done)
  ))
)
