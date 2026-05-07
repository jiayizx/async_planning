(define (domain british_shorthair_identification)
  (:requirements :durative-actions :typing)
  (:types step)
  (:constants
    step1 step2 step3 step4 step5 step6 step7 step8 step9 step10
    step11 step12 step13 step14 step15 step16 step17 step18 step19 step20
    step21 step22 step23 step24 step25 step26 step27 step28 step29 step30
    step31 step32 step33 step34 step35 step36 step37 step38 step39 step40
    step41 step42 step43 step44 step45 step46 step47 step48 step49 step50
    step51 step52 step53 step54 step55 step56 step57 step58 step59 step60
    step61 step62 step63 step64 step65 step66 step67 step68 step69 step70
    step71 step72 step73 step74 step75 step76 step77 step78 step79 step80
    step81 step82 step83 step84 step85 step86 step87 step88 step89 step90
    step91 step92 step93 step94 step95 step96 step97 step98 step99 step100 - step)

  (:predicates
    (pending ?s - step)
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

  ; One durative-action per step. Each action refers to the specific step constant(s)
  ; and to the semantic predicates for its predecessors. Effects set the step_done object
  ; and the unique semantic predicate for that action.

  (:durative-action do-step1
    :duration (= ?duration 120)
    :condition (and (at start (pending step1)) (at start (s32_done)))
    :effect (and (at start (not (pending step1))) (at end (step_done step1)) (at end (s1_done)))
  )

  (:durative-action do-step2
    :duration (= ?duration 60)
    :condition (and (at start (pending step2)) (at start (s4_done)) (at start (s59_done)) (at start (s94_done)) (at start (s97_done)))
    :effect (and (at start (not (pending step2))) (at end (step_done step2)) (at end (s2_done)))
  )

  (:durative-action do-step3
    :duration (= ?duration 30)
    :condition (at start (pending step3))
    :effect (and (at start (not (pending step3))) (at end (step_done step3)) (at end (s3_done)))
  )

  (:durative-action do-step4
    :duration (= ?duration 45)
    :condition (and (at start (pending step4)) (at start (s22_done)))
    :effect (and (at start (not (pending step4))) (at end (step_done step4)) (at end (s4_done)))
  )

  (:durative-action do-step5
    :duration (= ?duration 120)
    :condition (and (at start (pending step5)) (at start (s28_done)) (at start (s100_done)))
    :effect (and (at start (not (pending step5))) (at end (step_done step5)) (at end (s5_done)))
  )

  (:durative-action do-step6
    :duration (= ?duration 60)
    :condition (and (at start (pending step6)) (at start (s39_done)))
    :effect (and (at start (not (pending step6))) (at end (step_done step6)) (at end (s6_done)))
  )

  (:durative-action do-step7
    :duration (= ?duration 60)
    :condition (and (at start (pending step7)) (at start (s1_done)) (at start (s47_done)) (at start (s72_done)) (at start (s89_done)))
    :effect (and (at start (not (pending step7))) (at end (step_done step7)) (at end (s7_done)))
  )

  (:durative-action do-step8
    :duration (= ?duration 30)
    :condition (and (at start (pending step8)) (at start (s1_done)) (at start (s56_done)) (at start (s85_done)) (at start (s92_done)) (at start (s100_done)))
    :effect (and (at start (not (pending step8))) (at end (step_done step8)) (at end (s8_done)))
  )

  (:durative-action do-step9
    :duration (= ?duration 300)
    :condition (and (at start (pending step9)) (at start (s45_done)))
    :effect (and (at start (not (pending step9))) (at end (step_done step9)) (at end (s9_done)))
  )

  (:durative-action do-step10
    :duration (= ?duration 60)
    :condition (and (at start (pending step10)) (at start (s100_done)))
    :effect (and (at start (not (pending step10))) (at end (step_done step10)) (at end (s10_done)))
  )

  (:durative-action do-step11
    :duration (= ?duration 60)
    :condition (and (at start (pending step11)) (at start (s22_done)) (at start (s83_done)) (at start (s94_done)))
    :effect (and (at start (not (pending step11))) (at end (step_done step11)) (at end (s11_done)))
  )

  (:durative-action do-step12
    :duration (= ?duration 120)
    :condition (and (at start (pending step12)) (at start (s17_done)) (at start (s28_done)) (at start (s45_done)) (at start (s55_done)) (at start (s68_done)))
    :effect (and (at start (not (pending step12))) (at end (step_done step12)) (at end (s12_done)))
  )

  (:durative-action do-step13
    :duration (= ?duration 180)
    :condition (and (at start (pending step13)) (at start (s26_done)))
    :effect (and (at start (not (pending step13))) (at end (step_done step13)) (at end (s13_done)))
  )

  (:durative-action do-step14
    :duration (= ?duration 60)
    :condition (and (at start (pending step14)) (at start (s4_done)) (at start (s6_done)) (at start (s8_done)) (at start (s12_done)) (at start (s25_done)) (at start (s29_done)) (at start (s49_done)) (at start (s61_done)) (at start (s68_done)) (at start (s73_done)))
    :effect (and (at start (not (pending step14))) (at end (step_done step14)) (at end (s14_done)))
  )

  (:durative-action do-step15
    :duration (= ?duration 60)
    :condition (and (at start (pending step15)) (at start (s67_done)))
    :effect (and (at start (not (pending step15))) (at end (step_done step15)) (at end (s15_done)))
  )

  (:durative-action do-step16
    :duration (= ?duration 30)
    :condition (and (at start (pending step16)) (at start (s43_done)) (at start (s58_done)) (at start (s63_done)) (at start (s99_done)))
    :effect (and (at start (not (pending step16))) (at end (step_done step16)) (at end (s16_done)))
  )

  (:durative-action do-step17
    :duration (= ?duration 60)
    :condition (and (at start (pending step17)) (at start (s21_done)) (at start (s45_done)) (at start (s89_done)) (at start (s95_done)))
    :effect (and (at start (not (pending step17))) (at end (step_done step17)) (at end (s17_done)))
  )

  (:durative-action do-step18
    :duration (= ?duration 120)
    :condition (and (at start (pending step18)) (at start (s6_done)) (at start (s39_done)) (at start (s84_done)) (at start (s92_done)))
    :effect (and (at start (not (pending step18))) (at end (step_done step18)) (at end (s18_done)))
  )

  (:durative-action do-step19
    :duration (= ?duration 300)
    :condition (and (at start (pending step19)) (at start (s11_done)) (at start (s44_done)) (at start (s57_done)) (at start (s94_done)))
    :effect (and (at start (not (pending step19))) (at end (step_done step19)) (at end (s19_done)))
  )

  (:durative-action do-step20
    :duration (= ?duration 60)
    :condition (and (at start (pending step20)) (at start (s43_done)) (at start (s52_done)) (at start (s68_done)))
    :effect (and (at start (not (pending step20))) (at end (step_done step20)) (at end (s20_done)))
  )

  (:durative-action do-step21
    :duration (= ?duration 120)
    :condition (and (at start (pending step21)) (at start (s93_done)))
    :effect (and (at start (not (pending step21))) (at end (step_done step21)) (at end (s21_done)))
  )

  (:durative-action do-step22
    :duration (= ?duration 60)
    :condition (and (at start (pending step22)) (at start (s100_done)))
    :effect (and (at start (not (pending step22))) (at end (step_done step22)) (at end (s22_done)))
  )

  (:durative-action do-step23
    :duration (= ?duration 60)
    :condition (and (at start (pending step23)) (at start (s5_done)) (at start (s7_done)) (at start (s32_done)) (at start (s59_done)) (at start (s65_done)) (at start (s69_done)) (at start (s81_done)))
    :effect (and (at start (not (pending step23))) (at end (step_done step23)) (at end (s23_done)))
  )

  (:durative-action do-step24
    :duration (= ?duration 60)
    :condition (and (at start (pending step24)) (at start (s50_done)) (at start (s69_done)))
    :effect (and (at start (not (pending step24))) (at end (step_done step24)) (at end (s24_done)))
  )

  (:durative-action do-step25
    :duration (= ?duration 30)
    :condition (and (at start (pending step25)) (at start (s10_done)) (at start (s55_done)) (at start (s72_done)))
    :effect (and (at start (not (pending step25))) (at end (step_done step25)) (at end (s25_done)))
  )

  (:durative-action do-step26
    :duration (= ?duration 120)
    :condition (and (at start (pending step26)) (at start (s52_done)) (at start (s57_done)) (at start (s80_done)) (at start (s83_done)) (at start (s44_done)))
    :effect (and (at start (not (pending step26))) (at end (step_done step26)) (at end (s26_done)))
  )

  (:durative-action do-step27
    :duration (= ?duration 45)
    :condition (and (at start (pending step27)) (at start (s51_done)) (at start (s52_done)) (at start (s73_done)) (at start (s80_done)) (at start (s86_done)) (at start (s97_done)))
    :effect (and (at start (not (pending step27))) (at end (step_done step27)) (at end (s27_done)))
  )

  (:durative-action do-step28
    :duration (= ?duration 60)
    :condition (and (at start (pending step28)) (at start (s21_done)))
    :effect (and (at start (not (pending step28))) (at end (step_done step28)) (at end (s28_done)))
  )

  (:durative-action do-step29
    :duration (= ?duration 30)
    :condition (and (at start (pending step29)) (at start (s20_done)) (at start (s74_done)) (at start (s85_done)) (at start (s98_done)))
    :effect (and (at start (not (pending step29))) (at end (step_done step29)) (at end (s29_done)))
  )

  (:durative-action do-step30
    :duration (= ?duration 180)
    :condition (and (at start (pending step30)) (at start (s4_done)) (at start (s5_done)) (at start (s8_done)) (at start (s72_done)) (at start (s92_done)) (at start (s95_done)))
    :effect (and (at start (not (pending step30))) (at end (step_done step30)) (at end (s30_done)))
  )

  (:durative-action do-step31
    :duration (= ?duration 120)
    :condition (and (at start (pending step31)) (at start (s13_done)) (at start (s40_done)) (at start (s46_done)) (at start (s50_done)) (at start (s73_done)))
    :effect (and (at start (not (pending step31))) (at end (step_done step31)) (at end (s31_done)))
  )

  (:durative-action do-step32
    :duration (= ?duration 3600)
    :condition (and (at start (pending step32)) (at start (s85_done)))
    :effect (and (at start (not (pending step32))) (at end (step_done step32)) (at end (s32_done)))
  )

  (:durative-action do-step33
    :duration (= ?duration 60)
    :condition (at start (pending step33))
    :effect (and (at start (not (pending step33))) (at end (step_done step33)) (at end (s33_done)))
  )

  (:durative-action do-step34
    :duration (= ?duration 600)
    :condition (and (at start (pending step34)) (at start (s48_done)) (at start (s63_done)) (at start (s75_done)) (at start (s80_done)) (at start (s99_done)) (at start (s100_done)))
    :effect (and (at start (not (pending step34))) (at end (step_done step34)) (at end (s34_done)))
  )

  (:durative-action do-step35
    :duration (= ?duration 1800)
    :condition (and (at start (pending step35)) (at start (s91_done)) (at start (s73_done)))
    :effect (and (at start (not (pending step35))) (at end (step_done step35)) (at end (s35_done)))
  )

  (:durative-action do-step36
    :duration (= ?duration 30)
    :condition (and (at start (pending step36)) (at start (s8_done)) (at start (s42_done)) (at start (s69_done)) (at start (s70_done)))
    :effect (and (at start (not (pending step36))) (at end (step_done step36)) (at end (s36_done)))
  )

  (:durative-action do-step37
    :duration (= ?duration 60)
    :condition (and (at start (pending step37)) (at start (s25_done)) (at start (s39_done)) (at start (s72_done)) (at start (s81_done)))
    :effect (and (at start (not (pending step37))) (at end (step_done step37)) (at end (s37_done)))
  )

  (:durative-action do-step38
    :duration (= ?duration 900)
    :condition (and (at start (pending step38)) (at start (s91_done)))
    :effect (and (at start (not (pending step38))) (at end (step_done step38)) (at end (s38_done)))
  )

  (:durative-action do-step39
    :duration (= ?duration 600)
    :condition (at start (pending step39))
    :effect (and (at start (not (pending step39))) (at end (step_done step39)) (at end (s39_done)))
  )

  (:durative-action do-step40
    :duration (= ?duration 60)
    :condition (and (at start (pending step40)) (at start (s8_done)) (at start (s17_done)))
    :effect (and (at start (not (pending step40))) (at end (step_done step40)) (at end (s40_done)))
  )

  (:durative-action do-step41
    :duration (= ?duration 60)
    :condition (and (at start (pending step41)) (at start (s4_done)) (at start (s85_done)))
    :effect (and (at start (not (pending step41))) (at end (step_done step41)) (at end (s41_done)))
  )

  (:durative-action do-step42
    :duration (= ?duration 120)
    :condition (and (at start (pending step42)) (at start (s35_done)) (at start (s37_done)) (at start (s40_done)) (at start (s51_done)) (at start (s57_done)) (at start (s67_done)) (at start (s72_done)) (at start (s87_done)))
    :effect (and (at start (not (pending step42))) (at end (step_done step42)) (at end (s42_done)))
  )

  (:durative-action do-step43
    :duration (= ?duration 30)
    :condition (and (at start (pending step43)) (at start (s1_done)) (at start (s95_done)))
    :effect (and (at start (not (pending step43))) (at end (step_done step43)) (at end (s43_done)))
  )

  (:durative-action do-step44
    :duration (= ?duration 1200)
    :condition (at start (pending step44))
    :effect (and (at start (not (pending step44))) (at end (step_done step44)) (at end (s44_done)))
  )

  (:durative-action do-step45
    :duration (= ?duration 3600)
    :condition (at start (pending step45))
    :effect (and (at start (not (pending step45))) (at end (step_done step45)) (at end (s45_done)))
  )

  (:durative-action do-step46
    :duration (= ?duration 60)
    :condition (and (at start (pending step46)) (at start (s13_done)) (at start (s76_done)) (at start (s79_done)) (at start (s80_done)))
    :effect (and (at start (not (pending step46))) (at end (step_done step46)) (at end (s46_done)))
  )

  (:durative-action do-step47
    :duration (= ?duration 60)
    :condition (and (at start (pending step47)) (at start (s28_done)) (at start (s57_done)) (at start (s69_done)) (at start (s87_done)) (at start (s97_done)))
    :effect (and (at start (not (pending step47))) (at end (step_done step47)) (at end (s47_done)))
  )

  (:durative-action do-step48
    :duration (= ?duration 900)
    :condition (and (at start (pending step48)) (at start (s7_done)) (at start (s12_done)) (at start (s39_done)) (at start (s51_done)) (at start (s72_done)) (at start (s81_done)) (at start (s95_done)) (at start (s97_done)) (at start (s98_done)) (at start (s99_done)))
    :effect (and (at start (not (pending step48))) (at end (step_done step48)) (at end (s48_done)))
  )

  (:durative-action do-step49
    :duration (= ?duration 60)
    :condition (and (at start (pending step49)) (at start (s71_done)) (at start (s76_done)))
    :effect (and (at start (not (pending step49))) (at end (step_done step49)) (at end (s49_done)))
  )

  (:durative-action do-step50
    :duration (= ?duration 900)
    :condition (and (at start (pending step50)) (at start (s95_done)))
    :effect (and (at start (not (pending step50))) (at end (step_done step50)) (at end (s50_done)))
  )

  (:durative-action do-step51
    :duration (= ?duration 120)
    :condition (and (at start (pending step51)) (at start (s93_done)))
    :effect (and (at start (not (pending step51))) (at end (step_done step51)) (at end (s51_done)))
  )

  (:durative-action do-step52
    :duration (= ?duration 120)
    :condition (and (at start (pending step52)) (at start (s6_done)) (at start (s22_done)) (at start (s51_done)))
    :effect (and (at start (not (pending step52))) (at end (step_done step52)) (at end (s52_done)))
  )

  (:durative-action do-step53
    :duration (= ?duration 30)
    :condition (and (at start (pending step53)) (at start (s1_done)) (at start (s10_done)) (at start (s11_done)) (at start (s21_done)) (at start (s65_done)) (at start (s69_done)))
    :effect (and (at start (not (pending step53))) (at end (step_done step53)) (at end (s53_done)))
  )

  (:durative-action do-step54
    :duration (= ?duration 120)
    :condition (and (at start (pending step54)) (at start (s3_done)) (at start (s5_done)) (at start (s42_done)) (at start (s100_done)))
    :effect (and (at start (not (pending step54))) (at end (step_done step54)) (at end (s54_done)))
  )

  (:durative-action do-step55
    :duration (= ?duration 3600)
    :condition (at start (pending step55))
    :effect (and (at start (not (pending step55))) (at end (step_done step55)) (at end (s55_done)))
  )

  (:durative-action do-step56
    :duration (= ?duration 60)
    :condition (at start (pending step56))
    :effect (and (at start (not (pending step56))) (at end (step_done step56)) (at end (s56_done)))
  )

  (:durative-action do-step57
    :duration (= ?duration 60)
    :condition (and (at start (pending step57)) (at start (s66_done)))
    :effect (and (at start (not (pending step57))) (at end (step_done step57)) (at end (s57_done)))
  )

  (:durative-action do-step58
    :duration (= ?duration 120)
    :condition (and (at start (pending step58)) (at start (s4_done)) (at start (s23_done)) (at start (s80_done)) (at start (s91_done)))
    :effect (and (at start (not (pending step58))) (at end (step_done step58)) (at end (s58_done)))
  )

  (:durative-action do-step59
    :duration (= ?duration 120)
    :condition (and (at start (pending step59)) (at start (s11_done)) (at start (s45_done)) (at start (s55_done)) (at start (s73_done)) (at start (s89_done)) (at start (s65_done)))
    :effect (and (at start (not (pending step59))) (at end (step_done step59)) (at end (s59_done)))
  )

  (:durative-action do-step60
    :duration (= ?duration 1200)
    :condition (and (at start (pending step60)) (at start (s16_done)) (at start (s18_done)) (at start (s19_done)) (at start (s64_done)) (at start (s82_done)) (at start (s95_done)))
    :effect (and (at start (not (pending step60))) (at end (step_done step60)) (at end (s60_done)))
  )

  (:durative-action do-step61
    :duration (= ?duration 60)
    :condition (and (at start (pending step61)) (at start (s4_done)) (at start (s17_done)))
    :effect (and (at start (not (pending step61))) (at end (step_done step61)) (at end (s61_done)))
  )

  (:durative-action do-step62
    :duration (= ?duration 60)
    :condition (and (at start (pending step62)) (at start (s27_done)) (at start (s95_done)))
    :effect (and (at start (not (pending step62))) (at end (step_done step62)) (at end (s62_done)))
  )

  (:durative-action do-step63
    :duration (= ?duration 300)
    :condition (and (at start (pending step63)) (at start (s39_done)))
    :effect (and (at start (not (pending step63))) (at end (step_done step63)) (at end (s63_done)))
  )

  (:durative-action do-step64
    :duration (= ?duration 60)
    :condition (and (at start (pending step64)) (at start (s35_done)))
    :effect (and (at start (not (pending step64))) (at end (step_done step64)) (at end (s64_done)))
  )

  (:durative-action do-step65
    :duration (= ?duration 1800)
    :condition (at start (pending step65))
    :effect (and (at start (not (pending step65))) (at end (step_done step65)) (at end (s65_done)))
  )

  (:durative-action do-step66
    :duration (= ?duration 120)
    :condition (and (at start (pending step66)) (at start (s41_done)))
    :effect (and (at start (not (pending step66))) (at end (step_done step66)) (at end (s66_done)))
  )

  (:durative-action do-step67
    :duration (= ?duration 60)
    :condition (and (at start (pending step67)) (at start (s17_done)) (at start (s25_done)) (at start (s39_done)))
    :effect (and (at start (not (pending step67))) (at end (step_done step67)) (at end (s67_done)))
  )

  (:durative-action do-step68
    :duration (= ?duration 300)
    :condition (and (at start (pending step68)) (at start (s11_done)) (at start (s28_done)))
    :effect (and (at start (not (pending step68))) (at end (step_done step68)) (at end (s68_done)))
  )

  (:durative-action do-step69
    :duration (= ?duration 60)
    :condition (and (at start (pending step69)) (at start (s65_done)) (at start (s66_done)))
    :effect (and (at start (not (pending step69))) (at end (step_done step69)) (at end (s69_done)))
  )

  (:durative-action do-step70
    :duration (= ?duration 120)
    :condition (and (at start (pending step70)) (at start (s6_done)) (at start (s55_done)) (at start (s59_done)) (at start (s68_done)))
    :effect (and (at start (not (pending step70))) (at end (step_done step70)) (at end (s70_done)))
  )

  (:durative-action do-step71
    :duration (= ?duration 60)
    :condition (and (at start (pending step71)) (at start (s1_done)) (at start (s29_done)) (at start (s41_done)) (at start (s51_done)) (at start (s86_done)) (at start (s97_done)))
    :effect (and (at start (not (pending step71))) (at end (step_done step71)) (at end (s71_done)))
  )

  (:durative-action do-step72
    :duration (= ?duration 900)
    :condition (and (at start (pending step72)) (at start (s84_done)))
    :effect (and (at start (not (pending step72))) (at end (step_done step72)) (at end (s72_done)))
  )

  (:durative-action do-step73
    :duration (= ?duration 60)
    :condition (and (at start (pending step73)) (at start (s37_done)) (at start (s80_done)) (at start (s92_done)))
    :effect (and (at start (not (pending step73))) (at end (step_done step73)) (at end (s73_done)))
  )

  (:durative-action do-step74
    :duration (= ?duration 60)
    :condition (and (at start (pending step74)) (at start (s1_done)) (at start (s33_done)) (at start (s67_done)))
    :effect (and (at start (not (pending step74))) (at end (step_done step74)) (at end (s74_done)))
  )

  (:durative-action do-step75
    :duration (= ?duration 600)
    :condition (and (at start (pending step75)) (at start (s55_done)) (at start (s79_done)))
    :effect (and (at start (not (pending step75))) (at end (step_done step75)) (at end (s75_done)))
  )

  (:durative-action do-step76
    :duration (= ?duration 60)
    :condition (and (at start (pending step76)) (at start (s17_done)) (at start (s39_done)) (at start (s97_done)))
    :effect (and (at start (not (pending step76))) (at end (step_done step76)) (at end (s76_done)))
  )

  (:durative-action do-step77
    :duration (= ?duration 30)
    :condition (and (at start (pending step77)) (at start (s20_done)))
    :effect (and (at start (not (pending step77))) (at end (step_done step77)) (at end (s77_done)))
  )

  (:durative-action do-step78
    :duration (= ?duration 300)
    :condition (and (at start (pending step78)) (at start (s36_done)) (at start (s37_done)) (at start (s79_done)) (at start (s82_done)) (at start (s95_done)))
    :effect (and (at start (not (pending step78))) (at end (step_done step78)) (at end (s78_done)))
  )

  (:durative-action do-step79
    :duration (= ?duration 60)
    :condition (and (at start (pending step79)) (at start (s24_done)) (at start (s30_done)) (at start (s61_done)) (at start (s71_done)) (at start (s83_done)) (at start (s94_done)) (at start (s65_done)))
    :effect (and (at start (not (pending step79))) (at end (step_done step79)) (at end (s79_done)))
  )

  (:durative-action do-step80
    :duration (= ?duration 120)
    :condition (and (at start (pending step80)) (at start (s44_done)) (at start (s92_done)))
    :effect (and (at start (not (pending step80))) (at end (step_done step80)) (at end (s80_done)))
  )

  (:durative-action do-step81
    :duration (= ?duration 1200)
    :condition (at start (pending step81))
    :effect (and (at start (not (pending step81))) (at end (step_done step81)) (at end (s81_done)))
  )

  (:durative-action do-step82
    :duration (= ?duration 120)
    :condition (and (at start (pending step82)) (at start (s3_done)) (at start (s35_done)) (at start (s47_done)) (at start (s55_done)) (at start (s67_done)))
    :effect (and (at start (not (pending step82))) (at end (step_done step82)) (at end (s82_done)))
  )

  (:durative-action do-step83
    :duration (= ?duration 60)
    :condition (and (at start (pending step83)) (at start (s28_done)) (at start (s72_done)) (at start (s94_done)))
    :effect (and (at start (not (pending step83))) (at end (step_done step83)) (at end (s83_done)))
  )

  (:durative-action do-step84
    :duration (= ?duration 7200)
    :condition (at start (pending step84))
    :effect (and (at start (not (pending step84))) (at end (step_done step84)) (at end (s84_done)))
  )

  (:durative-action do-step85
    :duration (= ?duration 600)
    :condition (at start (pending step85))
    :effect (and (at start (not (pending step85))) (at end (step_done step85)) (at end (s85_done)))
  )

  (:durative-action do-step86
    :duration (= ?duration 60)
    :condition (and (at start (pending step86)) (at start (s44_done)) (at start (s85_done)))
    :effect (and (at start (not (pending step86))) (at end (step_done step86)) (at end (s86_done)))
  )

  (:durative-action do-step87
    :duration (= ?duration 600)
    :condition (at start (pending step87))
    :effect (and (at start (not (pending step87))) (at end (step_done step87)) (at end (s87_done)))
  )

  (:durative-action do-step88
    :duration (= ?duration 60)
    :condition (and (at start (pending step88)) (at start (s70_done)) (at start (s94_done)))
    :effect (and (at start (not (pending step88))) (at end (step_done step88)) (at end (s88_done)))
  )

  (:durative-action do-step89
    :duration (= ?duration 1200)
    :condition (and (at start (pending step89)) (at start (s84_done)) (at start (s65_done)))
    :effect (and (at start (not (pending step89))) (at end (step_done step89)) (at end (s89_done)))
  )

  (:durative-action do-step90
    :duration (= ?duration 900)
    :condition (and (at start (pending step90)) (at start (s35_done)) (at start (s39_done)) (at start (s41_done)))
    :effect (and (at start (not (pending step90))) (at end (step_done step90)) (at end (s90_done)))
  )

  (:durative-action do-step91
    :duration (= ?duration 1800)
    :condition (and (at start (pending step91)) (at start (s92_done)))
    :effect (and (at start (not (pending step91))) (at end (step_done step91)) (at end (s91_done)))
  )

  (:durative-action do-step92
    :duration (= ?duration 1800)
    :condition (and (at start (pending step92)) (at start (s45_done)))
    :effect (and (at start (not (pending step92))) (at end (step_done step92)) (at end (s92_done)))
  )

  (:durative-action do-step93
    :duration (= ?duration 600)
    :condition (at start (pending step93))
    :effect (and (at start (not (pending step93))) (at end (step_done step93)) (at end (s93_done)))
  )

  (:durative-action do-step94
    :duration (= ?duration 300)
    :condition (at start (pending step94))
    :effect (and (at start (not (pending step94))) (at end (step_done step94)) (at end (s94_done)))
  )

  (:durative-action do-step95
    :duration (= ?duration 2700)
    :condition (and (at start (pending step95)) (at start (s11_done)))
    :effect (and (at start (not (pending step95))) (at end (step_done step95)) (at end (s95_done)))
  )

  (:durative-action do-step96
    :duration (= ?duration 60)
    :condition (and (at start (pending step96)) (at start (s11_done)) (at start (s33_done)) (at start (s39_done)) (at start (s82_done)))
    :effect (and (at start (not (pending step96))) (at end (step_done step96)) (at end (s96_done)))
  )

  (:durative-action do-step97
    :duration (= ?duration 600)
    :condition (and (at start (pending step97)) (at start (s39_done)))
    :effect (and (at start (not (pending step97))) (at end (step_done step97)) (at end (s97_done)))
  )

  (:durative-action do-step98
    :duration (= ?duration 120)
    :condition (and (at start (pending step98)) (at start (s56_done)) (at start (s80_done)) (at start (s92_done)))
    :effect (and (at start (not (pending step98))) (at end (step_done step98)) (at end (s98_done)))
  )

  (:durative-action do-step99
    :duration (= ?duration 60)
    :condition (and (at start (pending step99)) (at start (s5_done)) (at start (s18_done)) (at start (s35_done)) (at start (s66_done)) (at start (s87_done)))
    :effect (and (at start (not (pending step99))) (at end (step_done step99)) (at end (s99_done)))
  )

  (:durative-action do-step100
    :duration (= ?duration 60)
    :condition (at start (pending step100))
    :effect (and (at start (not (pending step100))) (at end (step_done step100)) (at end (s100_done)))
  )
)
