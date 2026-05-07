(define (problem keep-sodium-problem)
  (:domain keep-sodium)
  (:objects step1 step2 step3 - step)
  (:init
    ;; declare steps
    (step step1) (step step2) (step step3)
    ;; all steps start pending
    (step_pending step1) (step_pending step2) (step_pending step3)
    ;; no semantic predicates true initially
  )
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (kept_sodium)
  ))
)
