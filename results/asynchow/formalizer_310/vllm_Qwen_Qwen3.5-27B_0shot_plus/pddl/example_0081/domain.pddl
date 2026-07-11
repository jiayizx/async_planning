(define (domain vacation_planning)
  (:requirements :durative-actions)
  
  (:predicates
    (research_pending)
    (research_done)
    (budget_pending)
    (budget_done)
    (invite_pending)
    (invite_done)
    (split_pending)
    (split_done)
    (meet_pending)
    (meet_done)
  )

  (:durative-action do_research
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (research_pending))
    :effect (and (at start (not (research_pending))) (at end (research_done)))
  )

  (:durative-action do_budget
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (budget_pending)) (at start (research_done)))
    :effect (and (at start (not (budget_pending))) (at end (budget_done)))
  )

  (:durative-action do_invite
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (invite_pending)) (at start (budget_done)))
    :effect (and (at start (not (invite_pending))) (at end (invite_done)))
  )

  (:durative-action do_split
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (split_pending)) (at start (budget_done)))
    :effect (and (at start (not (split_pending))) (at end (split_done)))
  )

  (:durative-action do_meet
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (meet_pending)) (at start (invite_done)) (at start (split_done)))
    :effect (and (at start (not (meet_pending))) (at end (meet_done)))
  )
)
