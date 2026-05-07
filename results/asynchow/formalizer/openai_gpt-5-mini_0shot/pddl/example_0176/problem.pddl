(define (problem lower-androgen-levels-prob)
  (:domain lower-androgen-levels)
  (:objects
    step1 step2 step3 step4 - step
  )

  (:init
    ;; all steps start pending (rule: initialize all pending predicates true)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )

  ;; Goal: require all steps done AND require the semantic outcomes
  ;; This forces the planner to perform step1 before steps 2,3,4
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)

    (tested_done)
    (ocp_consult_done)
    (hypogly_med_done)
    (antiandrogen_consult_done)
  ))
)
