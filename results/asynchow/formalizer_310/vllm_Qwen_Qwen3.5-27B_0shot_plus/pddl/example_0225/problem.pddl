(define (problem ironing_task)
  (:domain ironing-avoidance)
  
  (:init
    (buy_steamer_pending)
    (fill_steamer_pending)
    (hang_item_pending)
    (steam_wrinkles_pending)
    (shower_hang_pending)
  )

  (:goal (and
    (buy_steamer_done)
    (fill_steamer_done)
    (hang_item_done)
    (steam_wrinkles_done)
    (shower_hang_done)
  ))
)
