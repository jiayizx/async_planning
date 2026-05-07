(define (problem rat_care_problem)
  (:domain rat_care)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
    step41 step42 step43 step44 step45 step46 step47 step48 step49 step50 - step
  )
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
    (is_s1 step1) (is_s2 step2) (is_s3 step3) (is_s4 step4) (is_s5 step5)
    (is_s6 step6) (is_s7 step7) (is_s8 step8) (is_s9 step9) (is_s10 step10)
    (is_s11 step11) (is_s12 step12) (is_s13 step13) (is_s14 step14) (is_s15 step15)
    (is_s16 step16) (is_s17 step17) (is_s18 step18) (is_s19 step19) (is_s20 step20)
    (is_s21 step21) (is_s22 step22) (is_s23 step23) (is_s24 step24) (is_s25 step25)
    (is_s26 step26) (is_s27 step27) (is_s28 step28) (is_s29 step29) (is_s30 step30)
    (is_s31 step31) (is_s32 step32) (is_s33 step33) (is_s34 step34) (is_s35 step35)
    (is_s36 step36) (is_s37 step37) (is_s38 step38) (is_s39 step39) (is_s40 step40)
    (is_s41 step41) (is_s42 step42) (is_s43 step43) (is_s44 step44) (is_s45 step45)
    (is_s46 step46) (is_s47 step47) (is_s48 step48) (is_s49 step49) (is_s50 step50)
  )
  (:goal
    (and
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
      (s3_done) (s6_done) (s8_done) (s9_done) (s11_done) (s15_done) (s17_done) (s20_done) (s26_done) (s27_done) (s35_done) (s41_done)
    )
  )
  (:metric minimize (total-time))
)