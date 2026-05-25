(define (domain pool_day)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (s31_done) (s32_done) (s33_done) (s34_done) (s35_done) (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
    (s41_done) (s42_done) (s43_done) (s44_done) (s45_done) (s46_done) (s47_done) (s48_done) (s49_done) (s50_done)
    (s51_done) (s52_done) (s53_done) (s54_done) (s55_done) (s56_done) (s57_done) (s58_done) (s59_done) (s60_done)
    (s61_done) (s62_done) (s63_done) (s64_done) (s65_done) (s66_done) (s67_done) (s68_done) (s69_done) (s70_done)
    (s71_done) (s72_done) (s73_done) (s74_done) (s75_done) (s76_done) (s77_done) (s78_done) (s79_done) (s80_done)
    (s81_done) (s82_done) (s83_done) (s84_done) (s85_done) (s86_done) (s87_done) (s88_done) (s89_done) (s90_done)
    (s91_done) (s92_done) (s93_done) (s94_done) (s95_done) (s96_done) (s97_done) (s98_done) (s99_done) (s100_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step1)) (at start (s27_done)) (at start (s33_done)) (at start (s34_done)) (at start (s54_done)) (at start (s100_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done)))
  )

  (:durative-action do_step2
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step2)) (at start (s7_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done)))
  )

  (:durative-action do_step3
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (s17_done)) (at start (s26_done)) (at start (s81_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done)))
  )

  (:durative-action do_step4
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (s71_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done)))
  )

  (:durative-action do_step5
    :duration (= ?duration 600)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done)))
  )

  (:durative-action do_step6
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (s56_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done)))
  )

  (:durative-action do_step7
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step7)) (at start (s6_done)) (at start (s45_done)) (at start (s98_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done)))
  )

  (:durative-action do_step8
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step8)) (at start (s16_done)) (at start (s45_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done)))
  )

  (:durative-action do_step9
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step9)) (at start (s81_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done)))
  )

  (:durative-action do_step10
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step10)) (at start (s13_done)) (at start (s41_done)) (at start (s43_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done)))
  )

  (:durative-action do_step11
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step11)) (at start (s22_done)) (at start (s27_done)) (at start (s37_done)) (at start (s41_done)) (at start (s78_done)) (at start (s82_done)) (at start (s92_done)) (at start (s97_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done)))
  )

  (:durative-action do_step12
    :duration (= ?duration 180)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done)))
  )

  (:durative-action do_step13
    :duration (= ?duration 1200)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done)))
  )

  (:durative-action do_step14
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step14)) (at start (s95_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done)))
  )

  (:durative-action do_step15
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (s13_done)) (at start (s30_done)) (at start (s74_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done)))
  )

  (:durative-action do_step16
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step16)) (at start (s6_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done)))
  )

  (:durative-action do_step17
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step17)) (at start (s20_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done)))
  )

  (:durative-action do_step18
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step18)) (at start (s56_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done)))
  )

  (:durative-action do_step19
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step19)) (at start (s4_done)) (at start (s18_done)) (at start (s48_done)) (at start (s61_done)) (at start (s74_done)) (at start (s90_done)) (at start (s94_done)) (at start (s97_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done)))
  )

  (:durative-action do_step20
    :duration (= ?duration 300)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done)))
  )

  (:durative-action do_step21
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step21)) (at start (s20_done)) (at start (s30_done)) (at start (s55_done)) (at start (s75_done)) (at start (s86_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done)))
  )

  (:durative-action do_step22
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step22)) (at start (s5_done)) (at start (s6_done)) (at start (s7_done)) (at start (s20_done)) (at start (s35_done)) (at start (s39_done)) (at start (s40_done)) (at start (s57_done)) (at start (s100_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done)))
  )

  (:durative-action do_step23
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step23)) (at start (s12_done)) (at start (s20_done)) (at start (s35_done)) (at start (s50_done)) (at start (s73_done)) (at start (s76_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done)))
  )

  (:durative-action do_step24
    :duration (= ?duration 300)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done)))
  )

  (:durative-action do_step25
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (s55_done)) (at start (s74_done)) (at start (s93_done)) (at start (s96_done)) (at start (s98_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done)))
  )

  (:durative-action do_step26
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step26)) (at start (s20_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done)))
  )

  (:durative-action do_step27
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step27)) (at start (s61_done)) (at start (s76_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done)))
  )

  (:durative-action do_step28
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)) (at start (s16_done)) (at start (s25_done)) (at start (s90_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done)))
  )

  (:durative-action do_step29
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step29)) (at start (s10_done)) (at start (s51_done)))
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
    :condition (and (at start (step_pending step32)) (at start (s13_done)) (at start (s70_done)) (at start (s75_done)) (at start (s85_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_done)))
  )

  (:durative-action do_step33
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step33)) (at start (s82_done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_done)))
  )

  (:durative-action do_step34
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step34)) (at start (s30_done)) (at start (s35_done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_done)))
  )

  (:durative-action do_step35
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step35)) (at start (s13_done)) (at start (s83_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_done)))
  )

  (:durative-action do_step36
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step36)) (at start (s22_done)) (at start (s44_done)) (at start (s69_done)) (at start (s96_done)) (at start (s81_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_done)))
  )

  (:durative-action do_step37
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step37)) (at start (s1_done)) (at start (s4_done)) (at start (s29_done)) (at start (s52_done)) (at start (s58_done)) (at start (s63_done)) (at start (s70_done)) (at start (s93_done)) (at start (s94_done)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_done)))
  )

  (:durative-action do_step38
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step38)) (at start (s18_done)) (at start (s44_done)) (at start (s46_done)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_done)))
  )

  (:durative-action do_step39
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step39)) (at start (s20_done)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_done)))
  )

  (:durative-action do_step40
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step40)) (at start (s5_done)) (at start (s17_done)) (at start (s41_done)) (at start (s47_done)) (at start (s87_done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_done)))
  )

  (:durative-action do_step41
    :duration (= ?duration 1800)
    :condition (at start (step_pending step41))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_done)))
  )

  (:durative-action do_step42
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step42)) (at start (s6_done)) (at start (s14_done)) (at start (s17_done)) (at start (s21_done)) (at start (s24_done)) (at start (s35_done)) (at start (s56_done)) (at start (s83_done)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_done)))
  )

  (:durative-action do_step43
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step43)) (at start (s12_done)) (at start (s20_done)) (at start (s54_done)) (at start (s55_done)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_done)))
  )

  (:durative-action do_step44
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step44)) (at start (s75_done)) (at start (s82_done)) (at start (s84_done)) (at start (s95_done)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_done)))
  )

  (:durative-action do_step45
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step45)) (at start (s18_done)) (at start (s20_done)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_done)))
  )

  (:durative-action do_step46
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step46)) (at start (s4_done)) (at start (s13_done)) (at start (s16_done)) (at start (s31_done)) (at start (s60_done)) (at start (s70_done)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_done)))
  )

  (:durative-action do_step47
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step47)) (at start (s29_done)) (at start (s62_done)) (at start (s96_done)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_done)))
  )

  (:durative-action do_step48
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step48)) (at start (s21_done)) (at start (s58_done)) (at start (s69_done)) (at start (s73_done)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_done)))
  )

  (:durative-action do_step49
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step49)) (at start (s7_done)) (at start (s16_done)) (at start (s32_done)) (at start (s33_done)) (at start (s98_done)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_done)))
  )

  (:durative-action do_step50
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step50)) (at start (s59_done)) (at start (s92_done)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_done)))
  )

  (:durative-action do_step51
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step51)) (at start (s82_done)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51_done)))
  )

  (:durative-action do_step52
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step52)) (at start (s3_done)) (at start (s22_done)) (at start (s70_done)) (at start (s78_done)) (at start (s89_done)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52_done)))
  )

  (:durative-action do_step53
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step53)) (at start (s13_done)) (at start (s15_done)) (at start (s20_done)) (at start (s21_done)) (at start (s73_done)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53_done)))
  )

  (:durative-action do_step54
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step54)) (at start (s34_done)) (at start (s17_done)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54_done)))
  )

  (:durative-action do_step55
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step55)) (at start (s16_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55_done)))
  )

  (:durative-action do_step56
    :duration (= ?duration 600)
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56_done)))
  )

  (:durative-action do_step57
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step57)) (at start (s30_done)) (at start (s32_done)) (at start (s43_done)) (at start (s54_done)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57_done)))
  )

  (:durative-action do_step58
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step58)) (at start (s10_done)) (at start (s13_done)) (at start (s16_done)) (at start (s83_done)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58_done)))
  )

  (:durative-action do_step59
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step59)) (at start (s15_done)) (at start (s61_done)) (at start (s81_done)) (at start (s96_done)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59_done)))
  )

  (:durative-action do_step60
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step60)) (at start (s40_done)) (at start (s54_done)) (at start (s56_done)) (at start (s95_done)) (at start (s96_done)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60_done)))
  )

  (:durative-action do_step61
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step61)) (at start (s71_done)) (at start (s96_done)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (s61_done)))
  )

  (:durative-action do_step62
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step62)) (at start (s26_done)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (s62_done)))
  )

  (:durative-action do_step63
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step63)) (at start (s16_done)) (at start (s39_done)) (at start (s42_done)) (at start (s89_done)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (s63_done)))
  )

  (:durative-action do_step64
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step64)) (at start (s39_done)) (at start (s42_done)) (at start (s79_done)) (at start (s41_done)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (s64_done)))
  )

  (:durative-action do_step65
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step65)) (at start (s39_done)) (at start (s55_done)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (s65_done)))
  )

  (:durative-action do_step66
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step66)) (at start (s9_done)) (at start (s58_done)) (at start (s94_done)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (s66_done)))
  )

  (:durative-action do_step67
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step67)) (at start (s1_done)) (at start (s10_done)) (at start (s25_done)) (at start (s31_done)) (at start (s51_done)) (at start (s73_done)) (at start (s81_done)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (s67_done)))
  )

  (:durative-action do_step68
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step68)) (at start (s24_done)) (at start (s62_done)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (s68_done)))
  )

  (:durative-action do_step69
    :duration (= ?duration 300)
    :condition (at start (step_pending step69))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (s69_done)))
  )

  (:durative-action do_step70
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step70)) (at start (s13_done)) (at start (s45_done)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (s70_done)))
  )

  (:durative-action do_step71
    :duration (= ?duration 3600)
    :condition (at start (step_pending step71))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (s71_done)))
  )

  (:durative-action do_step72
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step72)) (at start (s7_done)) (at start (s30_done)) (at start (s39_done)) (at start (s51_done)) (at start (s54_done)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (s72_done)))
  )

  (:durative-action do_step73
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step73)) (at start (s12_done)) (at start (s32_done)) (at start (s43_done)) (at start (s95_done)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (s73_done)))
  )

  (:durative-action do_step74
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step74)) (at start (s29_done)) (at start (s81_done)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (s74_done)))
  )

  (:durative-action do_step75
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step75)) (at start (s31_done)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (s75_done)))
  )

  (:durative-action do_step76
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step76)) (at start (s31_done)) (at start (s75_done)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (s76_done)))
  )

  (:durative-action do_step77
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step77)) (at start (s44_done)) (at start (s47_done)) (at start (s55_done)) (at start (s56_done)) (at start (s66_done)) (at start (s75_done)) (at start (s99_done)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (s77_done)))
  )

  (:durative-action do_step78
    :duration (= ?duration 120)
    :condition (at start (step_pending step78))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (s78_done)))
  )

  (:durative-action do_step79
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step79)) (at start (s20_done)) (at start (s21_done)) (at start (s26_done)) (at start (s33_done)) (at start (s56_done)) (at start (s69_done)) (at start (s81_done)) (at start (s83_done)) (at start (s85_done)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (s79_done)))
  )

  (:durative-action do_step80
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step80)) (at start (s59_done)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (s80_done)))
  )

  (:durative-action do_step81
    :duration (= ?duration 120)
    :condition (at start (step_pending step81))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (s81_done)))
  )

  (:durative-action do_step82
    :duration (= ?duration 120)
    :condition (at start (step_pending step82))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (s82_done)))
  )

  (:durative-action do_step83
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step83)) (at start (s26_done)) (at start (s33_done)) (at start (s56_done)) (at start (s69_done)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (s83_done)))
  )

  (:durative-action do_step84
    :duration (= ?duration 300)
    :condition (at start (step_pending step84))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (s84_done)))
  )

  (:durative-action do_step85
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step85)) (at start (s56_done)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (s85_done)))
  )

  (:durative-action do_step86
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step86)) (at start (s28_done)) (at start (s78_done)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (s86_done)))
  )

  (:durative-action do_step87
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step87)) (at start (s75_done)) (at start (s81_done)) (at start (s93_done)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (s87_done)))
  )

  (:durative-action do_step88
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step88)) (at start (s24_done)) (at start (s40_done)) (at start (s60_done)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (s88_done)))
  )

  (:durative-action do_step89
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step89)) (at start (s3_done)) (at start (s5_done)) (at start (s41_done)) (at start (s93_done)) (at start (s81_done)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (s89_done)))
  )

  (:durative-action do_step90
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step90)) (at start (s56_done)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (s90_done)))
  )

  (:durative-action do_step91
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step91)) (at start (s1_done)) (at start (s24_done)) (at start (s28_done)) (at start (s65_done)) (at start (s69_done)) (at start (s78_done)) (at start (s88_done)) (at start (s93_done)))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91)) (at end (s91_done)))
  )

  (:durative-action do_step92
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step92)) (at start (s12_done)) (at start (s30_done)) (at start (s31_done)) (at start (s33_done)) (at start (s44_done)))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92)) (at end (s92_done)))
  )

  (:durative-action do_step93
    :duration (= ?duration 300)
    :condition (at start (step_pending step93))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93)) (at end (s93_done)))
  )

  (:durative-action do_step94
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step94)) (at start (s25_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94)) (at end (s94_done)))
  )

  (:durative-action do_step95
    :duration (= ?duration 120)
    :condition (at start (step_pending step95))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95)) (at end (s95_done)))
  )

  (:durative-action do_step96
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step96)) (at start (s7_done)) (at start (s18_done)) (at start (s45_done)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96)) (at end (s96_done)))
  )

  (:durative-action do_step97
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step97)) (at start (s29_done)) (at start (s69_done)) (at start (s47_done)))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97)) (at end (s97_done)))
  )

  (:durative-action do_step98
    :duration (= ?duration 120)
    :condition (at start (step_pending step98))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98)) (at end (s98_done)))
  )

  (:durative-action do_step99
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step99)) (at start (s32_done)) (at start (s85_done)))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99)) (at end (s99_done)))
  )

  (:durative-action do_step100
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step100)) (at start (s71_done)) (at start (s90_done)) (at start (s92_done)) (at start (s65_done)))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100)) (at end (s100_done)))
  )
)
