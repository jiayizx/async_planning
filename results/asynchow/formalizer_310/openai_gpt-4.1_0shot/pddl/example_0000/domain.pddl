(define (domain impress-popular-girls)
  (:requirements :durative-actions)
  (:predicates
    (research_interests_pending)
    (research_interests_done)
    (determine_girls_pending)
    (determine_girls_done)
    (find_location_pending)
    (find_location_done)
    (travel_to_location_pending)
    (travel_to_location_done)
    (impress_girls_pending)
    (impress_girls_done)
  )

  (:durative-action research_interests
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (research_interests_pending))
    :effect (and
      (at start (not (research_interests_pending)))
      (at end (research_interests_done))
    )
  )

  (:durative-action determine_girls
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (determine_girls_pending))
    :effect (and
      (at start (not (determine_girls_pending)))
      (at end (determine_girls_done))
    )
  )

  (:durative-action find_location
    :parameters ()
    :duration (= ?duration 600)
    :condition (and
      (at start (find_location_pending))
      (at start (determine_girls_done))
    )
    :effect (and
      (at start (not (find_location_pending)))
      (at end (find_location_done))
    )
  )

  (:durative-action travel_to_location
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (travel_to_location_pending))
      (at start (find_location_done))
    )
    :effect (and
      (at start (not (travel_to_location_pending)))
      (at end (travel_to_location_done))
    )
  )

  (:durative-action impress_girls
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (impress_girls_pending))
      (at start (research_interests_done))
      (at start (travel_to_location_done))
    )
    :effect (and
      (at start (not (impress_girls_pending)))
      (at end (impress_girls_done))
    )
  )
)
