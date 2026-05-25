(define (problem jacket_size_problem)
  (:domain jacket_measurement)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30 - step
  )
  (:init
    (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4) (step_pending step5)
    (step_pending step6) (step_pending step7) (step_pending step8) (step_pending step9) (step_pending step10)
    (step_pending step11) (step_pending step12) (step_pending step13) (step_pending step14) (step_pending step15)
    (step_pending step16) (step_pending step17) (step_pending step18) (step_pending step19) (step_pending step20)
    (step_pending step21) (step_pending step22) (step_pending step23) (step_pending step24) (step_pending step25)
    (step_pending step26) (step_pending step27) (step_pending step28) (step_pending step29) (step_pending step30)
  )
  (:goal
    (and
      (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5)
      (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
      (step_done step11) (step_done step12) (step_done step13) (step_done step14) (step_done step15)
      (step_done step16) (step_done step17) (step_done step18) (step_done step19) (step_done step20)
      (step_done step21) (step_done step22) (step_done step23) (step_done step24) (step_done step25)
      (step_done step26) (step_done step27) (step_done step28) (step_done step29) (step_done step30)
      (s5_done) (s22_done) (s25_done) (s15_done) (s16_done) (s7_done)
    )
  )
)