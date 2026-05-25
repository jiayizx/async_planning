(define (problem knit_blanket_problem)
  (:domain knit_blanket)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 - step)

  (:init
    ;; all steps start pending
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

  ;; Goal: require completion of every step, and include the final semantic predicate
  ;; (we include p10_done as the final semantic predicate in addition to all step_done facts)
  (:goal (and
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
    (p10_done)
  ))
)
