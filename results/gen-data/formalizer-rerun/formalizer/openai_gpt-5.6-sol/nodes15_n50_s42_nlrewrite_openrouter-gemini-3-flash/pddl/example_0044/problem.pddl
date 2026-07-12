(define (problem choose-kitchen-lighting)
  (:domain kitchen-lighting)
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
    step11 - step11_type
    step12 - step12_type
    step13 - step13_type
    step14 - step14_type
    step15 - step15_type)
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
    (step_pending step11)
    (step_pending step12)
    (step_pending step13)
    (step_pending step14)
    (step_pending step15))
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
    (step_done step11)
    (step_done step12)
    (step_done step13)
    (step_done step14)
    (step_done step15)
    (mood_board_created)))
)