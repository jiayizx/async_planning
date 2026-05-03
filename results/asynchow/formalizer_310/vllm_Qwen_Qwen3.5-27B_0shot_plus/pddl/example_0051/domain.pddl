(define (domain build_fire)
  (:requirements :durative-actions)
  
  (:predicates
    (find_matches_pending)
    (find_matches_done)
    (find_wood_pending)
    (find_wood_done)
    (place_wood_pending)
    (place_wood_done)
    (tear_newspaper_pending)
    (tear_newspaper_done)
    (ignite_newspaper_pending)
    (ignite_newspaper_done)
  )

  (:durative-action find_matches
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (find_matches_pending))
    :effect (and (at start (not (find_matches_pending)))
                 (at end (find_matches_done)))
  )

  (:durative-action find_wood
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (find_wood_pending))
    :effect (and (at start (not (find_wood_pending)))
                 (at end (find_wood_done)))
  )

  (:durative-action place_wood
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (place_wood_pending))
                    (at start (find_wood_done)))
    :effect (and (at start (not (place_wood_pending)))
                 (at end (place_wood_done)))
  )

  (:durative-action tear_newspaper
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (tear_newspaper_pending))
                    (at start (place_wood_done)))
    :effect (and (at start (not (tear_newspaper_pending)))
                 (at end (tear_newspaper_done)))
  )

  (:durative-action ignite_newspaper
    :parameters ()
    :duration (= ?duration 780)
    :condition (and (at start (ignite_newspaper_pending))
                    (at start (find_matches_done)))
    :effect (and (at start (not (ignite_newspaper_pending)))
                 (at end (ignite_newspaper_done)))
  )
)
