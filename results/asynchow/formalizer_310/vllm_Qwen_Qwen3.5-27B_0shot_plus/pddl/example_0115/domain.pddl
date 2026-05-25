(define (domain backflip_learning)
  (:requirements :durative-actions)
  
  (:predicates
    (search_pending)
    (search_done)
    (watch_pending)
    (watch_done)
    (contact_pending)
    (contact_done)
    (ask_pending)
    (ask_done)
    (book_pending)
    (book_done)
    (follow_pending)
    (follow_done)
    (continue_pending)
    (continue_done)
  )

  (:durative-action do_search
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (search_pending))
    :effect (and (at start (not (search_pending))) (at end (search_done)))
  )

  (:durative-action do_watch
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (watch_pending)) (at start (search_done)))
    :effect (and (at start (not (watch_pending))) (at end (watch_done)))
  )

  (:durative-action do_contact
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (contact_pending)) (at start (watch_done)))
    :effect (and (at start (not (contact_pending))) (at end (contact_done)))
  )

  (:durative-action do_ask
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (ask_pending)) (at start (contact_done)))
    :effect (and (at start (not (ask_pending))) (at end (ask_done)))
  )

  (:durative-action do_book
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (book_pending)) (at start (contact_done)))
    :effect (and (at start (not (book_pending))) (at end (book_done)))
  )

  (:durative-action do_follow
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (follow_pending)) (at start (ask_done)) (at start (book_done)))
    :effect (and (at start (not (follow_pending))) (at end (follow_done)))
  )

  (:durative-action do_continue
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (continue_pending)) (at start (follow_done)))
    :effect (and (at start (not (continue_pending))) (at end (continue_done)))
  )
)
