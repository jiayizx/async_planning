(define (domain have_fun_pool)
  (:requirements :durative-actions)
  (:predicates
    (enjoy_diving_pending)
    (enjoy_diving_done)
    (buy_camera_pending)
    (buy_camera_done)
    (buy_toys_pending)
    (buy_toys_done)
  )

  (:durative-action do_enjoy_diving
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (enjoy_diving_pending)) (at start (buy_toys_done)))
    :effect (and (at start (not (enjoy_diving_pending))) (at end (enjoy_diving_done)))
  )

  (:durative-action do_buy_camera
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (buy_camera_pending))
    :effect (and (at start (not (buy_camera_pending))) (at end (buy_camera_done)))
  )

  (:durative-action do_buy_toys
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (buy_toys_pending))
    :effect (and (at start (not (buy_toys_pending))) (at end (buy_toys_done)))
  )
)
