(define (problem kill-weeds-vinegar-prob)
  (:domain kill-weeds-vinegar)
  (:objects step1 step2 step3 - step)

  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )

  ;; Goal requires all steps done and both final semantic predicates (both leaves)
  (:goal (and (step_done step1) (step_done step2) (step_done step3) (soap_done) (salt_done)))
)
