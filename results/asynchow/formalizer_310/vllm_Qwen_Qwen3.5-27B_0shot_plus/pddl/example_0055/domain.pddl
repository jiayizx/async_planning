(define (domain online_money_earning)
  (:requirements :durative-actions)
  
  (:predicates
    (research_pending)
    (research_done)
    (signup_pending)
    (signup_done)
    (verify_pending)
    (verify_done)
    (wait_approval_pending)
    (wait_approval_done)
    (browse_pending)
    (browse_done)
    (complete_pending)
    (complete_done)
  )

  (:durative-action do_research
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (research_pending))
    :effect (and (at start (not (research_pending))) (at end (research_done)))
  )

  (:durative-action do_signup
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (signup_pending)) (at start (research_done)))
    :effect (and (at start (not (signup_pending))) (at end (signup_done)))
  )

  (:durative-action do_verify
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (verify_pending)) (at start (research_done)))
    :effect (and (at start (not (verify_pending))) (at end (verify_done)))
  )

  (:durative-action do_wait_approval
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (wait_approval_pending)) (at start (verify_done)))
    :effect (and (at start (not (wait_approval_pending))) (at end (wait_approval_done)))
  )

  (:durative-action do_browse
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (browse_pending)) (at start (wait_approval_done)))
    :effect (and (at start (not (browse_pending))) (at end (browse_done)))
  )

  (:durative-action do_complete
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (complete_pending)) (at start (browse_done)))
    :effect (and (at start (not (complete_pending))) (at end (complete_done)))
  )
)