(define (problem care-hedgehog-wobbly)
  (:domain hedgehog-care)

  (:objects
    step1 step2 step3 step4 - step
  )

  (:init
    ;; All steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )

  ;; Goal: every step done AND the final semantic predicate (careplan_done)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (careplan_done)
  ))
)
