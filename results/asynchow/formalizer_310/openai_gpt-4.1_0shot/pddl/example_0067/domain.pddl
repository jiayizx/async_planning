(define (domain put-on-clothes)
  (:requirements :durative-actions)
  (:predicates
    (open_drawers_pending)
    (open_drawers_done)
    (take_out_shirt_pending)
    (take_out_shirt_done)
    (take_out_socks_pending)
    (take_out_socks_done)
    (take_out_pants_pending)
    (take_out_pants_done)
    (put_on_shirt_pending)
    (put_on_shirt_done)
    (put_on_socks_pending)
    (put_on_socks_done)
    (put_on_pants_pending)
    (put_on_pants_done)
  )

  (:durative-action open_drawers
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (open_drawers_pending))
    :effect (and (at start (not (open_drawers_pending))) (at end (open_drawers_done)))
  )

  (:durative-action take_out_shirt
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (take_out_shirt_pending)) (at start (open_drawers_done)))
    :effect (and (at start (not (take_out_shirt_pending))) (at end (take_out_shirt_done)))
  )

  (:durative-action take_out_socks
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (take_out_socks_pending)) (at start (open_drawers_done)))
    :effect (and (at start (not (take_out_socks_pending))) (at end (take_out_socks_done)))
  )

  (:durative-action take_out_pants
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (take_out_pants_pending)) (at start (open_drawers_done)))
    :effect (and (at start (not (take_out_pants_pending))) (at end (take_out_pants_done)))
  )

  (:durative-action put_on_shirt
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (put_on_shirt_pending)) (at start (take_out_shirt_done)))
    :effect (and (at start (not (put_on_shirt_pending))) (at end (put_on_shirt_done)))
  )

  (:durative-action put_on_socks
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (put_on_socks_pending)) (at start (take_out_socks_done)))
    :effect (and (at start (not (put_on_socks_pending))) (at end (put_on_socks_done)))
  )

  (:durative-action put_on_pants
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (put_on_pants_pending)) (at start (take_out_pants_done)))
    :effect (and (at start (not (put_on_pants_pending))) (at end (put_on_pants_done)))
  )
)
