(define (problem diagnose-hamster-prob)
  (:domain diagnose-hamster)
  (:objects step1 step2 step3 - step)
  (:init
    ;; all steps initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  ;; Goal: all steps done and final semantic predicate (vet_visit_done) achieved
  (:goal (and (step_done step1) (step_done step2) (step_done step3) (vet_visit_done)))
)
