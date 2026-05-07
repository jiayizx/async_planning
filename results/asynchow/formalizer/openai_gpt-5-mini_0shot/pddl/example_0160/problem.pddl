(define (problem react_bumped_flight)
  (:domain bumped_reaction)
  (:objects step1 step2 step3 step4 - step)

  (:init
    ;; all steps are initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )

  ;; Goal: all steps done, and the final semantic predicate (from step4) achieved
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (s4_completed)
  ))
)
