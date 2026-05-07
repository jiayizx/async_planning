(define (problem wii-dialup-problem)
  (:domain wii-dialup)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; All steps start as pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: all steps done AND the final semantic predicate (test_done) to force full causal chain
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (test_done)
  ))
)
