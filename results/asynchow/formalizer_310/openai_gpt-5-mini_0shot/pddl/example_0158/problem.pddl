(define (problem have_fun_pool_prob) (:domain have_fun_pool)
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
