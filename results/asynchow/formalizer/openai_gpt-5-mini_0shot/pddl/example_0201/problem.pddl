(define (problem clean_limestone_fireplace)
  (:domain clean_fireplace)
  (:objects step1 step2 step3 step4 - step)

  (:init
    ;; All steps start pending (rule: initialize all pending predicates true)
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )

  ;; Goal: all steps completed AND the final semantic predicate (s3_done)
  (:goal (and
            (step_done step1)
            (step_done step2)
            (step_done step3)
            (step_done step4)
            (s3_done)
         ))
)
