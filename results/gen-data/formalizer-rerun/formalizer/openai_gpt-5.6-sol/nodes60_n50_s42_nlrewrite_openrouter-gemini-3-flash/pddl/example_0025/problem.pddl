(define (problem select-and-store-custard-apples)
 (:domain custard-apple-storage)
 (:objects
  step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
  step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
  step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
  step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
  step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
  step51 step52 step53 step54 step55 step56 step57 step58 step59 step60 - step)
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
  (step_pending step46) (step_pending step47) (step_pending step48) (step_pending step49) (step_pending step50)
  (step_pending step51) (step_pending step52) (step_pending step53) (step_pending step54) (step_pending step55)
  (step_pending step56) (step_pending step57) (step_pending step58) (step_pending step59) (step_pending step60)
  (r1 step1) (r2 step2) (r3 step3) (r4 step4) (r5 step5) (r6 step6) (r7 step7) (r8 step8) (r9 step9) (r10 step10)
  (r11 step11) (r12 step12) (r13 step13) (r14 step14) (r15 step15) (r16 step16) (r17 step17) (r18 step18) (r19 step19) (r20 step20)
  (r21 step21) (r22 step22) (r23 step23) (r24 step24) (r25 step25) (r26 step26) (r27 step27) (r28 step28) (r29 step29) (r30 step30)
  (r31 step31) (r32 step32) (r33 step33) (r34 step34) (r35 step35) (r36 step36) (r37 step37) (r38 step38) (r39 step39) (r40 step40)
  (r41 step41) (r42 step42) (r43 step43) (r44 step44) (r45 step45) (r46 step46) (r47 step47) (r48 step48) (r49 step49) (r50 step50)
  (r51 step51) (r52 step52) (r53 step53) (r54 step54) (r55 step55) (r56 step56) (r57 step57) (r58 step58) (r59 step59) (r60 step60))
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
  (step_done step51) (step_done step52) (step_done step53) (step_done step54) (step_done step55)
  (step_done step56) (step_done step57) (step_done step58) (step_done step59) (step_done step60)
  (p58)))
 (:metric minimize (total-time))
)