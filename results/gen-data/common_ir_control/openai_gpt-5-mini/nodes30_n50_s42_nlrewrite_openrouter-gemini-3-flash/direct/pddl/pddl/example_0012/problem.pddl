(define (problem cog_plan)
  (:domain center_of_gravity)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30 - step
  )

  (:init
    (pending step1) (pending step2) (pending step3) (pending step4) (pending step5)
    (pending step6) (pending step7) (pending step8) (pending step9) (pending step10)
    (pending step11) (pending step12) (pending step13) (pending step14) (pending step15)
    (pending step16) (pending step17) (pending step18) (pending step19) (pending step20)
    (pending step21) (pending step22) (pending step23) (pending step24) (pending step25)
    (pending step26) (pending step27) (pending step28) (pending step29) (pending step30)
  )

  (:goal (and
    (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5)
    (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
    (step_done step11) (step_done step12) (step_done step13) (step_done step14) (step_done step15)
    (step_done step16) (step_done step17) (step_done step18) (step_done step19) (step_done step20)
    (step_done step21) (step_done step22) (step_done step23) (step_done step24) (step_done step25)
    (step_done step26) (step_done step27) (step_done step28) (step_done step29) (step_done step30)
    (done_s30)
  ))
)
