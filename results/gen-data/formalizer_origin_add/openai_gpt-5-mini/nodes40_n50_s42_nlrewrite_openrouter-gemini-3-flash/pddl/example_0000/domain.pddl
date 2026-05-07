(define (domain enjoy_outdoors)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_finished)
    (s2_finished)
    (s3_finished)
    (s4_finished)
    (s5_finished)
    (s6_finished)
    (s7_finished)
    (s8_finished)
    (s9_finished)
    (s10_finished)
    (s11_finished)
    (s12_finished)
    (s13_finished)
    (s14_finished)
    (s15_finished)
    (s16_finished)
    (s17_finished)
    (s18_finished)
    (s19_finished)
    (s20_finished)
    (s21_finished)
    (s22_finished)
    (s23_finished)
    (s24_finished)
    (s25_finished)
    (s26_finished)
    (s27_finished)
    (s28_finished)
    (s29_finished)
    (s30_finished)
    (s31_finished)
    (s32_finished)
    (s33_finished)
    (s34_finished)
    (s35_finished)
    (s36_finished)
    (s37_finished)
    (s38_finished)
    (s39_finished)
    (s40_finished)
  )

  (:durative-action do_step1
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step1)) (at start (s21_finished)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_finished)))
  )

  (:durative-action do_step2
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (s6_finished)) (at start (s22_finished)) (at start (s23_finished)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_finished)))
  )

  (:durative-action do_step3
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (s5_finished)) (at start (s32_finished)) (at start (s37_finished)) (at start (s40_finished)) (at start (s11_finished)) (at start (s24_finished)) (at start (s12_finished)) (at start (s13_finished)) (at start (s14_finished)) (at start (s18_finished)) (at start (s19_finished)) (at start (s34_finished)) (at start (s22_finished)) (at start (s23_finished)) (at start (s9_finished)) (at start (s36_finished)) (at start (s35_finished)) (at start (s27_finished)) (at start (s21_finished)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_finished)))
  )

  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (s22_finished)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_finished)))
  )

  (:durative-action do_step5
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (s4_finished)) (at start (s17_finished)) (at start (s18_finished)) (at start (s13_finished)) (at start (s14_finished)) (at start (s32_finished)) (at start (s21_finished)) (at start (s22_finished)) (at start (s28_finished)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_finished)))
  )

  (:durative-action do_step6
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)) (at start (s22_finished)) (at start (s23_finished)) (at start (s34_finished)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_finished)))
  )

  (:durative-action do_step7
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step7)) (at start (s11_finished)) (at start (s10_finished)) (at start (s27_finished)) (at start (s40_finished)) (at start (s23_finished)) (at start (s34_finished)) (at start (s13_finished)) (at start (s14_finished)) (at start (s18_finished)) (at start (s19_finished)) (at start (s32_finished)) (at start (s21_finished)) (at start (s22_finished)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_finished)))
  )

  (:durative-action do_step8
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (s6_finished)) (at start (s22_finished)) (at start (s23_finished)) (at start (s34_finished)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_finished)))
  )

  (:durative-action do_step9
    :duration (= ?duration 14400)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_finished)))
  )

  (:durative-action do_step10
    :duration (= ?duration 600)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_finished)))
  )

  (:durative-action do_step11
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step11)) (at start (s5_finished)) (at start (s23_finished)) (at start (s4_finished)) (at start (s17_finished)) (at start (s18_finished)) (at start (s13_finished)) (at start (s14_finished)) (at start (s32_finished)) (at start (s21_finished)) (at start (s22_finished)) (at start (s28_finished)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_finished)))
  )

  (:durative-action do_step12
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step12)) (at start (s2_finished)) (at start (s6_finished)) (at start (s22_finished)) (at start (s23_finished)) (at start (s34_finished)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_finished)))
  )

  (:durative-action do_step13
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step13)) (at start (s14_finished)) (at start (s32_finished)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_finished)))
  )

  (:durative-action do_step14
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step14)) (at start (s32_finished)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_finished)))
  )

  (:durative-action do_step15
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (s1_finished)) (at start (s14_finished)) (at start (s21_finished)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_finished)))
  )

  (:durative-action do_step16
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step16)) (at start (s11_finished)) (at start (s5_finished)) (at start (s23_finished)) (at start (s4_finished)) (at start (s17_finished)) (at start (s18_finished)) (at start (s13_finished)) (at start (s14_finished)) (at start (s32_finished)) (at start (s21_finished)) (at start (s22_finished)) (at start (s28_finished)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_finished)))
  )

  (:durative-action do_step17
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step17)) (at start (s10_finished)) (at start (s18_finished)) (at start (s28_finished)) (at start (s21_finished)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_finished)))
  )

  (:durative-action do_step18
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step18)) (at start (s1_finished)) (at start (s28_finished)) (at start (s21_finished)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_finished)))
  )

  (:durative-action do_step19
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step19)) (at start (s36_finished)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_finished)))
  )

  (:durative-action do_step20
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step20)) (at start (s12_finished)) (at start (s2_finished)) (at start (s6_finished)) (at start (s22_finished)) (at start (s23_finished)) (at start (s34_finished)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_finished)))
  )

  (:durative-action do_step21
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step21)) (at start (s10_finished)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_finished)))
  )

  (:durative-action do_step22
    :duration (= ?duration 172800)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_finished)))
  )

  (:durative-action do_step23
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step23)) (at start (s34_finished)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_finished)))
  )

  (:durative-action do_step24
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step24)) (at start (s12_finished)) (at start (s13_finished)) (at start (s18_finished)) (at start (s19_finished)) (at start (s34_finished)) (at start (s32_finished)) (at start (s2_finished)) (at start (s6_finished)) (at start (s36_finished)) (at start (s28_finished)) (at start (s21_finished)) (at start (s22_finished)) (at start (s23_finished)) (at start (s14_finished)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_finished)))
  )

  (:durative-action do_step25
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step25)) (at start (s9_finished)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_finished)))
  )

  (:durative-action do_step26
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step26)) (at start (s1_finished)) (at start (s28_finished)) (at start (s21_finished)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_finished)))
  )

  (:durative-action do_step27
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step27)) (at start (s22_finished)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_finished)))
  )

  (:durative-action do_step28
    :duration (= ?duration 1800)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_finished)))
  )

  (:durative-action do_step29
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step29)) (at start (s16_finished)) (at start (s11_finished)) (at start (s5_finished)) (at start (s23_finished)) (at start (s4_finished)) (at start (s17_finished)) (at start (s18_finished)) (at start (s13_finished)) (at start (s14_finished)) (at start (s32_finished)) (at start (s21_finished)) (at start (s22_finished)) (at start (s28_finished)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_finished)))
  )

  (:durative-action do_step30
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step30)) (at start (s14_finished)) (at start (s32_finished)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_finished)))
  )

  (:durative-action do_step31
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step31)) (at start (s6_finished)) (at start (s22_finished)) (at start (s23_finished)) (at start (s34_finished)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_finished)))
  )

  (:durative-action do_step32
    :duration (= ?duration 3600)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_finished)))
  )

  (:durative-action do_step33
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step33)) (at start (s11_finished)) (at start (s5_finished)) (at start (s23_finished)) (at start (s4_finished)) (at start (s17_finished)) (at start (s18_finished)) (at start (s13_finished)) (at start (s14_finished)) (at start (s32_finished)) (at start (s21_finished)) (at start (s22_finished)) (at start (s28_finished)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_finished)))
  )

  (:durative-action do_step34
    :duration (= ?duration 2400)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_finished)))
  )

  (:durative-action do_step35
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step35)) (at start (s36_finished)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_finished)))
  )

  (:durative-action do_step36
    :duration (= ?duration 2700)
    :condition (at start (step_pending step36))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_finished)))
  )

  (:durative-action do_step37
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step37)) (at start (s11_finished)) (at start (s24_finished)) (at start (s32_finished)) (at start (s40_finished)) (at start (s12_finished)) (at start (s13_finished)) (at start (s18_finished)) (at start (s19_finished)) (at start (s34_finished)) (at start (s2_finished)) (at start (s6_finished)) (at start (s23_finished)) (at start (s36_finished)) (at start (s14_finished)) (at start (s21_finished)) (at start (s22_finished)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_finished)))
  )

  (:durative-action do_step38
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step38)) (at start (s4_finished)) (at start (s22_finished)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_finished)))
  )

  (:durative-action do_step39
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step39)) (at start (s22_finished)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_finished)))
  )

  (:durative-action do_step40
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step40)) (at start (s27_finished)) (at start (s22_finished)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_finished)))
  )
)
