(define (domain recycle-wood)
  (:requirements :durative-actions)
  (:predicates
    (search_place_pending)
    (search_place_done)
    (remove_screws_pending)
    (remove_screws_done)
    (cut_wood_pending)
    (cut_wood_done)
    (transport_wood_pending)
    (transport_wood_done)
  )

  (:durative-action search_place
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (search_place_pending))
    :effect (and (at start (not (search_place_pending)))
                 (at end (search_place_done)))
  )

  (:durative-action remove_screws
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (remove_screws_pending))
    :effect (and (at start (not (remove_screws_pending)))
                 (at end (remove_screws_done)))
  )

  (:durative-action cut_wood
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (cut_wood_pending))
    :effect (and (at start (not (cut_wood_pending)))
                 (at end (cut_wood_done)))
  )

  (:durative-action transport_wood
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (transport_wood_pending))
                    (at start (search_place_done))
                    (at start (remove_screws_done))
                    (at start (cut_wood_done)))
    :effect (and (at start (not (transport_wood_pending)))
                 (at end (transport_wood_done)))
  )
)
