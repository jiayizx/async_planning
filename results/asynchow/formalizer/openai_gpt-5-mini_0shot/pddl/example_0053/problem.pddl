(define (problem feel_more_in_touch_prob)
  (:domain feel_more_in_touch)
  (:objects step1 step2 step3 step4 step5 - step)

  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: all steps completed and final semantic predicate (stay_off_electronics_done)
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (stay_off_electronics_done)
  ))
)
