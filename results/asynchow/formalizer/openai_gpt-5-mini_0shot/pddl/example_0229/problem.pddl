(define (problem nfsu2_drift_tuning_prob)
  (:domain nfsu2_drift_tuning)

  (:objects
    step1 step2 step3 step4 step5 - step
  )

  (:init
    ;; All steps start pending (per rule: initialize all pending preds true)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
  )

  ;; Goal: all steps completed AND final semantic predicate (s5_done) to force full chain
  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (s5_done)
  ))
)
