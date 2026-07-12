(define (problem baptism-dressing-problem)
  (:domain baptism-dressing)
  (:objects
    step1 - step1type
    step2 - step2type
    step3 - step3type
    step4 - step4type
    step5 - step5type
    step6 - step6type
    step7 - step7type
    step8 - step8type
    step9 - step9type
    step10 - step10type
    step11 - step11type
    step12 - step12type
    step13 - step13type
    step14 - step14type
    step15 - step15type
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
    (step_pending step11)
    (step_pending step12)
    (step_pending step13)
    (step_pending step14)
    (step_pending step15)
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
    (step_done step11)
    (step_done step12)
    (step_done step13)
    (step_done step14)
    (step_done step15)
    (diaper_bag_packed)
  ))
)