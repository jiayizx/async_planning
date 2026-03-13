(define (domain performing-career)
  (:requirements :durative-actions)
  (:predicates
    (research_pending)
    (research_done)
    (decide_pending)
    (decide_done)
    (study_pending)
    (study_done)
    (workfree_pending)
    (workfree_done)
    (make_name_pending)
    (make_name_done)
    (agent_pending)
    (agent_done)
  )

  (:durative-action do_research
    :parameters ()
    :duration (= ?duration 432000)
    :condition (at start (research_pending))
    :effect (and (at start (not (research_pending))) (at end (research_done)))
  )

  (:durative-action decide_performance
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (decide_pending)) (at start (research_done)))
    :effect (and (at start (not (decide_pending))) (at end (decide_done)))
  )

  (:durative-action study_with_mentors
    :parameters ()
    :duration (= ?duration 94608000)
    :condition (and (at start (study_pending)) (at start (decide_done)))
    :effect (and (at start (not (study_pending))) (at end (study_done)))
  )

  (:durative-action work_for_free
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (and (at start (workfree_pending)) (at start (decide_done)))
    :effect (and (at start (not (workfree_pending))) (at end (workfree_done)))
  )

  (:durative-action make_a_name
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (and (at start (make_name_pending)) (at start (study_done)) (at start (workfree_done)))
    :effect (and (at start (not (make_name_pending))) (at end (make_name_done)))
  )

  (:durative-action get_agent
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (agent_pending)) (at start (make_name_done)))
    :effect (and (at start (not (agent_pending))) (at end (agent_done)))
  )
)
