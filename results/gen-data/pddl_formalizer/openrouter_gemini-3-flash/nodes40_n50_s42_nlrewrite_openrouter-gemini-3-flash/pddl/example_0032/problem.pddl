(define (problem dinner_problem)
  (:domain dinner_prep)
  (:objects
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40 - step
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
  )
  (:goal
    (and
      (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
      (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
      (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
      (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
      (s21_done) (s22_done) (s23_done) (s24_done) (s25_done)
      (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
      (s31_done) (s32_done) (s33_done) (s34_done) (s35_done)
      (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
    )
  )
)
