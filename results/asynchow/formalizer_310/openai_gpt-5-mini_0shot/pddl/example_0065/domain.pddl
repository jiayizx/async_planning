(define (domain clothing)
  (:requirements :durative-actions)
  (:predicates
    (put_underwear_pending)
    (put_underwear_done)
    (put_pants_pending)
    (put_pants_done)
    (put_shirt_pending)
    (put_shirt_done)
    (put_socks_pending)
    (put_socks_done)
    (put_shoes_pending)
    (put_shoes_done)
  )

  (:durative-action put_underwear
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (put_underwear_pending))
    :effect (and (at start (not (put_underwear_pending))) (at end (put_underwear_done)))
  )

  (:durative-action put_pants
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (put_pants_pending)) (at start (put_underwear_done)))
    :effect (and (at start (not (put_pants_pending))) (at end (put_pants_done)))
  )

  (:durative-action put_shirt
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (put_shirt_pending)) (at start (put_underwear_done)))
    :effect (and (at start (not (put_shirt_pending))) (at end (put_shirt_done)))
  )

  (:durative-action put_socks
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (put_socks_pending)) (at start (put_pants_done)) (at start (put_shirt_done)))
    :effect (and (at start (not (put_socks_pending))) (at end (put_socks_done)))
  )

  (:durative-action put_shoes
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (put_shoes_pending)) (at start (put_socks_done)))
    :effect (and (at start (not (put_shoes_pending))) (at end (put_shoes_done)))
  )
)
