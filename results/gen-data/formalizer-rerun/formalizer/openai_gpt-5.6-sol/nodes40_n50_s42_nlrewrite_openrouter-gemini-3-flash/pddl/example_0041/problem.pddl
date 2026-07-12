(define (problem make-buckeyes)
  (:domain buckeyes)
  (:objects
    step1 - step1-type
    step2 - step2-type
    step3 - step3-type
    step4 - step4-type
    step5 - step5-type
    step6 - step6-type
    step7 - step7-type
    step8 - step8-type
    step9 - step9-type
    step10 - step10-type
    step11 - step11-type
    step12 - step12-type
    step13 - step13-type
    step14 - step14-type
    step15 - step15-type
    step16 - step16-type
    step17 - step17-type
    step18 - step18-type
    step19 - step19-type
    step20 - step20-type
    step21 - step21-type
    step22 - step22-type
    step23 - step23-type
    step24 - step24-type
    step25 - step25-type
    step26 - step26-type
    step27 - step27-type
    step28 - step28-type
    step29 - step29-type
    step30 - step30-type
    step31 - step31-type
    step32 - step32-type
    step33 - step33-type
    step34 - step34-type
    step35 - step35-type
    step36 - step36-type
    step37 - step37-type
    step38 - step38-type
    step39 - step39-type
    step40 - step40-type
  )
  (:init
    (step_pending step1) (step_pending step2) (step_pending step3)
    (step_pending step4) (step_pending step5) (step_pending step6)
    (step_pending step7) (step_pending step8) (step_pending step9)
    (step_pending step10) (step_pending step11) (step_pending step12)
    (step_pending step13) (step_pending step14) (step_pending step15)
    (step_pending step16) (step_pending step17) (step_pending step18)
    (step_pending step19) (step_pending step20) (step_pending step21)
    (step_pending step22) (step_pending step23) (step_pending step24)
    (step_pending step25) (step_pending step26) (step_pending step27)
    (step_pending step28) (step_pending step29) (step_pending step30)
    (step_pending step31) (step_pending step32) (step_pending step33)
    (step_pending step34) (step_pending step35) (step_pending step36)
    (step_pending step37) (step_pending step38) (step_pending step39)
    (step_pending step40)
  )
  (:goal
    (and
      (step_done step1) (step_done step2) (step_done step3)
      (step_done step4) (step_done step5) (step_done step6)
      (step_done step7) (step_done step8) (step_done step9)
      (step_done step10) (step_done step11) (step_done step12)
      (step_done step13) (step_done step14) (step_done step15)
      (step_done step16) (step_done step17) (step_done step18)
      (step_done step19) (step_done step20) (step_done step21)
      (step_done step22) (step_done step23) (step_done step24)
      (step_done step25) (step_done step26) (step_done step27)
      (step_done step28) (step_done step29) (step_done step30)
      (step_done step31) (step_done step32) (step_done step33)
      (step_done step34) (step_done step35) (step_done step36)
      (step_done step37) (step_done step38) (step_done step39)
      (step_done step40)
      (done40)
    )
  )
  (:metric minimize (total-time))
)