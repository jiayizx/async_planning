(define (domain move_to_ohio)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete)
    (s2_complete)
    (s3_complete)
    (s4_complete)
    (s5_complete)
    (s6_complete)
    (s7_complete)
    (s8_complete)
    (s9_complete)
    (s10_complete)
    (s11_complete)
    (s12_complete)
    (s13_complete)
    (s14_complete)
    (s15_complete)
    (s16_complete)
    (s17_complete)
    (s18_complete)
    (s19_complete)
    (s20_complete)
    (s21_complete)
    (s22_complete)
    (s23_complete)
    (s24_complete)
    (s25_complete)
    (s26_complete)
    (s27_complete)
    (s28_complete)
    (s29_complete)
    (s30_complete)
    (s31_complete)
    (s32_complete)
    (s33_complete)
    (s34_complete)
    (s35_complete)
    (s36_complete)
    (s37_complete)
    (s38_complete)
    (s39_complete)
    (s40_complete)
  )

  (:durative-action do-step1
    :duration (= ?duration 259200)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_complete)))
  )

  (:durative-action do-step2
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step2)) (at start (s4_complete)) (at start (s15_complete)) (at start (s16_complete)) (at start (s22_complete)) (at start (s31_complete)) (at start (s35_complete)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_complete)))
  )

  (:durative-action do-step3
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step3)) (at start (s34_complete)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_complete)))
  )

  (:durative-action do-step4
    :duration (= ?duration 14400)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_complete)))
  )

  (:durative-action do-step5
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step5)) (at start (s13_complete)) (at start (s1_complete)) (at start (s4_complete)) (at start (s12_complete)) (at start (s28_complete)) (at start (s32_complete)) (at start (s2_complete)) (at start (s22_complete)) (at start (s38_complete)) (at start (s16_complete)) (at start (s24_complete)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_complete)))
  )

  (:durative-action do-step6
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step6)) (at start (s4_complete)) (at start (s10_complete)) (at start (s31_complete)) (at start (s12_complete)) (at start (s35_complete)) (at start (s22_complete)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_complete)))
  )

  (:durative-action do-step7
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step7)) (at start (s39_complete)) (at start (s25_complete)) (at start (s33_complete)) (at start (s10_complete)) (at start (s12_complete)) (at start (s28_complete)) (at start (s13_complete)) (at start (s1_complete)) (at start (s4_complete)) (at start (s32_complete)) (at start (s16_complete)) (at start (s24_complete)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_complete)))
  )

  (:durative-action do-step8
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step8)) (at start (s2_complete)) (at start (s15_complete)) (at start (s16_complete)) (at start (s22_complete)) (at start (s31_complete)) (at start (s35_complete)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_complete)))
  )

  (:durative-action do-step9
    :duration (= ?duration 3600)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_complete)))
  )

  (:durative-action do-step10
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step10)) (at start (s12_complete)) (at start (s2_complete)) (at start (s22_complete)) (at start (s38_complete)) (at start (s35_complete)) (at start (s15_complete)) (at start (s16_complete)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_complete)))
  )

  (:durative-action do-step11
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step11)) (at start (s17_complete)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_complete)))
  )

  (:durative-action do-step12
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step12)) (at start (s2_complete)) (at start (s22_complete)) (at start (s31_complete)) (at start (s35_complete)) (at start (s37_complete)) (at start (s4_complete)) (at start (s15_complete)) (at start (s16_complete)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_complete)))
  )

  (:durative-action do-step13
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step13)) (at start (s1_complete)) (at start (s4_complete)) (at start (s12_complete)) (at start (s28_complete)) (at start (s32_complete)) (at start (s2_complete)) (at start (s22_complete)) (at start (s38_complete)) (at start (s16_complete)) (at start (s24_complete)) (at start (s29_complete)) (at start (s31_complete)) (at start (s35_complete)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_complete)))
  )

  (:durative-action do-step14
    :duration (= ?duration 604800)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_complete)))
  )

  (:durative-action do-step15
    :duration (= ?duration 7776000)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_complete)))
  )

  (:durative-action do-step16
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step16)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_complete)))
  )

  (:durative-action do-step17
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step17)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_complete)))
  )

  (:durative-action do-step18
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step18)) (at start (s9_complete)) (at start (s12_complete)) (at start (s2_complete)) (at start (s22_complete)) (at start (s35_complete)) (at start (s15_complete)) (at start (s16_complete)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_complete)))
  )

  (:durative-action do-step19
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step19)) (at start (s1_complete)) (at start (s5_complete)) (at start (s38_complete)) (at start (s13_complete)) (at start (s4_complete)) (at start (s12_complete)) (at start (s28_complete)) (at start (s32_complete)) (at start (s16_complete)) (at start (s24_complete)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_complete)))
  )

  (:durative-action do-step20
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step20)) (at start (s11_complete)) (at start (s17_complete)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_complete)))
  )

  (:durative-action do-step21
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step21)) (at start (s12_complete)) (at start (s2_complete)) (at start (s22_complete)) (at start (s35_complete)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_complete)))
  )

  (:durative-action do-step22
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step22)) (at start (s35_complete)) (at start (s37_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_complete)))
  )

  (:durative-action do-step23
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step23)) (at start (s31_complete)) (at start (s34_complete)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_complete)))
  )

  (:durative-action do-step24
    :duration (= ?duration 172800)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_complete)))
  )

  (:durative-action do-step25
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending step25)) (at start (s33_complete)) (at start (s10_complete)) (at start (s12_complete)) (at start (s35_complete)) (at start (s2_complete)) (at start (s22_complete)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_complete)))
  )

  (:durative-action do-step26
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step26)) (at start (s11_complete)) (at start (s17_complete)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_complete)))
  )

  (:durative-action do-step27
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step27)) (at start (s3_complete)) (at start (s15_complete)) (at start (s34_complete)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_complete)))
  )

  (:durative-action do-step28
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step28)) (at start (s25_complete)) (at start (s33_complete)) (at start (s10_complete)) (at start (s12_complete)) (at start (s35_complete)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_complete)))
  )

  (:durative-action do-step29
    :duration (= ?duration 3600)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_complete)))
  )

  (:durative-action do-step30
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step30)) (at start (s31_complete)) (at start (s35_complete)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_complete)))
  )

  (:durative-action do-step31
    :duration (= ?duration 14400)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_complete)))
  )

  (:durative-action do-step32
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step32)) (at start (s16_complete)) (at start (s24_complete)) (at start (s29_complete)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_complete)))
  )

  (:durative-action do-step33
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step33)) (at start (s10_complete)) (at start (s12_complete)) (at start (s35_complete)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_complete)))
  )

  (:durative-action do-step34
    :duration (= ?duration 10800)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_complete)))
  )

  (:durative-action do-step35
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step35)) (at start (s37_complete)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_complete)))
  )

  (:durative-action do-step36
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step36)) (at start (s14_complete)) (at start (s16_complete)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_complete)))
  )

  (:durative-action do-step37
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step37)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_complete)))
  )

  (:durative-action do-step38
    :duration (= ?duration 1200)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_complete)))
  )

  (:durative-action do-step39
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step39)) (at start (s34_complete)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_complete)))
  )

  (:durative-action do-step40
    :duration (= ?duration 36000)
    :condition (and (at start (step_pending step40)) (at start (s39_complete)) (at start (s34_complete)) (at start (s33_complete)) (at start (s10_complete)) (at start (s12_complete)) (at start (s35_complete)) (at start (s2_complete)) (at start (s22_complete)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_complete)))
  )
)
