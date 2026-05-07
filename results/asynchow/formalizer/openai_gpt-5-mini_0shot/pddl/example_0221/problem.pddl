(define (problem annualize-quarterly-problem)
  (:domain annualize-quarterly)
  (:objects step1 step2 step3 - step)
  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )
  ;; Goal requires all steps completed and the final semantic predicate produced by the
  ;; designated final step (annualized produced by step3). With infinite parallel resources
  ;; the makespan equals the critical path: max(duration(step3), duration(step1)+duration(step2)).
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (annualized)
  ))
)
