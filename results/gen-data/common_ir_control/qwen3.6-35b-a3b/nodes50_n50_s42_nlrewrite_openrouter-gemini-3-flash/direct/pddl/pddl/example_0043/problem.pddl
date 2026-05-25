(define (problem renovation_shift_prob)
  (:domain renovation_shift)
  (:objects step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
            step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
            step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
            step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
            step41 step42 step43 step44 step45 step46 step47 step48 step49 step50 - step)
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
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done)
    (step16_done) (step17_done) (step18_done) (step19_done) (step20_done)
    (step21_done) (step22_done) (step23_done) (step24_done) (step25_done)
    (step26_done) (step27_done) (step28_done) (step29_done) (step30_done)
    (step31_done) (step32_done) (step33_done) (step34_done) (step35_done)
    (step36_done) (step37_done) (step38_done) (step39_done) (step40_done)
    (step41_done) (step42_done) (step43_done) (step44_done) (step45_done)
    (step46_done) (step47_done) (step48_done) (step49_done) (step50_done)))
)