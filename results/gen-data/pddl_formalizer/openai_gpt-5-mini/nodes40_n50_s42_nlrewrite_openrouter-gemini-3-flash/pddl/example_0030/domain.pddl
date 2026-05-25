(define (domain fry-parsley)
  (:requirements :typing :durative-actions)
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

  (:durative-action do-step1
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)) (at start (s19_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done)))
  )

  (:durative-action do-step2
    :duration (= ?duration 60)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done)))
  )

  (:durative-action do-step3
    :duration (= ?duration 180)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done)))
  )

  (:durative-action do-step4
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (s3_done)) (at start (s36_done)) (at start (s39_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done)))
  )

  (:durative-action do-step5
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (s1_done)) (at start (s19_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done)))
  )

  (:durative-action do-step6
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)) (at start (s23_done)) (at start (s30_done)) (at start (s33_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done)))
  )

  (:durative-action do-step7
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (s3_done)) (at start (s40_done)) (at start (s4_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done)))
  )

  (:durative-action do-step8
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step8)) (at start (s9_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done)))
  )

  (:durative-action do-step9
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step9)) (at start (s22_done)) (at start (s40_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done)))
  )

  (:durative-action do-step10
    :duration (= ?duration 120)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done)))
  )

  (:durative-action do-step11
    :duration (= ?duration 60)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done)))
  )

  (:durative-action do-step12
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step12)) (at start (s21_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done)))
  )

  (:durative-action do-step13
    :duration (= ?duration 240)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done)))
  )

  (:durative-action do-step14
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step14)) (at start (s5_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done)))
  )

  (:durative-action do-step15
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step15)) (at start (s22_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done)))
  )

  (:durative-action do-step16
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step16)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done)))
  )

  (:durative-action do-step17
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step17)) (at start (s13_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done)))
  )

  (:durative-action do-step18
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step18)) (at start (s19_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done)))
  )

  (:durative-action do-step19
    :duration (= ?duration 3600)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done)))
  )

  (:durative-action do-step20
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step20)) (at start (s5_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done)))
  )

  (:durative-action do-step21
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step21)) (at start (s11_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done)))
  )

  (:durative-action do-step22
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step22)) (at start (s34_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done)))
  )

  (:durative-action do-step23
    :duration (= ?duration 10)
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done)))
  )

  (:durative-action do-step24
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step24)) (at start (s13_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done)))
  )

  (:durative-action do-step25
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step25)) (at start (s5_done)) (at start (s13_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done)))
  )

  (:durative-action do-step26
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step26)) (at start (s33_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done)))
  )

  (:durative-action do-step27
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step27)) (at start (s10_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done)))
  )

  (:durative-action do-step28
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step28)) (at start (s2_done)) (at start (s25_done)) (at start (s35_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done)))
  )

  (:durative-action do-step29
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step29)) (at start (s16_done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done)))
  )

  (:durative-action do-step30
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step30)) (at start (s3_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done)))
  )

  (:durative-action do-step31
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step31)) (at start (s3_done)) (at start (s22_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_done)))
  )

  (:durative-action do-step32
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step32)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_done)))
  )

  (:durative-action do-step33
    :duration (= ?duration 30)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_done)))
  )

  (:durative-action do-step34
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step34)) (at start (s32_done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_done)))
  )

  (:durative-action do-step35
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step35)) (at start (s2_done)) (at start (s3_done)) (at start (s25_done)) (at start (s21_done)) (at start (s34_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_done)))
  )

  (:durative-action do-step36
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step36)) (at start (s35_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_done)))
  )

  (:durative-action do-step37
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step37)) (at start (s11_done)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_done)))
  )

  (:durative-action do-step38
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step38)) (at start (s3_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_done)))
  )

  (:durative-action do-step39
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step39)) (at start (s23_done)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_done)))
  )

  (:durative-action do-step40
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step40)) (at start (s35_done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_done)))
  )
)
