(define (problem stretch-canvas-shoes-problem)
  (:domain stretch-canvas-shoes)
  (:init
    (freeze_shoes_pending)
    (stuff_newspapers_pending)
    (stuff_socks_pending)
  )
  (:goal (and
    (freeze_shoes_done)
    (stuff_newspapers_done)
    (stuff_socks_done)
  ))
)
