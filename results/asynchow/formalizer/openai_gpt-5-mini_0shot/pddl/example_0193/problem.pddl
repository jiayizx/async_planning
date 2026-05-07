(define (problem cure_rash_problem)
  (:domain cure_rash)
  (:objects step1 step2 step3 step4 - step)
  (:init
    ;; all steps are initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    ;; no semantic predicates true at start
  )
  ;; Goal: every step completed AND the final semantic outcome (antifungal tried)
  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           (step_done step4)
           (antifungal_tried_done)
         ))
)
