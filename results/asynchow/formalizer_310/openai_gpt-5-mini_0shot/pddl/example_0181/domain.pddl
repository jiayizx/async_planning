(define (domain recycle-wood)
  (:requirements :durative-actions)
  (:predicates
    (search_pending)
    (search_done)
    (remove_fasteners_pending)
    (remove_fasteners_done)
    (cut_down_pending)
    (cut_down_done)
    (transport_pending)
    (transport_done)
  )

  (:durative-action do_search_for_recycler
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (search_pending))
    :effect (and
      (at start (not (search_pending)))
      (at end (search_done))
    )
  )

  (:durative-action do_remove_screws_nails
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (remove_fasteners_pending))
    :effect (and
      (at start (not (remove_fasteners_pending)))
      (at end (remove_fasteners_done))
    )
  )

  (:durative-action do_cut_down_large_pieces
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (cut_down_pending))
    :effect (and
      (at start (not (cut_down_pending)))
      (at end (cut_down_done))
    )
  )

  (:durative-action do_transport_or_pickup
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and
      (at start (transport_pending))
      (at start (search_done))
      (at start (remove_fasteners_done))
      (at start (cut_down_done))
    )
    :effect (and
      (at start (not (transport_pending)))
      (at end (transport_done))
    )
  )
)
