(define (problem build_snowman)
  (:domain snowman_build)
  
  (:init
    (decide_pending)
    (gloves_pending)
    (boots_pending)
    (coat_pending)
    (hat_pending)
    (walk_pending)
    (roll_pending)
  )
  
  (:goal (and
    (decide_done)
    (gloves_done)
    (boots_done)
    (coat_done)
    (hat_done)
    (walk_done)
    (roll_done)
  ))
)