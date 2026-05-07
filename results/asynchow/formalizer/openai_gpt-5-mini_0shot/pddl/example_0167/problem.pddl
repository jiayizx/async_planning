(define (problem clean_enamel_bathtub_prob)
  (:domain clean_enamel_bathtub)
  (:objects step1 step2 step3 step4 - step)

  (:init
    ;; All steps start as pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )

  ;; Goal: all steps done and include the final semantic predicate of the main chain (rinse_done)
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (rinse_done)
         ))
)
