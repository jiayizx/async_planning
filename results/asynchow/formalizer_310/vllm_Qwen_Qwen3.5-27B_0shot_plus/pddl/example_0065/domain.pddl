(define (domain clothing_dressing)
  (:requirements :durative-actions)
  
  (:predicates
    (underwear_pending)
    (underwear_done)
    (pants_pending)
    (pants_done)
    (shirt_pending)
    (shirt_done)
    (socks_pending)
    (socks_done)
    (shoes_pending)
    (shoes_done)
  )

  (:durative-action put_on_underwear
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (underwear_pending))
    :effect (and (at start (not (underwear_pending))) (at end (underwear_done)))
  )

  (:durative-action put_on_pants
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pants_pending)) (at start (underwear_done)))
    :effect (and (at start (not (pants_pending))) (at end (pants_done)))
  )

  (:durative-action put_on_shirt
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (shirt_pending)) (at start (underwear_done)))
    :effect (and (at start (not (shirt_pending))) (at end (shirt_done)))
  )

  (:durative-action put_on_socks
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (socks_pending)) (at start (pants_done)) (at start (shirt_done)))
    :effect (and (at start (not (socks_pending))) (at end (socks_done)))
  )

  (:durative-action put_on_shoes
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (shoes_pending)) (at start (socks_done)))
    :effect (and (at start (not (shoes_pending))) (at end (shoes_done)))
  )
)
