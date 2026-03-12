(define (problem pool_fun_instance)
  (:domain pool_fun)
  (:init
    (enjoy_diving_pending)
    (buy_camera_pending)
    (buy_toys_pending)
  )
  (:goal (and
    (enjoy_diving_done)
    (buy_camera_done)
    (buy_toys_done)
  ))
)
