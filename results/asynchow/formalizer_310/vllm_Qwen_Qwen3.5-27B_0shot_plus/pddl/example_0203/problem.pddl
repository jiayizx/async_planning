(define (problem finish_maple)
  (:domain maple_finish)
  
  (:init
    (stir_pending)
    (paint_pending)
    (dry_pending)
    (sand_pending)
    (apply_pending)
  )
  
  (:goal (and
    (stir_done)
    (paint_done)
    (dry_done)
    (sand_done)
    (apply_done)
  ))
)