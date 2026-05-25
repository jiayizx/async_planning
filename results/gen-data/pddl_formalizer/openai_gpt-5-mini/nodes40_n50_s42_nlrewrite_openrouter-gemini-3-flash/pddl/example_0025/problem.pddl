(define (problem improve-soccer-game-problem)
  (:domain improve-soccer-game)
  ;; Declare exactly 40 step objects as required
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40 - step
  )
  (:init
    ; all pending predicates initialized true
    (step_pending_1) (step_pending_2) (step_pending_3) (step_pending_4) (step_pending_5)
    (step_pending_6) (step_pending_7) (step_pending_8) (step_pending_9) (step_pending_10)
    (step_pending_11) (step_pending_12) (step_pending_13) (step_pending_14) (step_pending_15)
    (step_pending_16) (step_pending_17) (step_pending_18) (step_pending_19) (step_pending_20)
    (step_pending_21) (step_pending_22) (step_pending_23) (step_pending_24) (step_pending_25)
    (step_pending_26) (step_pending_27) (step_pending_28) (step_pending_29) (step_pending_30)
    (step_pending_31) (step_pending_32) (step_pending_33) (step_pending_34) (step_pending_35)
    (step_pending_36) (step_pending_37) (step_pending_38) (step_pending_39) (step_pending_40)
  )
  (:goal (and
    ; require every step done
    (step_done_1) (step_done_2) (step_done_3) (step_done_4) (step_done_5)
    (step_done_6) (step_done_7) (step_done_8) (step_done_9) (step_done_10)
    (step_done_11) (step_done_12) (step_done_13) (step_done_14) (step_done_15)
    (step_done_16) (step_done_17) (step_done_18) (step_done_19) (step_done_20)
    (step_done_21) (step_done_22) (step_done_23) (step_done_24) (step_done_25)
    (step_done_26) (step_done_27) (step_done_28) (step_done_29) (step_done_30)
    (step_done_31) (step_done_32) (step_done_33) (step_done_34) (step_done_35)
    (step_done_36) (step_done_37) (step_done_38) (step_done_39) (step_done_40)
    ; final semantic predicate required to enforce full causal chain
    (completed-19)
  ))
)
