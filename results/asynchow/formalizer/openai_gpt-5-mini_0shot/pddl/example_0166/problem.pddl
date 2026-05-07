(define (problem make_babys_breath_crown)
  (:domain baby_breath_crown)

  (:objects
    step1 step2 step3 step4 - step
  )

  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )

  ;; Goals: all steps done AND the final semantic predicate (tape_done) to enforce the full causal chain
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (tape_done)
         ))
)
