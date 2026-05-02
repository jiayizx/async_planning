(define (domain learn_film)
  (:requirements :durative-actions)
  (:predicates
    (decide_pending)
    (decide_done)
    (research_pending)
    (research_done)
    (library_pending)
    (library_done)
    (read_pending)
    (read_done)
    (enjoy_pending)
    (enjoy_done)
  )

  (:durative-action do_decide_area
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (decide_pending))
    :effect (and (at start (not (decide_pending))) (at end (decide_done)))
  )

  (:durative-action do_research_online
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (research_pending)) (at start (decide_done)))
    :effect (and (at start (not (research_pending))) (at end (research_done)))
  )

  (:durative-action do_go_library
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (library_pending)) (at start (decide_done)))
    :effect (and (at start (not (library_pending))) (at end (library_done)))
  )

  (:durative-action do_read_research
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (read_pending)) (at start (research_done)) (at start (library_done)))
    :effect (and (at start (not (read_pending))) (at end (read_done)))
  )

  (:durative-action do_enjoy_respect
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (enjoy_pending)) (at start (read_done)))
    :effect (and (at start (not (enjoy_pending))) (at end (enjoy_done)))
  )
)
