(define (problem valentine_planning_problem)
  (:domain valentine_planning)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40 - step
  )
  (:init
    (pending step1) (pending step2) (pending step3) (pending step4) (pending step5)
    (pending step6) (pending step7) (pending step8) (pending step9) (pending step10)
    (pending step11) (pending step12) (pending step13) (pending step14) (pending step15)
    (pending step16) (pending step17) (pending step18) (pending step19) (pending step20)
    (pending step21) (pending step22) (pending step23) (pending step24) (pending step25)
    (pending step26) (pending step27) (pending step28) (pending step29) (pending step30)
    (pending step31) (pending step32) (pending step33) (pending step34) (pending step35)
    (pending step36) (pending step37) (pending step38) (pending step39) (pending step40)
  )
  (:goal (and
    (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5)
    (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
    (step_done step11) (step_done step12) (step_done step13) (step_done step14) (step_done step15)
    (step_done step16) (step_done step17) (step_done step18) (step_done step19) (step_done step20)
    (step_done step21) (step_done step22) (step_done step23) (step_done step24) (step_done step25)
    (step_done step26) (step_done step27) (step_done step28) (step_done step29) (step_done step30)
    (step_done step31) (step_done step32) (step_done step33) (step_done step34) (step_done step35)
    (step_done step36) (step_done step37) (step_done step38) (step_done step39) (step_done step40)
    (accomplished_1) (accomplished_2) (accomplished_3) (accomplished_4) (accomplished_5)
    (accomplished_6) (accomplished_7) (accomplished_8) (accomplished_9) (accomplished_10)
    (accomplished_11) (accomplished_12) (accomplished_13) (accomplished_14) (accomplished_15)
    (accomplished_16) (accomplished_17) (accomplished_18) (accomplished_19) (accomplished_20)
    (accomplished_21) (accomplished_22) (accomplished_23) (accomplished_24) (accomplished_25)
    (accomplished_26) (accomplished_27) (accomplished_28) (accomplished_29) (accomplished_30)
    (accomplished_31) (accomplished_32) (accomplished_33) (accomplished_34) (accomplished_35)
    (accomplished_36) (accomplished_37) (accomplished_38) (accomplished_39) (accomplished_40)
  ))
)