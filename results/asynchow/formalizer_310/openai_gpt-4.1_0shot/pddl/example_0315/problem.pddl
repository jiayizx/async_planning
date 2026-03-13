(define (problem bake_soft_cookies-problem)
  (:domain bake_soft_cookies)
  (:init
    (store_cookies_pending)
    (add_paper_towel_pending)
    (add_bread_pending)
  )
  (:goal (and
    (store_cookies_done)
    (add_paper_towel_done)
    (add_bread_done)
  ))
)
