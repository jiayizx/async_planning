(define (domain film-learning)
  (:requirements :durative-actions)
  (:predicates
    (decide_area_pending)
    (decide_area_done)
    (research_online_pending)
    (research_online_done)
    (go_library_pending)
    (go_library_done)
    (read_research_pending)
    (read_research_done)
    (enjoy_respect_pending)
    (enjoy_respect_done)
  )

  (:durative-action decide_area
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (decide_area_pending))
    :effect (and (at start (not (decide_area_pending))) (at end (decide_area_done)))
  )

  (:durative-action research_online
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (research_online_pending)) (at start (decide_area_done)))
    :effect (and (at start (not (research_online_pending))) (at end (research_online_done)))
  )

  (:durative-action go_library
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (go_library_pending)) (at start (decide_area_done)))
    :effect (and (at start (not (go_library_pending))) (at end (go_library_done)))
  )

  (:durative-action read_research
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (read_research_pending)) (at start (research_online_done)) (at start (go_library_done)))
    :effect (and (at start (not (read_research_pending))) (at end (read_research_done)))
  )

  (:durative-action enjoy_respect
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (enjoy_respect_pending)) (at start (read_research_done)))
    :effect (and (at start (not (enjoy_respect_pending))) (at end (enjoy_respect_done)))
  )
)
