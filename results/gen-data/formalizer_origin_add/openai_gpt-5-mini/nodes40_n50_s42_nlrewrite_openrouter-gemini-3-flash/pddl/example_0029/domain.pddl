(define (domain identify-chartreux)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
    (s11_done)
    (s12_done)
    (s13_done)
    (s14_done)
    (s15_done)
    (s16_done)
    (s17_done)
    (s18_done)
    (s19_done)
    (s20_done)
    (s21_done)
    (s22_done)
    (s23_done)
    (s24_done)
    (s25_done)
    (s26_done)
    (s27_done)
    (s28_done)
    (s29_done)
    (s30_done)
    (s31_done)
    (s32_done)
    (s33_done)
    (s34_done)
    (s35_done)
    (s36_done)
    (s37_done)
    (s38_done)
    (s39_done)
    (s40_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done)))
  )

  (:durative-action do_step2
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step2) (s13_done) (s14_done) (s17_done) (s22_done) (s30_done) (s37_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done)))
  )

  (:durative-action do_step3
    :duration (= ?duration 45)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done)))
  )

  (:durative-action do_step4
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step4) (s5_done) (s16_done) (s24_done) (s28_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done)))
  )

  (:durative-action do_step5
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step5) (s24_done) (s28_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done)))
  )

  (:durative-action do_step6
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step6) (s10_done) (s25_done) (s28_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done)))
  )

  (:durative-action do_step7
    :duration (= ?duration 120)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done)))
  )

  (:durative-action do_step8
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step8) (s1_done) (s3_done) (s7_done) (s9_done) (s12_done) (s14_done) (s16_done) (s17_done) (s21_done) (s22_done) (s24_done) (s26_done) (s27_done) (s28_done) (s30_done) (s33_done) (s34_done) (s37_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done)))
  )

  (:durative-action do_step9
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step9) (s5_done) (s7_done) (s12_done) (s24_done) (s26_done) (s28_done) (s33_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done)))
  )

  (:durative-action do_step10
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step10) (s25_done) (s28_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done)))
  )

  (:durative-action do_step11
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step11) (s7_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done)))
  )

  (:durative-action do_step12
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step12) (s5_done) (s7_done) (s24_done) (s26_done) (s28_done) (s33_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done)))
  )

  (:durative-action do_step13
    :duration (= ?duration 300)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done)))
  )

  (:durative-action do_step14
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step14) (s30_done) (s37_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done)))
  )

  (:durative-action do_step15
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step15) (s16_done) (s39_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done)))
  )

  (:durative-action do_step16
    :duration (= ?duration 86400)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done)))
  )

  (:durative-action do_step17
    :duration (= ?duration 120)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done)))
  )

  (:durative-action do_step18
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step18) (s25_done) (s39_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done)))
  )

  (:durative-action do_step19
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step19) (s2_done) (s12_done) (s13_done) (s14_done) (s17_done) (s22_done) (s24_done) (s26_done) (s28_done) (s30_done) (s33_done) (s37_done) (s40_done) (s7_done) (s5_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done)))
  )

  (:durative-action do_step20
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step20) (s1_done) (s3_done) (s5_done) (s12_done) (s13_done) (s16_done) (s24_done) (s26_done) (s28_done) (s31_done) (s34_done) (s36_done) (s39_done) (s40_done) (s7_done) (s33_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done)))
  )

  (:durative-action do_step21
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending step21) (s1_done) (s5_done) (s7_done) (s9_done) (s12_done) (s14_done) (s17_done) (s22_done) (s24_done) (s26_done) (s27_done) (s28_done) (s30_done) (s33_done) (s37_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done)))
  )

  (:durative-action do_step22
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step22) (s17_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done)))
  )

  (:durative-action do_step23
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step23) (s5_done) (s7_done) (s12_done) (s24_done) (s26_done) (s28_done) (s33_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done)))
  )

  (:durative-action do_step24
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step24) (s28_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done)))
  )

  (:durative-action do_step25
    :duration (= ?duration 60)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done)))
  )

  (:durative-action do_step26
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step26) (s5_done) (s24_done) (s28_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done)))
  )

  (:durative-action do_step27
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step27) (s17_done) (s22_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done)))
  )

  (:durative-action do_step28
    :duration (= ?duration 1200)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done)))
  )

  (:durative-action do_step29
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step29) (s16_done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done)))
  )

  (:durative-action do_step30
    :duration (= ?duration 900)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done)))
  )

  (:durative-action do_step31
    :duration (= ?duration 60)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_done)))
  )

  (:durative-action do_step32
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step32) (s2_done) (s5_done) (s7_done) (s12_done) (s17_done) (s19_done) (s22_done) (s24_done) (s26_done) (s28_done) (s33_done) (s40_done) (s13_done) (s14_done) (s30_done) (s37_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_done)))
  )

  (:durative-action do_step33
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step33) (s28_done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_done)))
  )

  (:durative-action do_step34
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step34) (s5_done) (s17_done) (s24_done) (s28_done) (s31_done) (s39_done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_done)))
  )

  (:durative-action do_step35
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step35) (s2_done) (s15_done) (s13_done) (s14_done) (s16_done) (s17_done) (s22_done) (s30_done) (s37_done) (s39_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_done)))
  )

  (:durative-action do_step36
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step36) (s5_done) (s12_done) (s13_done) (s17_done) (s24_done) (s26_done) (s28_done) (s31_done) (s34_done) (s39_done) (s40_done) (s33_done) (s7_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_done)))
  )

  (:durative-action do_step37
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step37) (s30_done)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_done)))
  )

  (:durative-action do_step38
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step38) (s7_done)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_done)))
  )

  (:durative-action do_step39
    :duration (= ?duration 300)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_done)))
  )

  (:durative-action do_step40
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step40) (s5_done) (s7_done) (s12_done) (s13_done) (s24_done) (s26_done) (s28_done) (s33_done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_done)))
  )
)
