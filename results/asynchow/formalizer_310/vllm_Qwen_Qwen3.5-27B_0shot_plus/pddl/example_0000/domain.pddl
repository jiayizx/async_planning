(define (domain impress_girls)
  (:requirements :durative-actions)
  
  (:predicates
    (research_pending)
    (research_done)
    (determine_pending)
    (determine_done)
    (find_location_pending)
    (find_location_done)
    (travel_pending)
    (travel_done)
    (impress_pending)
    (impress_done)
  )

  (:durative-action do_research
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (research_pending))
    :effect (and (at start (not (research_pending))) (at end (research_done)))
  )

  (:durative-action do_determine
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (determine_pending))
    :effect (and (at start (not (determine_pending))) (at end (determine_done)))
  )

  (:durative-action do_find_location
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (find_location_pending)) (at start (determine_done)))
    :effect (and (at start (not (find_location_pending))) (at end (find_location_done)))
  )

  (:durative-action do_travel
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (travel_pending)) (at start (find_location_done)))
    :effect (and (at start (not (travel_pending))) (at end (travel_done)))
  )

  (:durative-action do_impress
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (impress_pending)) (at start (research_done)) (at start (travel_done)))
    :effect (and (at start (not (impress_pending))) (at end (impress_done)))
  )
)
