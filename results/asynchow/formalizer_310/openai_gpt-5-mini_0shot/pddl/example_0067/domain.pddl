(define (domain put_on_clothes)
  (:requirements :durative-actions)
  (:predicates
    (open_drawer_pending)
    (open_drawer_done)
    (take_shirt_pending)
    (take_shirt_done)
    (take_socks_pending)
    (take_socks_done)
    (take_pants_pending)
    (take_pants_done)
    (put_shirt_pending)
    (put_shirt_done)
    (put_socks_pending)
    (put_socks_done)
    (put_pants_pending)
    (put_pants_done)
  )

  (:durative-action open_drawer
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (open_drawer_pending))
    :effect (and (at start (not (open_drawer_pending))) (at end (open_drawer_done)))
  )

  (:durative-action take_shirt
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (take_shirt_pending)) (at start (open_drawer_done)))
    :effect (and (at start (not (take_shirt_pending))) (at end (take_shirt_done)))
  )

  (:durative-action take_socks
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (take_socks_pending)) (at start (open_drawer_done)))
    :effect (and (at start (not (take_socks_pending))) (at end (take_socks_done)))
  )

  (:durative-action take_pants
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (take_pants_pending)) (at start (open_drawer_done)))
    :effect (and (at start (not (take_pants_pending))) (at end (take_pants_done)))
  )

  (:durative-action put_shirt
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (put_shirt_pending)) (at start (take_shirt_done)))
    :effect (and (at start (not (put_shirt_pending))) (at end (put_shirt_done)))
  )

  (:durative-action put_socks
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (put_socks_pending)) (at start (take_socks_done)))
    :effect (and (at start (not (put_socks_pending))) (at end (put_socks_done)))
  )

  (:durative-action put_pants
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (put_pants_pending)) (at start (take_pants_done)))
    :effect (and (at start (not (put_pants_pending))) (at end (put_pants_done)))
  )
)
