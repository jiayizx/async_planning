(define (problem cook-ground-turkey-prob)
  (:domain cook-ground-turkey)
  (:init
    (mix_pending) (shape_pending) (heat_pending) (cook_pending) (serve_pending)
  )
  (:goal (and
    (mix_done) (shape_done) (heat_done) (cook_done) (serve_done)
  ))
)
