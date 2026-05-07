(define (problem make_coconut_sugar_scrub_problem)
  (:domain make_coconut_sugar_scrub)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 - step
  )
  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
  )
  (:goal (and
    ;; require every step to be done
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)
    ;; require final semantic outcome to ensure full causal chain
    (dried_done)
  ))
)
