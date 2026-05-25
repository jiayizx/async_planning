(define (problem kwanzaa-problem)
  (:domain kwanzaa)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 - step
  )
  (:init
    (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4)
    (step_pending step5) (step_pending step6) (step_pending step7) (step_pending step8)
    (step_pending step9) (step_pending step10)
  )
  (:goal (and
    (finished step1) (finished step2) (finished step3) (finished step4)
    (finished step5) (finished step6) (finished step7) (finished step8)
    (finished step9) (finished step10)
  ))
)