(define (domain count-to-ten-finnish)
  (:requirements :durative-actions)
  (:predicates
    (lookup_pending)
    (lookup_done)
    (record_pending)
    (record_done)
    (listen_pending)
    (listen_done)
    (memorize_pending)
    (memorize_done)
    (flashcards_pending)
    (flashcards_done)
  )

  (:durative-action do_lookup
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (lookup_pending))
    :effect (and (at start (not (lookup_pending))) (at end (lookup_done)))
  )

  (:durative-action do_record
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (record_pending)) (at start (memorize_done)))
    :effect (and (at start (not (record_pending))) (at end (record_done)))
  )

  (:durative-action do_listen
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (listen_pending)) (at start (record_done)))
    :effect (and (at start (not (listen_pending))) (at end (listen_done)))
  )

  (:durative-action do_memorize
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (memorize_pending)) (at start (lookup_done)))
    :effect (and (at start (not (memorize_pending))) (at end (memorize_done)))
  )

  (:durative-action do_flashcards
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (flashcards_pending)) (at start (lookup_done)))
    :effect (and (at start (not (flashcards_pending))) (at end (flashcards_done)))
  )
)
