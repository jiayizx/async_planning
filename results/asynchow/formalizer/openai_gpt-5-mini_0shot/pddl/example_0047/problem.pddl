(define (problem try_hairstyle_prob)
  (:domain try_hairstyle)

  (:objects
    step1 step2 step3 step4 step5 step6 - step
  )

  (:init
    ;; all steps are initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)

    ;; bind identity predicates so each action can only operate on its intended step
    (is_step1 step1)
    (is_step2 step2)
    (is_step3 step3)
    (is_step4 step4)
    (is_step5 step5)
    (is_step6 step6)
  )

  ;; Goal: all steps done AND the final semantic predicate (show_done) true
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (show_done)
  ))
)
