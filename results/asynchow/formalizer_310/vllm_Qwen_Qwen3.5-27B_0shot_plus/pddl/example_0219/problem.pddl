(define (problem swamp_walk_instance)
  (:domain swamp_walk)
  
  (:init
    (wear_clothing_pending)
    (cover_clothing_pending)
    (wear_gloves_pending)
    (protect_feet_pending)
    (wear_hat_pending)
  )

  (:goal (and
    (wear_clothing_done)
    (cover_clothing_done)
    (wear_gloves_done)
    (protect_feet_done)
    (wear_hat_done)
  ))
)
