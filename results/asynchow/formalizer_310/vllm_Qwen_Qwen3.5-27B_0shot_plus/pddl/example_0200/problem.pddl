(define (problem eat_gouda)
  (:domain gouda_cheese)
  
  (:init
    (preheat_pending)
    (boil_pending)
    (sauce_pending)
    (add_gouda_pending)
    (bake_pending)
  )

  (:goal (and
    (preheat_done)
    (boil_done)
    (sauce_done)
    (add_gouda_done)
    (bake_done)
  ))
)