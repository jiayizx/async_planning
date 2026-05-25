(define (problem hiatal_hernia_problem)
  (:domain hiatal_hernia)
  (:objects step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 - step)
  (:init
    (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4)
    (step_pending step5) (step_pending step6) (step_pending step7) (step_pending step8)
    (step_pending step9) (step_pending step10)
  )
  (:goal (and
    (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5)
    (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
    (done_step1) (done_step2) (done_step3) (done_step4) (done_step5) (done_step6) (done_step7) (done_step8) (done_step9) (done_step10)
  ))
)