(define (problem fix_chip_instance)
  (:domain fix_chip_quartz)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; all steps pending initially
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: all steps done AND final semantic predicate (filed) to enforce full causal chain
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (filed)
  ))
)
