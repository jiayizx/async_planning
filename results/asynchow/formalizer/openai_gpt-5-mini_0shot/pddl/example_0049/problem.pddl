(define (problem play-little-league)
  (:domain little-league)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; All steps start as pending (rule: initialize all pending predicates true)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal requires every step be done AND the final semantic predicate (s4_done)
  ;; so the planner must respect the full causal chain ending with step4
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (step_done step5)
            (s4_done)
         ))
)
