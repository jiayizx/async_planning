(define (domain write_paper)
  (:requirements :durative-actions)
  
  (:predicates
    (calm_down_pending)
    (calm_down_done)
    (read_guidelines_pending)
    (read_guidelines_done)
    (research_topic_pending)
    (research_topic_done)
    (find_sources_pending)
    (find_sources_done)
    (pick_evidence_pending)
    (pick_evidence_done)
  )

  (:durative-action calm_down
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (calm_down_pending))
    :effect (and (at start (not (calm_down_pending))) (at end (calm_down_done)))
  )

  (:durative-action read_guidelines
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (read_guidelines_pending))
    :effect (and (at start (not (read_guidelines_pending))) (at end (read_guidelines_done)))
  )

  (:durative-action research_topic
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (research_topic_pending)) (at start (read_guidelines_done)))
    :effect (and (at start (not (research_topic_pending))) (at end (research_topic_done)))
  )

  (:durative-action find_sources
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (find_sources_pending)) (at start (research_topic_done)))
    :effect (and (at start (not (find_sources_pending))) (at end (find_sources_done)))
  )

  (:durative-action pick_evidence
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (pick_evidence_pending)) (at start (find_sources_done)))
    :effect (and (at start (not (pick_evidence_pending))) (at end (pick_evidence_done)))
  )
)
