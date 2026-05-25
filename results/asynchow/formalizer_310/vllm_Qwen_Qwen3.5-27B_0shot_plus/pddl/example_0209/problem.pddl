(define (problem kidney-donor-task)
  (:domain kidney-donor)
  
  (:init
    (recover_pending)
    (manage_pain_pending)
    (prepare_followups_pending)
  )

  (:goal (and
    (recover_done)
    (manage_pain_done)
    (prepare_followups_done)
  ))
)
