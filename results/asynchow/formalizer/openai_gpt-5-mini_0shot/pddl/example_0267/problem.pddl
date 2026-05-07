(define (problem read-ear-reflexology-prob)
  (:domain read-ear-reflexology)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    ;; all steps start pending (per rule: initialize all "pending" predicates)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal requires all steps done and the final semantic predicate (s5_done)
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (step_done step5)
            (s5_done)
          )
  )
)
