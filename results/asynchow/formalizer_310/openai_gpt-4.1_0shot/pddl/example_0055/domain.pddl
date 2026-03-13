(define (domain earn_money_online)
  (:requirements :durative-actions)
  (:predicates
    (research_methods_pending)
    (research_methods_done)
    (signup_websites_pending)
    (signup_websites_done)
    (mturk_verification_pending)
    (mturk_verification_done)
    (mturk_approval_pending)
    (mturk_approval_done)
    (browse_hits_pending)
    (browse_hits_done)
    (complete_tasks_pending)
    (complete_tasks_done)
  )

  (:durative-action research_methods
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (research_methods_pending))
    :effect (and (at start (not (research_methods_pending))) (at end (research_methods_done)))
  )

  (:durative-action signup_websites
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (signup_websites_pending)) (at start (research_methods_done)))
    :effect (and (at start (not (signup_websites_pending))) (at end (signup_websites_done)))
  )

  (:durative-action mturk_verification
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (mturk_verification_pending)) (at start (research_methods_done)))
    :effect (and (at start (not (mturk_verification_pending))) (at end (mturk_verification_done)))
  )

  (:durative-action mturk_approval
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (mturk_approval_pending)) (at start (mturk_verification_done)))
    :effect (and (at start (not (mturk_approval_pending))) (at end (mturk_approval_done)))
  )

  (:durative-action browse_hits
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (browse_hits_pending)) (at start (mturk_approval_done)))
    :effect (and (at start (not (browse_hits_pending))) (at end (browse_hits_done)))
  )

  (:durative-action complete_tasks
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (complete_tasks_pending)) (at start (browse_hits_done)))
    :effect (and (at start (not (complete_tasks_pending))) (at end (complete_tasks_done)))
  )
)
