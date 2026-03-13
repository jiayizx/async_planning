(define (domain write-paper)
  (:requirements :durative-actions)
  (:predicates
    (calm_pending) (calm_done)
    (read_pending) (read_done)
    (research_pending) (research_done)
    (find_pending) (find_done)
    (pick_pending) (pick_done)
  )

  (:durative-action do_calm
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (calm_pending))
    :effect (and
      (at start (not (calm_pending)))
      (at end (calm_done))
    )
  )

  (:durative-action do_read
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (read_pending))
    :effect (and
      (at start (not (read_pending)))
      (at end (read_done))
    )
  )

  (:durative-action do_research
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (research_pending)) (at start (read_done)))
    :effect (and
      (at start (not (research_pending)))
      (at end (research_done))
    )
  )

  (:durative-action do_find_sources
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (find_pending)) (at start (research_done)))
    :effect (and
      (at start (not (find_pending)))
      (at end (find_done))
    )
  )

  (:durative-action do_pick_evidence
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (pick_pending)) (at start (find_done)))
    :effect (and
      (at start (not (pick_pending)))
      (at end (pick_done))
    )
  )
)
