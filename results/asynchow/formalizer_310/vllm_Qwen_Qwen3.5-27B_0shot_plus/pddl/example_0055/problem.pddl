(define (problem earn_money_online)
  (:domain online_money_earning)
  
  (:init
    (research_pending)
    (signup_pending)
    (verify_pending)
    (wait_approval_pending)
    (browse_pending)
    (complete_pending)
  )

  (:goal (and
    (research_done)
    (signup_done)
    (verify_done)
    (wait_approval_done)
    (browse_done)
    (complete_done)
  ))
)