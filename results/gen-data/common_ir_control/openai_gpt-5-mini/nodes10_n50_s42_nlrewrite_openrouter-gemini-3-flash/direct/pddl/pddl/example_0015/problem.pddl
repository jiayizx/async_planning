(define (problem garden_protection_problem)
  (:domain garden_protection)
  (:objects step1 step2 step3 step4 step5 step6 step7 step8 step9 step10 - step)

  (:init
    (pending step1) (pending step2) (pending step3) (pending step4) (pending step5)
    (pending step6) (pending step7) (pending step8) (pending step9) (pending step10)
  )

  (:goal (and
    (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5)
    (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
    (attached_mesh_done)
  ))
)
