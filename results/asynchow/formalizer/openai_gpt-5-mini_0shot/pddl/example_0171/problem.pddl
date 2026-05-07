(define (problem diagnose-shih-tzu)
  (:domain diagnose-patellar-luxation)
  (:objects step1 step2 step3 step4 - step)
  (:init
    ; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  ; Goals: all steps done and include the final semantic predicate to prevent illegal shortcuts
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (manage_done)
  ))
)
