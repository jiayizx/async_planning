(define (problem whelp-problem)
  (:domain whelp-domain)
  (:init
    (step_pending_step1) (step_pending_step2) (step_pending_step3)
  )
  (:goal (and
    (step_done_step1) (step_done_step2) (step_done_step3)
    (prepare_done) (line_done) (heat_lamp_done)
  ))
)