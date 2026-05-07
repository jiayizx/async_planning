(define (problem makeover_problem)
  (:domain filecabinet_makeover)
  (:objects step1 step2 step3 step4 step5 step6 - step)

  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
  )

  ;; Goal: all steps done AND final semantic predicate (decorate_done)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (decorate_done)
  ))
)
