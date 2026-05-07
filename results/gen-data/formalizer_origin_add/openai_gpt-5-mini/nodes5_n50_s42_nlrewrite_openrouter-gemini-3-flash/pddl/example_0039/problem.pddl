(define (problem take-body-measurements)
  (:domain body-measurements)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ; Goal: all steps done and final semantic predicate (recorded_chart) achieved
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (recorded_chart)
  ))
)
