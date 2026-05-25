(define (domain send-letter)
  (:requirements :typing :durative-actions)
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

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_complete))))

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step2)) (at start (s19_complete)) (at start (s24_complete)) (at start (s10_complete)) (at start (s18_complete)) (at start (s22_complete)) (at start (s8_complete)) (at start (s14_complete)) (at start (s16_complete)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_complete))))

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step3)) (at start (s13_complete)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_complete))))

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_complete))))

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_complete))))

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_complete))))

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_complete))))

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (s14_complete)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_complete))))

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step9)) (at start (s35_complete)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_complete))))

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step10)) (at start (s8_complete)) (at start (s14_complete)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_complete))))

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step11)) (at start (s25_complete)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_complete))))

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step12)) (at start (s20_complete)) (at start (s32_complete)) (at start (s35_complete)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_complete))))

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_complete))))

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_complete))))

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_complete))))

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_complete))))

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step17)) (at start (s18_complete)) (at start (s38_complete)) (at start (s6_complete)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_complete))))

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_complete))))

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step19)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_complete))))

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step20)) (at start (s35_complete)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_complete))))

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step21)) (at start (s2_complete)) (at start (s24_complete)) (at start (s19_complete)) (at start (s10_complete)) (at start (s18_complete)) (at start (s22_complete)) (at start (s8_complete)) (at start (s14_complete)) (at start (s16_complete)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_complete))))

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step22)) (at start (s16_complete)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_complete))))

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (step_pending step23)) (at start (s4_complete)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_complete))))

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step24)) (at start (s10_complete)) (at start (s18_complete)) (at start (s22_complete)) (at start (s8_complete)) (at start (s14_complete)) (at start (s16_complete)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_complete))))

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step25)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_complete))))

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step26)) (at start (s13_complete)) (at start (s29_complete)) (at start (s18_complete)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_complete))))

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step27)) (at start (s11_complete)) (at start (s25_complete)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_complete))))

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step28)) (at start (s25_complete)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_complete))))

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step29)) (at start (s18_complete)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_complete))))

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step30)) (at start (s3_complete)) (at start (s7_complete)) (at start (s34_complete)) (at start (s13_complete)) (at start (s37_complete)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_complete))))

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step31)) (at start (s10_complete)) (at start (s8_complete)) (at start (s14_complete)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_complete))))

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_complete))))

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step33)) (at start (s6_complete)) (at start (s8_complete)) (at start (s9_complete)) (at start (s40_complete)) (at start (s35_complete)) (at start (s15_complete)) (at start (s14_complete)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_complete))))

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step34)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_complete))))

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step35)) (at start (s5_complete)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_complete))))

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step36)) (at start (s4_complete)) (at start (s6_complete)) (at start (s28_complete)) (at start (s33_complete)) (at start (s25_complete)) (at start (s32_complete)) (at start (s8_complete)) (at start (s9_complete)) (at start (s40_complete)) (at start (s35_complete)) (at start (s15_complete)) (at start (s14_complete)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_complete))))

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_complete))))

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step38)) (at start (s6_complete)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_complete))))

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step39)) (at start (s8_complete)) (at start (s14_complete)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_complete))))

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_complete))))
)
