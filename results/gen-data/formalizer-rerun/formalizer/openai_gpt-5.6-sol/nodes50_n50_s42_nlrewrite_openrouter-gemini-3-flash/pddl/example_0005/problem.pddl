(define (problem fry-dandelions-problem)
 (:domain fry-dandelions)
 (:objects
  step1 - st1 step2 - st2 step3 - st3 step4 - st4 step5 - st5
  step6 - st6 step7 - st7 step8 - st8 step9 - st9 step10 - st10
  step11 - st11 step12 - st12 step13 - st13 step14 - st14 step15 - st15
  step16 - st16 step17 - st17 step18 - st18 step19 - st19 step20 - st20
  step21 - st21 step22 - st22 step23 - st23 step24 - st24 step25 - st25
  step26 - st26 step27 - st27 step28 - st28 step29 - st29 step30 - st30
  step31 - st31 step32 - st32 step33 - st33 step34 - st34 step35 - st35
  step36 - st36 step37 - st37 step38 - st38 step39 - st39 step40 - st40
  step41 - st41 step42 - st42 step43 - st43 step44 - st44 step45 - st45
  step46 - st46 step47 - st47 step48 - st48 step49 - st49 step50 - st50)
 (:init
  (step_pending step1) (step_pending step2) (step_pending step3) (step_pending step4) (step_pending step5)
  (step_pending step6) (step_pending step7) (step_pending step8) (step_pending step9) (step_pending step10)
  (step_pending step11) (step_pending step12) (step_pending step13) (step_pending step14) (step_pending step15)
  (step_pending step16) (step_pending step17) (step_pending step18) (step_pending step19) (step_pending step20)
  (step_pending step21) (step_pending step22) (step_pending step23) (step_pending step24) (step_pending step25)
  (step_pending step26) (step_pending step27) (step_pending step28) (step_pending step29) (step_pending step30)
  (step_pending step31) (step_pending step32) (step_pending step33) (step_pending step34) (step_pending step35)
  (step_pending step36) (step_pending step37) (step_pending step38) (step_pending step39) (step_pending step40)
  (step_pending step41) (step_pending step42) (step_pending step43) (step_pending step44) (step_pending step45)
  (step_pending step46) (step_pending step47) (step_pending step48) (step_pending step49) (step_pending step50))
 (:goal (and
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
  (served_dandelions)))
)