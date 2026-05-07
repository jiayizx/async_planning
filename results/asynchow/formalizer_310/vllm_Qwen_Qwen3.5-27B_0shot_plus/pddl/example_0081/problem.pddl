(define (problem vacation_task)
  (:domain vacation_planning)
  
  (:init
    (research_pending)
    (budget_pending)
    (invite_pending)
    (split_pending)
    (meet_pending)
  )

  (:goal (and
    (research_done)
    (budget_done)
    (invite_done)
    (split_done)
    (meet_done)
  ))
)
