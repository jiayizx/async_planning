(define (problem raise-handlebars-problem)
  (:domain raise-handlebars)

  (:objects
    step1 step2 step3 - step
  )

  (:init
    ;; All steps initially pending (rule 7)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )

  ;; Goal: all steps done AND the final semantic predicate (pos_done) to enforce full causal chain
  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           (pos_done)
         ))
)
