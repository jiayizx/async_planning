(define (problem learn-poker-problem)
  (:domain learn-poker)
  (:objects step1 step2 step3 step4 step5 step6 - step)

  (:init
    ;; all steps are initially pending (per rule 7)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
  )

  ;; Goal requires all steps done AND the final semantic predicate finished6
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (finished6)
  ))
)
