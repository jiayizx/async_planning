(define (problem roast_beef_problem)
  (:domain roast_beef)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 - step
  )

  (:init
    ; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
    (step_pending step8)
    (step_pending step9)
    (step_pending step10)
  )

  (:goal (and
    ; require every step to be done
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)
    (step_done step8)
    (step_done step9)
    (step_done step10)

    ; also require the final semantic predicate (final outcome of the causal chain)
    (s7_complete)
  ))
)
