(define (domain dentist_boyfriend)
  (:requirements :durative-actions)
  (:predicates
    (let_him_choose_pending)
    (let_him_choose_done)
    (offer_to_make_pending)
    (offer_to_make_done)
    (go_with_him_pending)
    (go_with_him_done)
    (give_music_pending)
    (give_music_done)
  )

  (:durative-action let_him_choose
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (let_him_choose_pending))
    :effect (and (at start (not (let_him_choose_pending))) (at end (let_him_choose_done)))
  )

  (:durative-action offer_to_make
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (offer_to_make_pending)) (at start (let_him_choose_done)))
    :effect (and (at start (not (offer_to_make_pending))) (at end (offer_to_make_done)))
  )

  (:durative-action go_with_him
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (go_with_him_pending)) (at start (offer_to_make_done)))
    :effect (and (at start (not (go_with_him_pending))) (at end (go_with_him_done)))
  )

  (:durative-action give_music
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (give_music_pending))
    :effect (and (at start (not (give_music_pending))) (at end (give_music_done)))
  )
)
