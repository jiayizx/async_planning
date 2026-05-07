(define (domain performing_career)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (decision_done)
    (mentorship_done)
    (experience_done)
    (reputation_done)
    (agent_secured)
  )

  (:durative-action do_research
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (research_done)))
  )

  (:durative-action decide_performance
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (decision_done)))
  )

  (:durative-action study_mentors
    :parameters (?s - step)
    :duration (= ?duration 94608000)
    :condition (and (at start (step_pending ?s)) (at start (decision_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (mentorship_done)))
  )

  (:durative-action work_for_free
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (decision_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (experience_done)))
  )

  (:durative-action make_name
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (mentorship_done)) (at start (experience_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (reputation_done)))
  )

  (:durative-action get_agent
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (reputation_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (agent_secured)))
  )
)