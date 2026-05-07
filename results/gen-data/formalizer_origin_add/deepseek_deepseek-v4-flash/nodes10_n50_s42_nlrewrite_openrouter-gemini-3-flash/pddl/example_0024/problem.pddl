(define (problem kwanzaa_problem)
  (:domain kwanzaa_domain)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 - step
  )
  (:init
    (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4)
    (step_pending step5) (step_pending step6) (step_pending step7) (step_pending step8)
    (step_pending step9) (step_pending step10)
  )
  (:goal (and 
    (completed step1) (completed step2) (completed step3) (completed step4) (completed step5)
    (completed step6) (completed step7) (completed step8) (completed step9) (completed step10)
  ))
)