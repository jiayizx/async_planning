(define (problem go_to_space_problem)
  (:domain go_to_space)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20 - step
  )
  (:init
    (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4) (step_pending step5)
    (step_pending step6) (step_pending step7) (step_pending step8) (step_pending step9) (step_pending step10)
    (step_pending step11) (step_pending step12) (step_pending step13) (step_pending step14) (step_pending step15)
    (step_pending step16) (step_pending step17) (step_pending step18) (step_pending step19) (step_pending step20)
  )
  (:goal (and
    (completed step1) (completed step2) (completed step3) (completed step4) (completed step5)
    (completed step6) (completed step7) (completed step8) (completed step9) (completed step10)
    (completed step11) (completed step12) (completed step13) (completed step14) (completed step15)
    (completed step16) (completed step17) (completed step18) (completed step19) (completed step20)
  ))
)