(define (problem take-measurements-women-prob)
  (:domain take-measurements-women)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 - step
  )
  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
  )
  ;; Goal: all steps done and include final semantic predicate
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)
    (half_girth_measurement_done)
  ))
)
