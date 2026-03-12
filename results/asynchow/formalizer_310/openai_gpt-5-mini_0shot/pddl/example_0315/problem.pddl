(define (problem bake_soft_cookies_problem)
  (:domain bake_soft_cookies)
  (:init
    (store_pending)
    (towel_pending)
    (bread_pending)
  )
  (:goal (and
    (store_done)
    (towel_done)
    (bread_done)
  ))
)
