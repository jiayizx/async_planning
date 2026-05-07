(define (problem signup-problem)
  (:domain little-league-signup)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
    step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
    step51 step52 step53 step54 step55 step56 step57 step58 step59 step60 - step
  )

  (:init
    ; All steps initially pending (required by CRITICAL RULE 7)
    (step-pending step1) (step-pending step2) (step-pending step3) (step-pending step4) (step-pending step5)
    (step-pending step6) (step-pending step7) (step-pending step8) (step-pending step9) (step-pending step10)
    (step-pending step11) (step-pending step12) (step-pending step13) (step-pending step14) (step-pending step15)
    (step-pending step16) (step-pending step17) (step-pending step18) (step-pending step19) (step-pending step20)
    (step-pending step21) (step-pending step22) (step-pending step23) (step-pending step24) (step-pending step25)
    (step-pending step26) (step-pending step27) (step-pending step28) (step-pending step29) (step-pending step30)
    (step-pending step31) (step-pending step32) (step-pending step33) (step-pending step34) (step-pending step35)
    (step-pending step36) (step-pending step37) (step-pending step38) (step-pending step39) (step-pending step40)
    (step-pending step41) (step-pending step42) (step-pending step43) (step-pending step44) (step-pending step45)
    (step-pending step46) (step-pending step47) (step-pending step48) (step-pending step49) (step-pending step50)
    (step-pending step51) (step-pending step52) (step-pending step53) (step-pending step54) (step-pending step55)
    (step-pending step56) (step-pending step57) (step-pending step58) (step-pending step59) (step-pending step60)
  )

  (:goal (and
    (step-done step1) (step-done step2) (step-done step3) (step-done step4) (step-done step5)
    (step-done step6) (step-done step7) (step-done step8) (step-done step9) (step-done step10)
    (step-done step11) (step-done step12) (step-done step13) (step-done step14) (step-done step15)
    (step-done step16) (step-done step17) (step-done step18) (step-done step19) (step-done step20)
    (step-done step21) (step-done step22) (step-done step23) (step-done step24) (step-done step25)
    (step-done step26) (step-done step27) (step-done step28) (step-done step29) (step-done step30)
    (step-done step31) (step-done step32) (step-done step33) (step-done step34) (step-done step35)
    (step-done step36) (step-done step37) (step-done step38) (step-done step39) (step-done step40)
    (step-done step41) (step-done step42) (step-done step43) (step-done step44) (step-done step45)
    (step-done step46) (step-done step47) (step-done step48) (step-done step49) (step-done step50)
    (step-done step51) (step-done step52) (step-done step53) (step-done step54) (step-done step55)
    (step-done step56) (step-done step57) (step-done step58) (step-done step59) (step-done step60)
    ; enforce the full causal chain by including the final semantic predicate (outcome of the last step in chain)
    (p1_done)
  ))
)
