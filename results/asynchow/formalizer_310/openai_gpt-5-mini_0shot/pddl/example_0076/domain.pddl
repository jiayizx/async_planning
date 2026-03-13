(define (domain getting_dressed)
  (:requirements :durative-actions)
  (:predicates
    (put_on_shirt_pending) (put_on_shirt_done)
    (put_on_underwear_pending) (put_on_underwear_done)
    (put_on_pants_pending) (put_on_pants_done)
    (check_appearance_pending) (check_appearance_done)
    (put_on_socks_pending) (put_on_socks_done)
    (put_on_shoes_pending) (put_on_shoes_done)
  )

  (:durative-action put_on_shirt
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (put_on_shirt_pending))
    :effect (and (at start (not (put_on_shirt_pending))) (at end (put_on_shirt_done)))
  )

  (:durative-action put_on_underwear
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (put_on_underwear_pending))
    :effect (and (at start (not (put_on_underwear_pending))) (at end (put_on_underwear_done)))
  )

  (:durative-action put_on_pants
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (put_on_pants_pending)) (at start (put_on_shirt_done)) (at start (put_on_underwear_done)))
    :effect (and (at start (not (put_on_pants_pending))) (at end (put_on_pants_done)))
  )

  (:durative-action check_appearance
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (check_appearance_pending)) (at start (put_on_pants_done)) (at start (put_on_shoes_done)))
    :effect (and (at start (not (check_appearance_pending))) (at end (check_appearance_done)))
  )

  (:durative-action put_on_socks
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (put_on_socks_pending))
    :effect (and (at start (not (put_on_socks_pending))) (at end (put_on_socks_done)))
  )

  (:durative-action put_on_shoes
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (put_on_shoes_pending)) (at start (put_on_socks_done)))
    :effect (and (at start (not (put_on_shoes_pending))) (at end (put_on_shoes_done)))
  )
)
