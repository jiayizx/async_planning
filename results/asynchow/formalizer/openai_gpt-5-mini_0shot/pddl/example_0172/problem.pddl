(define (problem peel-papaya-problem)
  (:domain peel-papaya)
  (:objects step1 step2 step3 step4 - step)
  (:init
    ;; all steps initially pending
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
  )
  (:goal (and
           (step_done step1)
           (step_done step2)
           (step_done step3)
           (step_done step4)
           ;; ensure final semantic outcome is produced
           (s4_completed)
         ))
)
