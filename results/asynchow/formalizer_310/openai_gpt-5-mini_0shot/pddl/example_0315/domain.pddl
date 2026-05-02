(define (domain bake_soft_cookies)
  (:requirements :durative-actions)
  (:predicates
    (store_pending)
    (store_done)
    (towel_pending)
    (towel_done)
    (bread_pending)
    (bread_done)
  )

  (:durative-action store_cookies
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (store_pending))
    :effect (and (at start (not (store_pending))) (at end (store_done)))
  )

  (:durative-action add_towel
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (towel_pending)) (at start (store_done)))
    :effect (and (at start (not (towel_pending))) (at end (towel_done)))
  )

  (:durative-action add_bread
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (bread_pending)) (at start (store_done)))
    :effect (and (at start (not (bread_pending))) (at end (bread_done)))
  )
)
