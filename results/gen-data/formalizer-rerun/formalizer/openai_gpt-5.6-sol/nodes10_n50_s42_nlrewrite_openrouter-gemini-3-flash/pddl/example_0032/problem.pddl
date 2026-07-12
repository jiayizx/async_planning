(define (problem get-new-camera)
  (:domain new-camera)

  (:objects
    step1 - step1_type
    step2 - step2_type
    step3 - step3_type
    step4 - step4_type
    step5 - step5_type
    step6 - step6_type
    step7 - step7_type
    step8 - step8_type
    step9 - step9_type
    step10 - step10_type
  )

  (:init
    (step_pending step1)
    (step_pending step2)
    (step_pending step3)
    (step_pending step4)
    (step_pending step5)
    (step_pending step6)
    (step_pending step7)
    (step_pending step8)
    (step_pending step9)
    (step_pending step10)
  )

  (:goal (and
    (step_done step1)
    (step_done step2)
    (step_done step3)
    (step_done step4)
    (step_done step5)
    (step_done step6)
    (step_done step7)
    (step_done step8)
    (step_done step9)
    (step_done step10)
    (equipment_tested)
  ))

  (:metric minimize (total-time))
)