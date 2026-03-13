(define (domain bake_soft_cookies)
  (:requirements :durative-actions)
  (:predicates
    (store_cookies_pending)
    (store_cookies_done)
    (add_paper_towel_pending)
    (add_paper_towel_done)
    (add_bread_pending)
    (add_bread_done)
  )

  (:durative-action store_cookies
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (store_cookies_pending))
    :effect (and
      (at start (not (store_cookies_pending)))
      (at end (store_cookies_done))
    )
  )

  (:durative-action add_paper_towel
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (add_paper_towel_pending))
      (at start (store_cookies_done))
    )
    :effect (and
      (at start (not (add_paper_towel_pending)))
      (at end (add_paper_towel_done))
    )
  )

  (:durative-action add_bread
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and
      (at start (add_bread_pending))
      (at start (store_cookies_done))
    )
    :effect (and
      (at start (not (add_bread_pending)))
      (at end (add_bread_done))
    )
  )
)
