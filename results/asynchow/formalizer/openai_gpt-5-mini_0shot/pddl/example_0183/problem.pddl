(define (problem revise-writing-problem)
  (:domain revise-writing)
  (:objects step1 step2 step3 step4 - step)
  (:init
    (step step1) (step_pending step1)
    (step step2) (step_pending step2)
    (step step3) (step_pending step3)
    (step step4) (step_pending step4)
  )

  ;; Goal: all steps completed AND the FINAL semantic predicate (s3_done)
  ;; s3_done corresponds to the longest successor of step1 (30 min),
  ;; forcing the planner to schedule the critical path: 7200 + 1800 = 9000s.
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (s3_done)
  ))
)
