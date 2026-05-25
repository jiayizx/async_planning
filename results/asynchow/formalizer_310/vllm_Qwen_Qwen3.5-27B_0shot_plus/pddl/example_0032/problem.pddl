(define (problem make_chicken_tenders)
  (:domain chicken_tenders)
  
  (:init
    (take_chicken_pending)
    (preheat_oven_pending)
    (get_pan_pending)
    (lay_tinfoil_pending)
    (arrange_nuggets_pending)
    (cook_oven_pending)
  )
  
  (:goal (and
    (take_chicken_done)
    (preheat_oven_done)
    (get_pan_done)
    (lay_tinfoil_done)
    (arrange_nuggets_done)
    (cook_oven_done)
  ))
)