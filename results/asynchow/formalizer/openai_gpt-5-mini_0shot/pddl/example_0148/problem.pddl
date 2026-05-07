(define (problem charge_bmw_key_prob)
  (:domain charge_bmw_key)
  (:objects step1 step2 step3 - step)

  (:init
    ;; all steps start pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
  )

  ;; Goal requires all steps done and the final semantic predicate (led_done)
  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           (led_done)
         ))
)
