(define (domain cupcake-stand)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete) (s2_complete) (s3_complete) (s4_complete) (s5_complete)
    (s6_complete) (s7_complete) (s8_complete) (s9_complete) (s10_complete)
    (s11_complete) (s12_complete) (s13_complete) (s14_complete) (s15_complete)
    (s16_complete) (s17_complete) (s18_complete) (s19_complete) (s20_complete)
    (s21_complete) (s22_complete) (s23_complete) (s24_complete) (s25_complete)
    (s26_complete) (s27_complete) (s28_complete) (s29_complete) (s30_complete)
    (s31_complete) (s32_complete) (s33_complete) (s34_complete) (s35_complete)
    (s36_complete) (s37_complete) (s38_complete) (s39_complete) (s40_complete)
    (s41_complete) (s42_complete) (s43_complete) (s44_complete) (s45_complete)
    (s46_complete) (s47_complete) (s48_complete) (s49_complete) (s50_complete)
    (s51_complete) (s52_complete) (s53_complete) (s54_complete) (s55_complete)
    (s56_complete) (s57_complete) (s58_complete) (s59_complete) (s60_complete)
    (s61_complete) (s62_complete) (s63_complete) (s64_complete) (s65_complete)
    (s66_complete) (s67_complete) (s68_complete) (s69_complete) (s70_complete)
    (s71_complete) (s72_complete) (s73_complete) (s74_complete) (s75_complete)
    (s76_complete) (s77_complete) (s78_complete) (s79_complete) (s80_complete)
    (s81_complete) (s82_complete) (s83_complete) (s84_complete) (s85_complete)
    (s86_complete) (s87_complete) (s88_complete) (s89_complete) (s90_complete)
    (s91_complete) (s92_complete) (s93_complete) (s94_complete) (s95_complete)
    (s96_complete) (s97_complete) (s98_complete) (s99_complete) (s100_complete)
  )

  (:durative-action do-step1
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step1)) (at start (s10_complete)) (at start (s24_complete)))
    :effect (and (at end (not (step_pending step1))) (at end (step_done step1)) (at end (s1_complete))))

  (:durative-action do-step2
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step2)) (at start (s42_complete)))
    :effect (and (at end (not (step_pending step2))) (at end (step_done step2)) (at end (s2_complete))))

  (:durative-action do-step3
    :duration (= ?duration 1800)
    :condition (at start (step_pending step3))
    :effect (and (at end (not (step_pending step3))) (at end (step_done step3)) (at end (s3_complete))))

  (:durative-action do-step4
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step4)) (at start (s21_complete)) (at start (s24_complete)) (at start (s62_complete)) (at start (s85_complete)) (at start (s96_complete)))
    :effect (and (at end (not (step_pending step4))) (at end (step_done step4)) (at end (s4_complete))))

  (:durative-action do-step5
    :duration (= ?duration 3600)
    :condition (at start (step_pending step5))
    :effect (and (at end (not (step_pending step5))) (at end (step_done step5)) (at end (s5_complete))))

  (:durative-action do-step6
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (s10_complete)) (at start (s37_complete)) (at start (s57_complete)) (at start (s65_complete)) (at start (s95_complete)))
    :effect (and (at end (not (step_pending step6))) (at end (step_done step6)) (at end (s6_complete))))

  (:durative-action do-step7
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step7)) (at start (s6_complete)) (at start (s49_complete)) (at start (s64_complete)) (at start (s74_complete)))
    :effect (and (at end (not (step_pending step7))) (at end (step_done step7)) (at end (s7_complete))))

  (:durative-action do-step8
    :duration (= ?duration 1800)
    :condition (at start (step_pending step8))
    :effect (and (at end (not (step_pending step8))) (at end (step_done step8)) (at end (s8_complete))))

  (:durative-action do-step9
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step9)) (at start (s45_complete)) (at start (s78_complete)))
    :effect (and (at end (not (step_pending step9))) (at end (step_done step9)) (at end (s9_complete))))

  (:durative-action do-step10
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step10)) (at start (s14_complete)) (at start (s29_complete)) (at start (s41_complete)) (at start (s77_complete)) (at start (s91_complete)))
    :effect (and (at end (not (step_pending step10))) (at end (step_done step10)) (at end (s10_complete))))

  (:durative-action do-step11
    :duration (= ?duration 7200)
    :condition (at start (step_pending step11))
    :effect (and (at end (not (step_pending step11))) (at end (step_done step11)) (at end (s11_complete))))

  (:durative-action do-step12
    :duration (= ?duration 300)
    :condition (at start (step_pending step12))
    :effect (and (at end (not (step_pending step12))) (at end (step_done step12)) (at end (s12_complete))))

  (:durative-action do-step13
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step13)) (at start (s11_complete)) (at start (s29_complete)) (at start (s35_complete)) (at start (s47_complete)) (at start (s57_complete)))
    :effect (and (at end (not (step_pending step13))) (at end (step_done step13)) (at end (s13_complete))))

  (:durative-action do-step14
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step14)) (at start (s91_complete)))
    :effect (and (at end (not (step_pending step14))) (at end (step_done step14)) (at end (s14_complete))))

  (:durative-action do-step15
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (s20_complete)) (at start (s64_complete)))
    :effect (and (at end (not (step_pending step15))) (at end (step_done step15)) (at end (s15_complete))))

  (:durative-action do-step16
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step16)) (at start (s49_complete)) (at start (s86_complete)))
    :effect (and (at end (not (step_pending step16))) (at end (step_done step16)) (at end (s16_complete))))

  (:durative-action do-step17
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step17)) (at start (s2_complete)) (at start (s42_complete)) (at start (s45_complete)) (at start (s46_complete)) (at start (s76_complete)) (at start (s92_complete)))
    :effect (and (at end (not (step_pending step17))) (at end (step_done step17)) (at end (s17_complete))))

  (:durative-action do-step18
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step18)) (at start (s11_complete)) (at start (s16_complete)) (at start (s49_complete)))
    :effect (and (at end (not (step_pending step18))) (at end (step_done step18)) (at end (s18_complete))))

  (:durative-action do-step19
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step19)) (at start (s83_complete)) (at start (s89_complete)))
    :effect (and (at end (not (step_pending step19))) (at end (step_done step19)) (at end (s19_complete))))

  (:durative-action do-step20
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step20)) (at start (s11_complete)) (at start (s28_complete)) (at start (s19_complete)))
    :effect (and (at end (not (step_pending step20))) (at end (step_done step20)) (at end (s20_complete))))

  (:durative-action do-step21
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step21)) (at start (s17_complete)) (at start (s46_complete)) (at start (s47_complete)) (at start (s49_complete)) (at start (s94_complete)) (at start (s95_complete)))
    :effect (and (at end (not (step_pending step21))) (at end (step_done step21)) (at end (s21_complete))))

  (:durative-action do-step22
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step22)) (at start (s8_complete)) (at start (s89_complete)))
    :effect (and (at end (not (step_pending step22))) (at end (step_done step22)) (at end (s22_complete))))

  (:durative-action do-step23
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step23)) (at start (s11_complete)) (at start (s31_complete)) (at start (s38_complete)) (at start (s59_complete)) (at start (s68_complete)))
    :effect (and (at end (not (step_pending step23))) (at end (step_done step23)) (at end (s23_complete))))

  (:durative-action do-step24
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step24)) (at start (s10_complete)) (at start (s19_complete)) (at start (s70_complete)) (at start (s91_complete)) (at start (s99_complete)))
    :effect (and (at end (not (step_pending step24))) (at end (step_done step24)) (at end (s24_complete))))

  (:durative-action do-step25
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step25)) (at start (s40_complete)) (at start (s70_complete)) (at start (s79_complete)) (at start (s63_complete)) (at start (s89_complete)))
    :effect (and (at end (not (step_pending step25))) (at end (step_done step25)) (at end (s25_complete))))

  (:durative-action do-step26
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step26)) (at start (s16_complete)) (at start (s22_complete)) (at start (s35_complete)) (at start (s87_complete)))
    :effect (and (at end (not (step_pending step26))) (at end (step_done step26)) (at end (s26_complete))))

  (:durative-action do-step27
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step27)) (at start (s35_complete)))
    :effect (and (at end (not (step_pending step27))) (at end (step_done step27)) (at end (s27_complete))))

  (:durative-action do-step28
    :duration (= ?duration 3600)
    :condition (at start (step_pending step28))
    :effect (and (at end (not (step_pending step28))) (at end (step_done step28)) (at end (s28_complete))))

  (:durative-action do-step29
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step29)) (at start (s18_complete)) (at start (s19_complete)) (at start (s77_complete)))
    :effect (and (at end (not (step_pending step29))) (at end (step_done step29)) (at end (s29_complete))))

  (:durative-action do-step30
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step30)) (at start (s11_complete)))
    :effect (and (at end (not (step_pending step30))) (at end (step_done step30)) (at end (s30_complete))))

  (:durative-action do-step31
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step31)) (at start (s24_complete)) (at start (s96_complete)) (at start (s83_complete)))
    :effect (and (at end (not (step_pending step31))) (at end (step_done step31)) (at end (s31_complete))))

  (:durative-action do-step32
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step32)) (at start (s47_complete)))
    :effect (and (at end (not (step_pending step32))) (at end (step_done step32)) (at end (s32_complete))))

  (:durative-action do-step33
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step33)) (at start (s86_complete)))
    :effect (and (at end (not (step_pending step33))) (at end (step_done step33)) (at end (s33_complete))))

  (:durative-action do-step34
    :duration (= ?duration 300)
    :condition (at start (step_pending step34))
    :effect (and (at end (not (step_pending step34))) (at end (step_done step34)) (at end (s34_complete))))

  (:durative-action do-step35
    :duration (= ?duration 300)
    :condition (at start (step_pending step35))
    :effect (and (at end (not (step_pending step35))) (at end (step_done step35)) (at end (s35_complete))))

  (:durative-action do-step36
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step36)) (at start (s43_complete)) (at start (s60_complete)) (at start (s90_complete)) (at start (s92_complete)))
    :effect (and (at end (not (step_pending step36))) (at end (step_done step36)) (at end (s36_complete))))

  (:durative-action do-step37
    :duration (= ?duration 300)
    :condition (at start (step_pending step37))
    :effect (and (at end (not (step_pending step37))) (at end (step_done step37)) (at end (s37_complete))))

  (:durative-action do-step38
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step38)) (at start (s91_complete)) (at start (s92_complete)))
    :effect (and (at end (not (step_pending step38))) (at end (step_done step38)) (at end (s38_complete))))

  (:durative-action do-step39
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step39)) (at start (s22_complete)) (at start (s55_complete)) (at start (s42_complete)) (at start (s79_complete)) (at start (s57_complete)))
    :effect (and (at end (not (step_pending step39))) (at end (step_done step39)) (at end (s39_complete))))

  (:durative-action do-step40
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step40)) (at start (s31_complete)) (at start (s47_complete)))
    :effect (and (at end (not (step_pending step40))) (at end (step_done step40)) (at end (s40_complete))))

  (:durative-action do-step41
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step41)) (at start (s28_complete)) (at start (s56_complete)))
    :effect (and (at end (not (step_pending step41))) (at end (step_done step41)) (at end (s41_complete))))

  (:durative-action do-step42
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step42)) (at start (s69_complete)) (at start (s90_complete)))
    :effect (and (at end (not (step_pending step42))) (at end (step_done step42)) (at end (s42_complete))))

  (:durative-action do-step43
    :duration (= ?duration 3600)
    :condition (at start (step_pending step43))
    :effect (and (at end (not (step_pending step43))) (at end (step_done step43)) (at end (s43_complete))))

  (:durative-action do-step44
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step44)) (at start (s3_complete)) (at start (s6_complete)) (at start (s39_complete)) (at start (s68_complete)) (at start (s89_complete)) (at start (s96_complete)))
    :effect (and (at end (not (step_pending step44))) (at end (step_done step44)) (at end (s44_complete))))

  (:durative-action do-step45
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step45)) (at start (s52_complete)) (at start (s56_complete)) (at start (s86_complete)))
    :effect (and (at end (not (step_pending step45))) (at end (step_done step45)) (at end (s45_complete))))

  (:durative-action do-step46
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step46)) (at start (s15_complete)) (at start (s99_complete)))
    :effect (and (at end (not (step_pending step46))) (at end (step_done step46)) (at end (s46_complete))))

  (:durative-action do-step47
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step47)) (at start (s86_complete)))
    :effect (and (at end (not (step_pending step47))) (at end (step_done step47)) (at end (s47_complete))))

  (:durative-action do-step48
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step48)) (at start (s42_complete)) (at start (s77_complete)))
    :effect (and (at end (not (step_pending step48))) (at end (step_done step48)) (at end (s48_complete))))

  (:durative-action do-step49
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step49)) (at start (s90_complete)))
    :effect (and (at end (not (step_pending step49))) (at end (step_done step49)) (at end (s49_complete))))

  (:durative-action do-step50
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step50)) (at start (s14_complete)) (at start (s15_complete)) (at start (s20_complete)) (at start (s28_complete)) (at start (s31_complete)) (at start (s38_complete)) (at start (s96_complete)))
    :effect (and (at end (not (step_pending step50))) (at end (step_done step50)) (at end (s50_complete))))

  (:durative-action do-step51
    :duration (= ?duration 3000)
    :condition (and (at start (step_pending step51)) (at start (s13_complete)) (at start (s18_complete)) (at start (s55_complete)) (at start (s68_complete)) (at start (s98_complete)) (at start (s91_complete)))
    :effect (and (at end (not (step_pending step51))) (at end (step_done step51)) (at end (s51_complete))))

  (:durative-action do-step52
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step52)) (at start (s56_complete)))
    :effect (and (at end (not (step_pending step52))) (at end (step_done step52)) (at end (s52_complete))))

  (:durative-action do-step53
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step53)) (at start (s11_complete)) (at start (s56_complete)))
    :effect (and (at end (not (step_pending step53))) (at end (step_done step53)) (at end (s53_complete))))

  (:durative-action do-step54
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step54)) (at start (s17_complete)) (at start (s44_complete)) (at start (s55_complete)) (at start (s62_complete)) (at start (s90_complete)))
    :effect (and (at end (not (step_pending step54))) (at end (step_done step54)) (at end (s54_complete))))

  (:durative-action do-step55
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step55)) (at start (s43_complete)) (at start (s70_complete)))
    :effect (and (at end (not (step_pending step55))) (at end (step_done step55)) (at end (s55_complete))))

  (:durative-action do-step56
    :duration (= ?duration 7200)
    :condition (at start (step_pending step56))
    :effect (and (at end (not (step_pending step56))) (at end (step_done step56)) (at end (s56_complete))))

  (:durative-action do-step57
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step57)) (at start (s43_complete)) (at start (s61_complete)) (at start (s67_complete)) (at start (s95_complete)))
    :effect (and (at end (not (step_pending step57))) (at end (step_done step57)) (at end (s57_complete))))

  (:durative-action do-step58
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step58)) (at start (s93_complete)) (at start (s19_complete)))
    :effect (and (at end (not (step_pending step58))) (at end (step_done step58)) (at end (s58_complete))))

  (:durative-action do-step59
    :duration (= ?duration 900)
    :condition (at start (step_pending step59))
    :effect (and (at end (not (step_pending step59))) (at end (step_done step59)) (at end (s59_complete))))

  (:durative-action do-step60
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step60)) (at start (s5_complete)) (at start (s28_complete)) (at start (s48_complete)) (at start (s86_complete)) (at start (s90_complete)))
    :effect (and (at end (not (step_pending step60))) (at end (step_done step60)) (at end (s60_complete))))

  (:durative-action do-step61
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step61)) (at start (s20_complete)) (at start (s37_complete)) (at start (s64_complete)) (at start (s83_complete)) (at start (s89_complete)))
    :effect (and (at end (not (step_pending step61))) (at end (step_done step61)) (at end (s61_complete))))

  (:durative-action do-step62
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step62)) (at start (s19_complete)) (at start (s49_complete)))
    :effect (and (at end (not (step_pending step62))) (at end (step_done step62)) (at end (s62_complete))))

  (:durative-action do-step63
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step63)) (at start (s27_complete)) (at start (s47_complete)) (at start (s97_complete)))
    :effect (and (at end (not (step_pending step63))) (at end (step_done step63)) (at end (s63_complete))))

  (:durative-action do-step64
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step64)) (at start (s47_complete)))
    :effect (and (at end (not (step_pending step64))) (at end (step_done step64)) (at end (s64_complete))))

  (:durative-action do-step65
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step65)) (at start (s19_complete)) (at start (s70_complete)))
    :effect (and (at end (not (step_pending step65))) (at end (step_done step65)) (at end (s65_complete))))

  (:durative-action do-step66
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step66)) (at start (s1_complete)) (at start (s10_complete)) (at start (s17_complete)) (at start (s28_complete)) (at start (s68_complete)) (at start (s86_complete)) (at start (s91_complete)) (at start (s98_complete)))
    :effect (and (at end (not (step_pending step66))) (at end (step_done step66)) (at end (s66_complete))))

  (:durative-action do-step67
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step67)) (at start (s90_complete)))
    :effect (and (at end (not (step_pending step67))) (at end (step_done step67)) (at end (s67_complete))))

  (:durative-action do-step68
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step68)) (at start (s13_complete)) (at start (s64_complete)) (at start (s69_complete)) (at start (s95_complete)))
    :effect (and (at end (not (step_pending step68))) (at end (step_done step68)) (at end (s68_complete))))

  (:durative-action do-step69
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step69)) (at start (s97_complete)) (at start (s86_complete)))
    :effect (and (at end (not (step_pending step69))) (at end (step_done step69)) (at end (s69_complete))))

  (:durative-action do-step70
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step70)) (at start (s47_complete)))
    :effect (and (at end (not (step_pending step70))) (at end (step_done step70)) (at end (s70_complete))))

  (:durative-action do-step71
    :duration (= ?duration 3000)
    :condition (and (at start (step_pending step71)) (at start (s5_complete)) (at start (s14_complete)) (at start (s45_complete)) (at start (s46_complete)) (at start (s64_complete)))
    :effect (and (at end (not (step_pending step71))) (at end (step_done step71)) (at end (s71_complete))))

  (:durative-action do-step72
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step72)) (at start (s24_complete)) (at start (s71_complete)) (at start (s79_complete)))
    :effect (and (at end (not (step_pending step72))) (at end (step_done step72)) (at end (s72_complete))))

  (:durative-action do-step73
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step73)) (at start (s3_complete)) (at start (s33_complete)) (at start (s46_complete)))
    :effect (and (at end (not (step_pending step73))) (at end (step_done step73)) (at end (s73_complete))))

  (:durative-action do-step74
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step74)) (at start (s14_complete)) (at start (s40_complete)) (at start (s46_complete)) (at start (s49_complete)) (at start (s60_complete)) (at start (s95_complete)))
    :effect (and (at end (not (step_pending step74))) (at end (step_done step74)) (at end (s74_complete))))

  (:durative-action do-step75
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step75)) (at start (s47_complete)) (at start (s49_complete)) (at start (s86_complete)))
    :effect (and (at end (not (step_pending step75))) (at end (step_done step75)) (at end (s75_complete))))

  (:durative-action do-step76
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step76)) (at start (s35_complete)) (at start (s92_complete)))
    :effect (and (at end (not (step_pending step76))) (at end (step_done step76)) (at end (s76_complete))))

  (:durative-action do-step77
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step77)) (at start (s86_complete)))
    :effect (and (at end (not (step_pending step77))) (at end (step_done step77)) (at end (s77_complete))))

  (:durative-action do-step78
    :duration (= ?duration 300)
    :condition (at start (step_pending step78))
    :effect (and (at end (not (step_pending step78))) (at end (step_done step78)) (at end (s78_complete))))

  (:durative-action do-step79
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step79)) (at start (s92_complete)))
    :effect (and (at end (not (step_pending step79))) (at end (step_done step79)) (at end (s79_complete))))

  (:durative-action do-step80
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step80)) (at start (s8_complete)) (at start (s42_complete)) (at start (s48_complete)) (at start (s57_complete)) (at start (s58_complete)) (at start (s60_complete)) (at start (s95_complete)) (at start (s45_complete)))
    :effect (and (at end (not (step_pending step80))) (at end (step_done step80)) (at end (s80_complete))))

  (:durative-action do-step81
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step81)) (at start (s42_complete)))
    :effect (and (at end (not (step_pending step81))) (at end (step_done step81)) (at end (s81_complete))))

  (:durative-action do-step82
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step82)) (at start (s3_complete)) (at start (s31_complete)) (at start (s63_complete)) (at start (s50_complete)) (at start (s91_complete)))
    :effect (and (at end (not (step_pending step82))) (at end (step_done step82)) (at end (s82_complete))))

  (:durative-action do-step83
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step83)) (at start (s56_complete)))
    :effect (and (at end (not (step_pending step83))) (at end (step_done step83)) (at end (s83_complete))))

  (:durative-action do-step84
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step84)) (at start (s35_complete)) (at start (s56_complete)) (at start (s89_complete)) (at start (s75_complete)))
    :effect (and (at end (not (step_pending step84))) (at end (step_done step84)) (at end (s84_complete))))

  (:durative-action do-step85
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step85)) (at start (s33_complete)) (at start (s41_complete)) (at start (s61_complete)) (at start (s86_complete)))
    :effect (and (at end (not (step_pending step85))) (at end (step_done step85)) (at end (s85_complete))))

  (:durative-action do-step86
    :duration (= ?duration 1800)
    :condition (at start (step_pending step86))
    :effect (and (at end (not (step_pending step86))) (at end (step_done step86)) (at end (s86_complete))))

  (:durative-action do-step87
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step87)) (at start (s42_complete)))
    :effect (and (at end (not (step_pending step87))) (at end (step_done step87)) (at end (s87_complete))))

  (:durative-action do-step88
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step88)) (at start (s5_complete)))
    :effect (and (at end (not (step_pending step88))) (at end (step_done step88)) (at end (s88_complete))))

  (:durative-action do-step89
    :duration (= ?duration 1200)
    :condition (at start (step_pending step89))
    :effect (and (at end (not (step_pending step89))) (at end (step_done step89)) (at end (s89_complete))))

  (:durative-action do-step90
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step90)) (at start (s56_complete)) (at start (s92_complete)))
    :effect (and (at end (not (step_pending step90))) (at end (step_done step90)) (at end (s90_complete))))

  (:durative-action do-step91
    :duration (= ?duration 300)
    :condition (at start (step_pending step91))
    :effect (and (at end (not (step_pending step91))) (at end (step_done step91)) (at end (s91_complete))))

  (:durative-action do-step92
    :duration (= ?duration 120)
    :condition (at start (step_pending step92))
    :effect (and (at end (not (step_pending step92))) (at end (step_done step92)) (at end (s92_complete))))

  (:durative-action do-step93
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending step93)) (at start (s1_complete)) (at start (s14_complete)) (at start (s37_complete)) (at start (s79_complete)) (at start (s86_complete)) (at start (s99_complete)))
    :effect (and (at end (not (step_pending step93))) (at end (step_done step93)) (at end (s93_complete))))

  (:durative-action do-step94
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step94)) (at start (s43_complete)) (at start (s69_complete)) (at start (s95_complete)) (at start (s99_complete)))
    :effect (and (at end (not (step_pending step94))) (at end (step_done step94)) (at end (s94_complete))))

  (:durative-action do-step95
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step95)) (at start (s11_complete)) (at start (s59_complete)) (at start (s69_complete)))
    :effect (and (at end (not (step_pending step95))) (at end (step_done step95)) (at end (s95_complete))))

  (:durative-action do-step96
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step96)) (at start (s9_complete)) (at start (s11_complete)) (at start (s20_complete)) (at start (s29_complete)) (at start (s31_complete)) (at start (s41_complete)) (at start (s61_complete)))
    :effect (and (at end (not (step_pending step96))) (at end (step_done step96)) (at end (s96_complete))))

  (:durative-action do-step97
    :duration (= ?duration 120)
    :condition (at start (step_pending step97))
    :effect (and (at end (not (step_pending step97))) (at end (step_done step97)) (at end (s97_complete))))

  (:durative-action do-step98
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step98)) (at start (s12_complete)) (at start (s27_complete)) (at start (s39_complete)) (at start (s69_complete)))
    :effect (and (at end (not (step_pending step98))) (at end (step_done step98)) (at end (s98_complete))))

  (:durative-action do-step99
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step99)) (at start (s41_complete)))
    :effect (and (at end (not (step_pending step99))) (at end (step_done step99)) (at end (s99_complete))))

  (:durative-action do-step100
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step100)) (at start (s66_complete)) (at start (s79_complete)) (at start (s85_complete)))
    :effect (and (at end (not (step_pending step100))) (at end (step_done step100)) (at end (s100_complete))))
)
