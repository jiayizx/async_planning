(define (problem tell_if_pregnant_prob)
  (:domain tell_if_pregnant)
  (:objects step1 step2 step3 step4 - step)

  (:init
    ; All steps start as pending (required)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)

    ; Identify which object is which so actions bind correctly
    (is_step1 step1)
    (is_step2 step2)
    (is_step3 step3)
    (is_step4 step4)
  )

  ; Goal: all steps done AND final semantic predicate (fetal_done) to enforce completion of the causal chain
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (fetal_done)
  ))
)
