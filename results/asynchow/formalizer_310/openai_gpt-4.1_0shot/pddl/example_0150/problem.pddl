(define (problem blackhead_removal_problem)
  (:domain blackhead_removal)
  (:init
    (understand_limitations_pending)
    (egg_white_mask_pending)
    (warmed_honey_pending)
  )
  (:goal (and
    (understand_limitations_done)
    (egg_white_mask_done)
    (warmed_honey_done)
  ))
)
