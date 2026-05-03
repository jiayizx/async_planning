(define (problem get_rid_of_blackheads)
  (:domain blackhead_treatment)
  
  (:init
    (understand_risks_pending)
    (egg_white_mask_pending)
    (warmed_honey_pending)
  )

  (:goal (and
    (understand_risks_done)
    (egg_white_mask_done)
    (warmed_honey_done)
  ))
)