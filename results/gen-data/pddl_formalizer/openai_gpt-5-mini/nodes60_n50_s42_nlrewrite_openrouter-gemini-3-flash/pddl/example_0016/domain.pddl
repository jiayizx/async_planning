(define (domain arguing_training)
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
    (s41_done)
    (s42_done)
    (s43_done)
    (s44_done)
    (s45_done)
    (s46_done)
    (s47_done)
    (s48_done)
    (s49_done)
    (s50_done)
    (s51_done)
    (s52_done)
    (s53_done)
    (s54_done)
    (s55_done)
    (s56_done)
    (s57_done)
    (s58_done)
    (s59_done)
    (s60_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step1)) (at start (s12_done)) (at start (s18_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done)))
  )

  (:durative-action do_step2
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step2)) (at start (s8_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done)))
  )

  (:durative-action do_step3
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step3)) (at start (s39_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done)))
  )

  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (s2_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done)))
  )

  (:durative-action do_step5
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step5)) (at start (s36_done)) (at start (s41_done)) (at start (s51_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done)))
  )

  (:durative-action do_step6
    :duration (= ?duration 7200)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done)))
  )

  (:durative-action do_step7
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step7)) (at start (s3_done)) (at start (s48_done)) (at start (s56_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done)))
  )

  (:durative-action do_step8
    :duration (= ?duration 604800)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done)))
  )

  (:durative-action do_step9
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step9)) (at start (s37_done)) (at start (s45_done)) (at start (s52_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done)))
  )

  (:durative-action do_step10
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step10)) (at start (s32_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done)))
  )

  (:durative-action do_step11
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step11)) (at start (s19_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done)))
  )

  (:durative-action do_step12
    :duration (= ?duration 36000)
    :condition (and (at start (step_pending step12)) (at start (s40_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done)))
  )

  (:durative-action do_step13
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step13)) (at start (s6_done)) (at start (s41_done)) (at start (s49_done)) (at start (s56_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done)))
  )

  (:durative-action do_step14
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (s2_done)) (at start (s11_done)) (at start (s23_done)) (at start (s37_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done)))
  )

  (:durative-action do_step15
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step15)) (at start (s4_done)) (at start (s8_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done)))
  )

  (:durative-action do_step16
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step16)) (at start (s21_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done)))
  )

  (:durative-action do_step17
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step17)) (at start (s9_done)) (at start (s14_done)) (at start (s16_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done)))
  )

  (:durative-action do_step18
    :duration (= ?duration 345600)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done)))
  )

  (:durative-action do_step19
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step19)) (at start (s52_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done)))
  )

  (:durative-action do_step20
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step20)) (at start (s19_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done)))
  )

  (:durative-action do_step21
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step21)) (at start (s49_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done)))
  )

  (:durative-action do_step22
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step22)) (at start (s13_done)) (at start (s52_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done)))
  )

  (:durative-action do_step23
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step23)) (at start (s49_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done)))
  )

  (:durative-action do_step24
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step24)) (at start (s54_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done)))
  )

  (:durative-action do_step25
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step25)) (at start (s2_done)) (at start (s8_done)) (at start (s40_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done)))
  )

  (:durative-action do_step26
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step26)) (at start (s14_done)) (at start (s20_done)) (at start (s36_done)) (at start (s39_done)) (at start (s41_done)) (at start (s56_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done)))
  )

  (:durative-action do_step27
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step27)) (at start (s22_done)) (at start (s28_done)) (at start (s49_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done)))
  )

  (:durative-action do_step28
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step28)) (at start (s2_done)) (at start (s3_done)) (at start (s22_done)) (at start (s47_done)) (at start (s55_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done)))
  )

  (:durative-action do_step29
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step29)) (at start (s37_done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done)))
  )

  (:durative-action do_step30
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step30)) (at start (s44_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done)))
  )

  (:durative-action do_step31
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step31)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_done)))
  )

  (:durative-action do_step32
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step32)) (at start (s11_done)) (at start (s52_done)) (at start (s58_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_done)))
  )

  (:durative-action do_step33
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step33)) (at start (s2_done)) (at start (s44_done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_done)))
  )

  (:durative-action do_step34
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step34)) (at start (s25_done)) (at start (s38_done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_done)))
  )

  (:durative-action do_step35
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step35)) (at start (s29_done)) (at start (s55_done)) (at start (s56_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_done)))
  )

  (:durative-action do_step36
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step36)) (at start (s22_done)) (at start (s27_done)) (at start (s44_done)) (at start (s47_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_done)))
  )

  (:durative-action do_step37
    :duration (= ?duration 600)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_done)))
  )

  (:durative-action do_step38
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step38)) (at start (s9_done)) (at start (s40_done)) (at start (s45_done)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_done)))
  )

  (:durative-action do_step39
    :duration (= ?duration 604800)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_done)))
  )

  (:durative-action do_step40
    :duration (= ?duration 7776000)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_done)))
  )

  (:durative-action do_step41
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step41)) (at start (s4_done)) (at start (s10_done)) (at start (s30_done)) (at start (s48_done)) (at start (s37_done)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_done)))
  )

  (:durative-action do_step42
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step42)) (at start (s8_done)) (at start (s32_done)) (at start (s56_done)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_done)))
  )

  (:durative-action do_step43
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step43)) (at start (s34_done)) (at start (s40_done)) (at start (s57_done)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_done)))
  )

  (:durative-action do_step44
    :duration (= ?duration 18000)
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_done)))
  )

  (:durative-action do_step45
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step45)) (at start (s49_done)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_done)))
  )

  (:durative-action do_step46
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step46)) (at start (s36_done)) (at start (s52_done)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_done)))
  )

  (:durative-action do_step47
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step47)) (at start (s4_done)) (at start (s41_done)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_done)))
  )

  (:durative-action do_step48
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step48)) (at start (s39_done)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_done)))
  )

  (:durative-action do_step49
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step49)) (at start (s18_done)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_done)))
  )

  (:durative-action do_step50
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step50)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_done)))
  )

  (:durative-action do_step51
    :duration (= ?duration 5184000)
    :condition (at start (step_pending step51))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51_done)))
  )

  (:durative-action do_step52
    :duration (= ?duration 300)
    :condition (at start (step_pending step52))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52_done)))
  )

  (:durative-action do_step53
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step53)) (at start (s30_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53_done)))
  )

  (:durative-action do_step54
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step54)) (at start (s2_done)) (at start (s10_done)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54_done)))
  )

  (:durative-action do_step55
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step55)) (at start (s42_done)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55_done)))
  )

  (:durative-action do_step56
    :duration (= ?duration 3600)
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56_done)))
  )

  (:durative-action do_step57
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step57)) (at start (s17_done)) (at start (s44_done)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57_done)))
  )

  (:durative-action do_step58
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step58)) (at start (s3_done)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58_done)))
  )

  (:durative-action do_step59
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step59)) (at start (s51_done)) (at start (s52_done)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59_done)))
  )

  (:durative-action do_step60
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step60)) (at start (s1_done)) (at start (s31_done)) (at start (s46_done)) (at start (s57_done)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60_done)))
  )
)
