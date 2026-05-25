(define (domain hamburgers)
  (:requirements :durative-actions :typing)
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
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step1) (s7_done) (s36_done) (s40_done) (s81_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done)))
  )

  (:durative-action do_step2
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step2) (s50_done) (s36_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done)))
  )

  (:durative-action do_step3
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step3) (s32_done) (s54_done) (s80_done) (s73_done) (s61_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done)))
  )

  (:durative-action do_step4
    :duration (= ?duration 480)
    :condition (at start (and (step_pending step4) (s16_done) (s70_done) (s77_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done)))
  )

  (:durative-action do_step5
    :duration (= ?duration 240)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done)))
  )

  (:durative-action do_step6
    :duration (= ?duration 60)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done)))
  )

  (:durative-action do_step7
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step7) (s93_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done)))
  )

  (:durative-action do_step8
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step8) (s5_done) (s25_done) (s82_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done)))
  )

  (:durative-action do_step9
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step9) (s36_done) (s61_done) (s93_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done)))
  )

  (:durative-action do_step10
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step10) (s26_done) (s31_done) (s64_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done)))
  )

  (:durative-action do_step11
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step11) (s40_done) (s47_done) (s85_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done)))
  )

  (:durative-action do_step12
    :duration (= ?duration 300)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done)))
  )

  (:durative-action do_step13
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step13) (s39_done) (s58_done) (s59_done) (s81_done) (s87_done) (s95_done) (s97_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done)))
  )

  (:durative-action do_step14
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step14) (s42_done) (s26_done) (s64_done) (s87_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done)))
  )

  (:durative-action do_step15
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step15) (s10_done) (s37_done) (s75_done) (s99_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done)))
  )

  (:durative-action do_step16
    :duration (= ?duration 600)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done)))
  )

  (:durative-action do_step17
    :duration (= ?duration 300)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done)))
  )

  (:durative-action do_step18
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step18) (s28_done) (s30_done) (s46_done) (s73_done) (s77_done) (s83_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done)))
  )

  (:durative-action do_step19
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step19) (s25_done) (s39_done) (s45_done) (s64_done) (s69_done) (s70_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done)))
  )

  (:durative-action do_step20
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step20) (s46_done) (s47_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done)))
  )

  (:durative-action do_step21
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step21) (s2_done) (s40_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done)))
  )

  (:durative-action do_step22
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step22) (s24_done) (s42_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done)))
  )

  (:durative-action do_step23
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step23) (s6_done) (s14_done) (s21_done) (s22_done) (s32_done) (s36_done) (s54_done) (s56_done) (s59_done) (s64_done) (s72_done) (s75_done) (s82_done) (s93_done) (s97_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done)))
  )

  (:durative-action do_step24
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step24) (s77_done) (s94_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done)))
  )

  (:durative-action do_step25
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step25) (s31_done) (s76_done) (s79_done) (s87_done) (s88_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done)))
  )

  (:durative-action do_step26
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step26) (s12_done) (s47_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done)))
  )

  (:durative-action do_step27
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step27) (s14_done) (s19_done) (s49_done) (s91_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done)))
  )

  (:durative-action do_step28
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step28) (s16_done) (s17_done) (s46_done) (s50_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done)))
  )

  (:durative-action do_step29
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step29) (s1_done) (s12_done) (s32_done) (s46_done) (s47_done) (s50_done) (s53_done) (s100_done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done)))
  )

  (:durative-action do_step30
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step30) (s22_done) (s75_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done)))
  )

  (:durative-action do_step31
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step31) (s24_done) (s98_done)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_done)))
  )

  (:durative-action do_step32
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step32) (s4_done) (s7_done) (s39_done) (s70_done) (s97_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_done)))
  )

  (:durative-action do_step33
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step33) (s9_done) (s36_done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_done)))
  )

  (:durative-action do_step34
    :duration (= ?duration 10)
    :condition (at start (and (step_pending step34) (s1_done) (s2_done) (s4_done) (s5_done) (s7_done) (s9_done) (s10_done) (s13_done) (s18_done) (s20_done) (s32_done) (s35_done) (s40_done) (s44_done) (s45_done) (s46_done) (s49_done) (s50_done) (s54_done) (s59_done) (s63_done) (s68_done) (s72_done) (s73_done) (s79_done) (s80_done) (s97_done) (s100_done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_done)))
  )

  (:durative-action do_step35
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step35) (s5_done) (s36_done) (s45_done) (s49_done) (s63_done) (s68_done) (s79_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_done)))
  )

  (:durative-action do_step36
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step36) (s50_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_done)))
  )

  (:durative-action do_step37
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step37) (s2_done) (s46_done) (s70_done)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_done)))
  )

  (:durative-action do_step38
    :duration (= ?duration 600)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_done)))
  )

  (:durative-action do_step39
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step39) (s4_done) (s7_done) (s38_done) (s93_done)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_done)))
  )

  (:durative-action do_step40
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step40) (s20_done) (s58_done) (s67_done) (s89_done) (s99_done) (s97_done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_done)))
  )

  (:durative-action do_step41
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step41) (s18_done) (s63_done) (s79_done)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_done)))
  )

  (:durative-action do_step42
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step42) (s60_done)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_done)))
  )

  (:durative-action do_step43
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step43) (s60_done)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_done)))
  )

  (:durative-action do_step44
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step44) (s63_done)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_done)))
  )

  (:durative-action do_step45
    :duration (= ?duration 300)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_done)))
  )

  (:durative-action do_step46
    :duration (= ?duration 300)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_done)))
  )

  (:durative-action do_step47
    :duration (= ?duration 720)
    :condition (at start (and (step_pending step47) (s21_done) (s55_done) (s56_done) (s62_done) (s76_done)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_done)))
  )

  (:durative-action do_step48
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step48) (s2_done) (s14_done) (s57_done) (s60_done) (s70_done) (s82_done)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_done)))
  )

  (:durative-action do_step49
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step49) (s7_done) (s45_done) (s94_done)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_done)))
  )

  (:durative-action do_step50
    :duration (= ?duration 1800)
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_done)))
  )

  (:durative-action do_step51
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step51) (s14_done) (s60_done) (s95_done)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51_done)))
  )

  (:durative-action do_step52
    :duration (= ?duration 360)
    :condition (at start (and (step_pending step52) (s42_done) (s62_done) (s85_done)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52_done)))
  )

  (:durative-action do_step53
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step53) (s9_done) (s31_done) (s45_done) (s76_done)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53_done)))
  )

  (:durative-action do_step54
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step54) (s47_done) (s57_done) (s58_done)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54_done)))
  )

  (:durative-action do_step55
    :duration (= ?duration 240)
    :condition (at start (and (step_pending step55) (s38_done)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55_done)))
  )

  (:durative-action do_step56
    :duration (= ?duration 420)
    :condition (at start (and (step_pending step56) (s45_done)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56_done)))
  )

  (:durative-action do_step57
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step57) (s36_done) (s79_done)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57_done)))
  )

  (:durative-action do_step58
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step58) (s9_done) (s12_done) (s16_done)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58_done)))
  )

  (:durative-action do_step59
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step59) (s5_done) (s12_done) (s76_done)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59_done)))
  )

  (:durative-action do_step60
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step60) (s36_done)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60_done)))
  )

  (:durative-action do_step61
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step61) (s4_done) (s7_done) (s76_done) (s93_done)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (s61_done)))
  )

  (:durative-action do_step62
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step62) (s45_done)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (s62_done)))
  )

  (:durative-action do_step63
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step63) (s52_done) (s59_done) (s98_done)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (s63_done)))
  )

  (:durative-action do_step64
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step64) (s28_done)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (s64_done)))
  )

  (:durative-action do_step65
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step65) (s5_done) (s31_done) (s57_done) (s50_done)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (s65_done)))
  )

  (:durative-action do_step66
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step66) (s9_done) (s11_done) (s42_done) (s81_done)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (s66_done)))
  )

  (:durative-action do_step67
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending step67) (s16_done) (s77_done)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (s67_done)))
  )

  (:durative-action do_step68
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step68) (s11_done) (s14_done) (s45_done) (s65_done) (s79_done)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (s68_done)))
  )

  (:durative-action do_step69
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step69) (s55_done) (s59_done)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (s69_done)))
  )

  (:durative-action do_step70
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step70) (s5_done) (s92_done) (s77_done) (s31_done)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (s70_done)))
  )

  (:durative-action do_step71
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step71) (s38_done) (s76_done) (s67_done)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (s71_done)))
  )

  (:durative-action do_step72
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step72) (s4_done) (s12_done) (s56_done)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (s72_done)))
  )

  (:durative-action do_step73
    :duration (= ?duration 60)
    :condition (at start (step_pending step73))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (s73_done)))
  )

  (:durative-action do_step74
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step74) (s7_done) (s15_done) (s40_done) (s79_done) (s99_done)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (s74_done)))
  )

  (:durative-action do_step75
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step75) (s26_done) (s38_done) (s57_done) (s97_done)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (s75_done)))
  )

  (:durative-action do_step76
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step76) (s45_done)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (s76_done)))
  )

  (:durative-action do_step77
    :duration (= ?duration 120)
    :condition (at start (step_pending step77))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (s77_done)))
  )

  (:durative-action do_step78
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step78) (s4_done) (s19_done) (s69_done) (s97_done) (s46_done)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (s78_done)))
  )

  (:durative-action do_step79
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step79) (s45_done) (s46_done)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (s79_done)))
  )

  (:durative-action do_step80
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step80) (s13_done) (s16_done) (s31_done) (s51_done) (s92_done)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (s80_done)))
  )

  (:durative-action do_step81
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step81) (s48_done) (s54_done) (s16_done) (s76_done)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (s81_done)))
  )

  (:durative-action do_step82
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step82) (s14_done) (s39_done) (s59_done) (s54_done) (s98_done) (s69_done)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (s82_done)))
  )

  (:durative-action do_step83
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step83) (s12_done) (s59_done) (s62_done) (s54_done) (s94_done) (s98_done)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (s83_done)))
  )

  (:durative-action do_step84
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step84) (s10_done) (s89_done) (s46_done)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (s84_done)))
  )

  (:durative-action do_step85
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step85) (s56_done) (s62_done)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (s85_done)))
  )

  (:durative-action do_step86
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step86) (s20_done) (s38_done) (s55_done) (s62_done) (s48_done)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (s86_done)))
  )

  (:durative-action do_step87
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step87) (s76_done) (s31_done)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (s87_done)))
  )

  (:durative-action do_step88
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step88) (s21_done) (s28_done) (s97_done)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (s88_done)))
  )

  (:durative-action do_step89
    :duration (= ?duration 120)
    :condition (at start (and (step_pending step89) (s24_done) (s30_done)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (s89_done)))
  )

  (:durative-action do_step90
    :duration (= ?duration 60)
    :condition (at start (step_pending step90))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (s90_done)))
  )

  (:durative-action do_step91
    :duration (= ?duration 1500)
    :condition (at start (and (step_pending step91) (s2_done) (s92_done) (s97_done)))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91)) (at end (s91_done)))
  )

  (:durative-action do_step92
    :duration (= ?duration 300)
    :condition (at start (step_pending step92))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92)) (at end (s92_done)))
  )

  (:durative-action do_step93
    :duration (= ?duration 180)
    :condition (at start (and (step_pending step93) (s38_done) (s92_done) (s97_done)))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93)) (at end (s93_done)))
  )

  (:durative-action do_step94
    :duration (= ?duration 60)
    :condition (at start (step_pending step94))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94)) (at end (s94_done)))
  )

  (:durative-action do_step95
    :duration (= ?duration 30)
    :condition (at start (step_pending step95))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95)) (at end (s95_done)))
  )

  (:durative-action do_step96
    :duration (= ?duration 30)
    :condition (at start (and (step_pending step96) (s54_done) (s82_done) (s63_done)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96)) (at end (s96_done)))
  )

  (:durative-action do_step97
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step97) (s36_done) (s62_done) (s79_done) (s45_done)))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97)) (at end (s97_done)))
  )

  (:durative-action do_step98
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step98) (s14_done) (s59_done)))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98)) (at end (s98_done)))
  )

  (:durative-action do_step99
    :duration (= ?duration 60)
    :condition (at start (and (step_pending step99) (s4_done) (s85_done)))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99)) (at end (s99_done)))
  )

  (:durative-action do_step100
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step100) (s30_done) (s54_done) (s72_done) (s90_done)))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100)) (at end (s100_done)))
  )
)
