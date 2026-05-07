(define (problem choose_meat_cut_problem)
  (:domain choose_meat_cut)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
    step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
    step51 step52 step53 step54 step55 step56 step57 step58 step59 step60 - step)

  (:init
    ;; all pending
    (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4) (step_pending step5)
    (step_pending step6) (step_pending step7) (step_pending step8) (step_pending step9) (step_pending step10)
    (step_pending step11) (step_pending step12) (step_pending step13) (step_pending step14) (step_pending step15)
    (step_pending step16) (step_pending step17) (step_pending step18) (step_pending step19) (step_pending step20)
    (step_pending step21) (step_pending step22) (step_pending step23) (step_pending step24) (step_pending step25)
    (step_pending step26) (step_pending step27) (step_pending step28) (step_pending step29) (step_pending step30)
    (step_pending step31) (step_pending step32) (step_pending step33) (step_pending step34) (step_pending step35)
    (step_pending step36) (step_pending step37) (step_pending step38) (step_pending step39) (step_pending step40)
    (step_pending step41) (step_pending step42) (step_pending step43) (step_pending step44) (step_pending step45)
    (step_pending step46) (step_pending step47) (step_pending step48) (step_pending step49) (step_pending step50)
    (step_pending step51) (step_pending step52) (step_pending step53) (step_pending step54) (step_pending step55)
    (step_pending step56) (step_pending step57) (step_pending step58) (step_pending step59) (step_pending step60)

    ;; identity bindings: each step object is the unique target for its action
    (step_is_1 step1) (step_is_2 step2) (step_is_3 step3) (step_is_4 step4) (step_is_5 step5)
    (step_is_6 step6) (step_is_7 step7) (step_is_8 step8) (step_is_9 step9) (step_is_10 step10)
    (step_is_11 step11) (step_is_12 step12) (step_is_13 step13) (step_is_14 step14) (step_is_15 step15)
    (step_is_16 step16) (step_is_17 step17) (step_is_18 step18) (step_is_19 step19) (step_is_20 step20)
    (step_is_21 step21) (step_is_22 step22) (step_is_23 step23) (step_is_24 step24) (step_is_25 step25)
    (step_is_26 step26) (step_is_27 step27) (step_is_28 step28) (step_is_29 step29) (step_is_30 step30)
    (step_is_31 step31) (step_is_32 step32) (step_is_33 step33) (step_is_34 step34) (step_is_35 step35)
    (step_is_36 step36) (step_is_37 step37) (step_is_38 step38) (step_is_39 step39) (step_is_40 step40)
    (step_is_41 step41) (step_is_42 step42) (step_is_43 step43) (step_is_44 step44) (step_is_45 step45)
    (step_is_46 step46) (step_is_47 step47) (step_is_48 step48) (step_is_49 step49) (step_is_50 step50)
    (step_is_51 step51) (step_is_52 step52) (step_is_53 step53) (step_is_54 step54) (step_is_55 step55)
    (step_is_56 step56) (step_is_57 step57) (step_is_58 step58) (step_is_59 step59) (step_is_60 step60)
  )

  (:goal (and
    ;; all steps done
    (step_done step1) (step_done step2) (step_done step3) (step_done step4) (step_done step5)
    (step_done step6) (step_done step7) (step_done step8) (step_done step9) (step_done step10)
    (step_done step11) (step_done step12) (step_done step13) (step_done step14) (step_done step15)
    (step_done step16) (step_done step17) (step_done step18) (step_done step19) (step_done step20)
    (step_done step21) (step_done step22) (step_done step23) (step_done step24) (step_done step25)
    (step_done step26) (step_done step27) (step_done step28) (step_done step29) (step_done step30)
    (step_done step31) (step_done step32) (step_done step33) (step_done step34) (step_done step35)
    (step_done step36) (step_done step37) (step_done step38) (step_done step39) (step_done step40)
    (step_done step41) (step_done step42) (step_done step43) (step_done step44) (step_done step45)
    (step_done step46) (step_done step47) (step_done step48) (step_done step49) (step_done step50)
    (step_done step51) (step_done step52) (step_done step53) (step_done step54) (step_done step55)
    (step_done step56) (step_done step57) (step_done step58) (step_done step59) (step_done step60)
    ;; final semantic predicate to enforce causal chain culminates in the final choice
    (final_choice)
  ))
)
