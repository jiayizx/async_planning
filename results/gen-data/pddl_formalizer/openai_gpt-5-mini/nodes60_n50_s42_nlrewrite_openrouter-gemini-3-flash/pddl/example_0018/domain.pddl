(define (domain squirt-paint)
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
    (s41_complete)
    (s42_complete)
    (s43_complete)
    (s44_complete)
    (s45_complete)
    (s46_complete)
    (s47_complete)
    (s48_complete)
    (s49_complete)
    (s50_complete)
    (s51_complete)
    (s52_complete)
    (s53_complete)
    (s54_complete)
    (s55_complete)
    (s56_complete)
    (s57_complete)
    (s58_complete)
    (s59_complete)
    (s60_complete)
  )

  (:durative-action do_step1
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step1)) (at start (s11_complete)) (at start (s25_complete)) (at start (s38_complete)) (at start (s60_complete)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_complete)))
  )

  (:durative-action do_step2
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (s9_complete)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_complete)))
  )

  (:durative-action do_step3
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (s39_complete)) (at start (s54_complete)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_complete)))
  )

  (:durative-action do_step4
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step4)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_complete)))
  )

  (:durative-action do_step5
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (s55_complete)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_complete)))
  )

  (:durative-action do_step6
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step6)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_complete)))
  )

  (:durative-action do_step7
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (s5_complete)) (at start (s60_complete)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_complete)))
  )

  (:durative-action do_step8
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step8)) (at start (s30_complete)) (at start (s52_complete)) (at start (s56_complete)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_complete)))
  )

  (:durative-action do_step9
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step9)) (at start (s11_complete)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_complete)))
  )

  (:durative-action do_step10
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step10)) (at start (s14_complete)) (at start (s29_complete)) (at start (s32_complete)) (at start (s35_complete)) (at start (s60_complete)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_complete)))
  )

  (:durative-action do_step11
    :duration (= ?duration 300)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_complete)))
  )

  (:durative-action do_step12
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step12)) (at start (s35_complete)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_complete)))
  )

  (:durative-action do_step13
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step13)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_complete)))
  )

  (:durative-action do_step14
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step14)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_complete)))
  )

  (:durative-action do_step15
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step15)) (at start (s12_complete)) (at start (s40_complete)) (at start (s48_complete)) (at start (s56_complete)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_complete)))
  )

  (:durative-action do_step16
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step16)) (at start (s27_complete)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_complete)))
  )

  (:durative-action do_step17
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step17)) (at start (s53_complete)) (at start (s38_complete)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_complete)))
  )

  (:durative-action do_step18
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step18)) (at start (s36_complete)) (at start (s38_complete)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_complete)))
  )

  (:durative-action do_step19
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step19)) (at start (s4_complete)) (at start (s51_complete)) (at start (s56_complete)) (at start (s58_complete)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_complete)))
  )

  (:durative-action do_step20
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step20)) (at start (s35_complete)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_complete)))
  )

  (:durative-action do_step21
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step21)) (at start (s31_complete)) (at start (s47_complete)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_complete)))
  )

  (:durative-action do_step22
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step22)) (at start (s55_complete)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_complete)))
  )

  (:durative-action do_step23
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step23)) (at start (s56_complete)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_complete)))
  )

  (:durative-action do_step24
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step24)) (at start (s28_complete)) (at start (s40_complete)) (at start (s48_complete)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_complete)))
  )

  (:durative-action do_step25
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (s29_complete)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_complete)))
  )

  (:durative-action do_step26
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step26)) (at start (s25_complete)) (at start (s42_complete)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_complete)))
  )

  (:durative-action do_step27
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step27)) (at start (s44_complete)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_complete)))
  )

  (:durative-action do_step28
    :duration (= ?duration 3600)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_complete)))
  )

  (:durative-action do_step29
    :duration (= ?duration 1800)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_complete)))
  )

  (:durative-action do_step30
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step30)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_complete)))
  )

  (:durative-action do_step31
    :duration (= ?duration 2700)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_complete)))
  )

  (:durative-action do_step32
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step32)) (at start (s48_complete)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_complete)))
  )

  (:durative-action do_step33
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step33)) (at start (s47_complete)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_complete)))
  )

  (:durative-action do_step34
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step34)) (at start (s6_complete)) (at start (s19_complete)) (at start (s42_complete)) (at start (s32_complete)) (at start (s59_complete)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_complete)))
  )

  (:durative-action do_step35
    :duration (= ?duration 900)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_complete)))
  )

  (:durative-action do_step36
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step36)) (at start (s37_complete)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_complete)))
  )

  (:durative-action do_step37
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step37)) (at start (s6_complete)) (at start (s30_complete)) (at start (s48_complete)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_complete)))
  )

  (:durative-action do_step38
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step38)) (at start (s20_complete)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_complete)))
  )

  (:durative-action do_step39
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step39)) (at start (s50_complete)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step40)) (at end (s39_complete)))
  )

  (:durative-action do_step40
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step40)) (at start (s31_complete)) (at start (s51_complete)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_complete)))
  )

  (:durative-action do_step41
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step41)) (at start (s35_complete)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_complete)))
  )

  (:durative-action do_step42
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step42)) (at start (s21_complete)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_complete)))
  )

  (:durative-action do_step43
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step43)) (at start (s50_complete)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_complete)))
  )

  (:durative-action do_step44
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step44)) (at start (s47_complete)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_complete)))
  )

  (:durative-action do_step45
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step45)) (at start (s4_complete)) (at start (s60_complete)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_complete)))
  )

  (:durative-action do_step46
    :duration (= ?duration 300)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_complete)))
  )

  (:durative-action do_step47
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step47)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_complete)))
  )

  (:durative-action do_step48
    :duration (= ?duration 1200)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_complete)))
  )

  (:durative-action do_step49
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step49)) (at start (s3_complete)) (at start (s16_complete)) (at start (s39_complete)) (at start (s41_complete)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_complete)))
  )

  (:durative-action do_step50
    :duration (= ?duration 300)
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_complete)))
  )

  (:durative-action do_step51
    :duration (= ?duration 300)
    :condition (at start (step_pending step51))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51_complete)))
  )

  (:durative-action do_step52
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step52)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52_complete)))
  )

  (:durative-action do_step53
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step53)) (at start (s4_complete)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53_complete)))
  )

  (:durative-action do_step54
    :duration (= ?duration 300)
    :condition (at start (step_pending step54))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54_complete)))
  )

  (:durative-action do_step55
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step55)) (at start (s47_complete)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55_complete)))
  )

  (:durative-action do_step56
    :duration (= ?duration 120)
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56_complete)))
  )

  (:durative-action do_step57
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step57)) (at start (s8_complete)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57_complete)))
  )

  (:durative-action do_step58
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step58)) (at start (s12_complete)) (at start (s16_complete)) (at start (s46_complete)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58_complete)))
  )

  (:durative-action do_step59
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step59)) (at start (s50_complete)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59_complete)))
  )

  (:durative-action do_step60
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step60)) (at start (s51_complete)) (at start (s31_complete)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60_complete)))
  )

)
