(define (problem make_calzones)
  (:domain calzones)
  
  (:init
    (preheat_pending)
    (roll_pending)
    (fill_pending)
    (fold_pending)
    (bake_pending)
  )

  (:goal (and
    (preheat_done)
    (roll_done)
    (fill_done)
    (fold_done)
    (bake_done)
  ))
)