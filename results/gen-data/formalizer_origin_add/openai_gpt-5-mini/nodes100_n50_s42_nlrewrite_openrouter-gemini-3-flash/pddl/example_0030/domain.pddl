(define (domain drum_customization)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    (s1_sem) (s2_sem) (s3_sem) (s4_sem) (s5_sem) (s6_sem) (s7_sem) (s8_sem) (s9_sem) (s10_sem)
    (s11_sem) (s12_sem) (s13_sem) (s14_sem) (s15_sem) (s16_sem) (s17_sem) (s18_sem) (s19_sem) (s20_sem)
    (s21_sem) (s22_sem) (s23_sem) (s24_sem) (s25_sem) (s26_sem) (s27_sem) (s28_sem) (s29_sem) (s30_sem)
    (s31_sem) (s32_sem) (s33_sem) (s34_sem) (s35_sem) (s36_sem) (s37_sem) (s38_sem) (s39_sem) (s40_sem)
    (s41_sem) (s42_sem) (s43_sem) (s44_sem) (s45_sem) (s46_sem) (s47_sem) (s48_sem) (s49_sem) (s50_sem)
    (s51_sem) (s52_sem) (s53_sem) (s54_sem) (s55_sem) (s56_sem) (s57_sem) (s58_sem) (s59_sem) (s60_sem)
    (s61_sem) (s62_sem) (s63_sem) (s64_sem) (s65_sem) (s66_sem) (s67_sem) (s68_sem) (s69_sem) (s70_sem)
    (s71_sem) (s72_sem) (s73_sem) (s74_sem) (s75_sem) (s76_sem) (s77_sem) (s78_sem) (s79_sem) (s80_sem)
    (s81_sem) (s82_sem) (s83_sem) (s84_sem) (s85_sem) (s86_sem) (s87_sem) (s88_sem) (s89_sem) (s90_sem)
    (s91_sem) (s92_sem) (s93_sem) (s94_sem) (s95_sem) (s96_sem) (s97_sem) (s98_sem) (s99_sem) (s100_sem)
  )

  ; One durative-action per step. Each action has exactly one :condition form and
  ; uses the durations specified in the problem statement. Preconditions at start
  ; include the step_pending for that step plus all required predecessor semantic predicates.

  (:durative-action do_step1
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step1)) (at start (s87_sem)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_sem)))
  )

  (:durative-action do_step2
    :duration (= ?duration 10800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_sem)))
  )

  (:durative-action do_step3
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step3)) (at start (s9_sem)) (at start (s19_sem)) (at start (s32_sem)) (at start (s62_sem)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_sem)))
  )

  (:durative-action do_step4
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step4)) (at start (s21_sem)) (at start (s39_sem)) (at start (s50_sem)) (at start (s67_sem)) (at start (s74_sem)) (at start (s75_sem)) (at start (s86_sem)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_sem)))
  )

  (:durative-action do_step5
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step5)) (at start (s8_sem)) (at start (s16_sem)) (at start (s46_sem)) (at start (s87_sem)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_sem)))
  )

  (:durative-action do_step6
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step6)) (at start (s44_sem)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_sem)))
  )

  (:durative-action do_step7
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step7)) (at start (s26_sem)) (at start (s82_sem)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_sem)))
  )

  (:durative-action do_step8
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step8)) (at start (s56_sem)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_sem)))
  )

  (:durative-action do_step9
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step9)) (at start (s51_sem)) (at start (s58_sem)) (at start (s62_sem)) (at start (s90_sem)) (at start (s91_sem)) (at start (s94_sem)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_sem)))
  )

  (:durative-action do_step10
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step10)) (at start (s30_sem)) (at start (s63_sem)) (at start (s85_sem)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_sem)))
  )

  (:durative-action do_step11
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step11)) (at start (s57_sem)) (at start (s95_sem)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_sem)))
  )

  (:durative-action do_step12
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step12)) (at start (s6_sem)) (at start (s14_sem)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_sem)))
  )

  (:durative-action do_step13
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step13)) (at start (s35_sem)) (at start (s96_sem)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_sem)))
  )

  (:durative-action do_step14
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (s35_sem)) (at start (s80_sem)) (at start (s84_sem)) (at start (s98_sem)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_sem)))
  )

  (:durative-action do_step15
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step15)) (at start (s27_sem)) (at start (s87_sem)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_sem)))
  )

  (:durative-action do_step16
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step16)) (at start (s35_sem)) (at start (s87_sem)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_sem)))
  )

  (:durative-action do_step17
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (s1_sem)) (at start (s42_sem)) (at start (s84_sem)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_sem)))
  )

  (:durative-action do_step18
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step18)) (at start (s87_sem)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_sem)))
  )

  (:durative-action do_step19
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step19)) (at start (s57_sem)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_sem)))
  )

  (:durative-action do_step20
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step20)) (at start (s98_sem)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_sem)))
  )

  (:durative-action do_step21
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step21)) (at start (s18_sem)) (at start (s46_sem)) (at start (s76_sem)) (at start (s91_sem)) (at start (s92_sem)) (at start (s83_sem)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_sem)))
  )

  (:durative-action do_step22
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step22)) (at start (s12_sem)) (at start (s51_sem)) (at start (s71_sem)) (at start (s91_sem)) (at start (s95_sem)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_sem)))
  )

  (:durative-action do_step23
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step23)) (at start (s7_sem)) (at start (s15_sem)) (at start (s19_sem)) (at start (s36_sem)) (at start (s55_sem)) (at start (s35_sem)) (at start (s91_sem)) (at start (s87_sem)) (at start (s93_sem)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_sem)))
  )

  (:durative-action do_step24
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step24)) (at start (s67_sem)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_sem)))
  )

  (:durative-action do_step25
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step25)) (at start (s58_sem)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_sem)))
  )

  (:durative-action do_step26
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step26)) (at start (s86_sem)) (at start (s35_sem)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_sem)))
  )

  (:durative-action do_step27
    :duration (= ?duration 18000)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_sem)))
  )

  (:durative-action do_step28
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step28)) (at start (s2_sem)) (at start (s24_sem)) (at start (s26_sem)) (at start (s30_sem)) (at start (s36_sem)) (at start (s55_sem)) (at start (s87_sem)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_sem)))
  )

  (:durative-action do_step29
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step29)) (at start (s64_sem)) (at start (s69_sem)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_sem)))
  )

  (:durative-action do_step30
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step30)) (at start (s46_sem)) (at start (s55_sem)) (at start (s86_sem)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_sem)))
  )

  (:durative-action do_step31
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step31)) (at start (s1_sem)) (at start (s15_sem)) (at start (s37_sem)) (at start (s67_sem)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_sem)))
  )

  (:durative-action do_step32
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step32)) (at start (s8_sem)) (at start (s47_sem)) (at start (s55_sem)) (at start (s90_sem)) (at start (s91_sem)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_sem)))
  )

  (:durative-action do_step33
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step33)) (at start (s20_sem)) (at start (s36_sem)) (at start (s57_sem)) (at start (s59_sem)) (at start (s60_sem)) (at start (s77_sem)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_sem)))
  )

  (:durative-action do_step34
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step34)) (at start (s4_sem)) (at start (s67_sem)) (at start (s75_sem)) (at start (s90_sem)) (at start (s97_sem)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_sem)))
  )

  (:durative-action do_step35
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step35)) (at start (s84_sem)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_sem)))
  )

  (:durative-action do_step36
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step36)) (at start (s45_sem)) (at start (s63_sem)) (at start (s64_sem)) (at start (s83_sem)) (at start (s87_sem)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_sem)))
  )

  (:durative-action do_step37
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step37)) (at start (s30_sem)) (at start (s67_sem)) (at start (s69_sem)) (at start (s35_sem)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_sem)))
  )

  (:durative-action do_step38
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step38)) (at start (s7_sem)) (at start (s52_sem)) (at start (s54_sem)) (at start (s98_sem)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_sem)))
  )

  (:durative-action do_step39
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step39)) (at start (s20_sem)) (at start (s82_sem)) (at start (s88_sem)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_sem)))
  )

  (:durative-action do_step40
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step40)) (at start (s4_sem)) (at start (s9_sem)) (at start (s35_sem)) (at start (s85_sem)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_sem)))
  )

  (:durative-action do_step41
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step41)) (at start (s24_sem)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_sem)))
  )

  (:durative-action do_step42
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step42)) (at start (s13_sem)) (at start (s46_sem)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_sem)))
  )

  (:durative-action do_step43
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step43)) (at start (s11_sem)) (at start (s22_sem)) (at start (s32_sem)) (at start (s35_sem)) (at start (s38_sem)) (at start (s52_sem)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_sem)))
  )

  (:durative-action do_step44
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step44)) (at start (s1_sem)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_sem)))
  )

  (:durative-action do_step45
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step45)) (at start (s24_sem)) (at start (s26_sem)) (at start (s67_sem)) (at start (s73_sem)) (at start (s84_sem)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_sem)))
  )

  (:durative-action do_step46
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step46)) (at start (s64_sem)) (at start (s83_sem)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_sem)))
  )

  (:durative-action do_step47
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step47)) (at start (s7_sem)) (at start (s15_sem)) (at start (s24_sem)) (at start (s27_sem)) (at start (s44_sem)) (at start (s73_sem)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_sem)))
  )

  (:durative-action do_step48
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step48)) (at start (s54_sem)) (at start (s62_sem)) (at start (s94_sem)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_sem)))
  )

  (:durative-action do_step49
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step49)) (at start (s27_sem)) (at start (s58_sem)) (at start (s63_sem)) (at start (s72_sem)) (at start (s79_sem)) (at start (s80_sem)) (at start (s82_sem)) (at start (s94_sem)) (at start (s97_sem)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_sem)))
  )

  (:durative-action do_step50
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step50)) (at start (s6_sem)) (at start (s96_sem)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_sem)))
  )

  (:durative-action do_step51
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step51)) (at start (s1_sem)) (at start (s67_sem)) (at start (s89_sem)) (at start (s73_sem)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51_sem)))
  )

  (:durative-action do_step52
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step52)) (at start (s58_sem)) (at start (s72_sem)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52_sem)))
  )

  (:durative-action do_step53
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step53)) (at start (s2_sem)) (at start (s52_sem)) (at start (s96_sem)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53_sem)))
  )

  (:durative-action do_step54
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step54)) (at start (s21_sem)) (at start (s27_sem)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54_sem)))
  )

  (:durative-action do_step55
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step55))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55_sem)))
  )

  (:durative-action do_step56
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step56)) (at start (s24_sem)) (at start (s29_sem)) (at start (s42_sem)) (at start (s63_sem)) (at start (s69_sem)) (at start (s75_sem)) (at start (s97_sem)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56_sem)))
  )

  (:durative-action do_step57
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step57)) (at start (s8_sem)) (at start (s63_sem)) (at start (s98_sem)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57_sem)))
  )

  (:durative-action do_step58
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step58)) (at start (s64_sem)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58_sem)))
  )

  (:durative-action do_step59
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step59)) (at start (s64_sem)) (at start (s72_sem)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59_sem)))
  )

  (:durative-action do_step60
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step60)) (at start (s53_sem)) (at start (s69_sem)) (at start (s95_sem)) (at start (s93_sem)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60_sem)))
  )

  (:durative-action do_step61
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step61)) (at start (s14_sem)) (at start (s76_sem)) (at start (s80_sem)) (at start (s54_sem)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (s61_sem)))
  )

  (:durative-action do_step62
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step62)) (at start (s87_sem)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (s62_sem)))
  )

  (:durative-action do_step63
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step63)) (at start (s44_sem)) (at start (s52_sem)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (s63_sem)))
  )

  (:durative-action do_step64
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step64)) (at start (s52_sem)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (s64_sem)))
  )

  (:durative-action do_step65
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step65)) (at start (s6_sem)) (at start (s54_sem)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (s65_sem)))
  )

  (:durative-action do_step66
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step66)) (at start (s35_sem)) (at start (s72_sem)) (at start (s87_sem)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (s66_sem)))
  )

  (:durative-action do_step67
    :duration (= ?duration 1800)
    :condition (at start (step_pending step67))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (s67_sem)))
  )

  (:durative-action do_step68
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step68)) (at start (s1_sem)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (s68_sem)))
  )

  (:durative-action do_step69
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step69)) (at start (s44_sem)) (at start (s67_sem)) (at start (s64_sem)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (s69_sem)))
  )

  (:durative-action do_step70
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step70)) (at start (s2_sem)) (at start (s15_sem)) (at start (s34_sem)) (at start (s40_sem)) (at start (s52_sem)) (at start (s56_sem)) (at start (s67_sem)) (at start (s83_sem)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (s70_sem)))
  )

  (:durative-action do_step71
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step71)) (at start (s35_sem)) (at start (s50_sem)) (at start (s97_sem)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (s71_sem)))
  )

  (:durative-action do_step72
    :duration (= ?duration 864000)
    :condition (at start (step_pending step72))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (s72_sem)))
  )

  (:durative-action do_step73
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step73)) (at start (s20_sem)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (s73_sem)))
  )

  (:durative-action do_step74
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step74)) (at start (s2_sem)) (at start (s67_sem)) (at start (s83_sem)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (s74_sem)))
  )

  (:durative-action do_step75
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step75)) (at start (s86_sem)) (at start (s92_sem)) (at start (s97_sem)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (s75_sem)))
  )

  (:durative-action do_step76
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step76)) (at start (s35_sem)) (at start (s92_sem)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (s76_sem)))
  )

  (:durative-action do_step77
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step77)) (at start (s26_sem)) (at start (s59_sem)) (at start (s60_sem)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (s77_sem)))
  )

  (:durative-action do_step78
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step78)) (at start (s30_sem)) (at start (s39_sem)) (at start (s51_sem)) (at start (s81_sem)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (s78_sem)))
  )

  (:durative-action do_step79
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step79)) (at start (s27_sem)) (at start (s76_sem)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (s79_sem)))
  )

  (:durative-action do_step80
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step80)) (at start (s13_sem)) (at start (s25_sem)) (at start (s42_sem)) (at start (s48_sem)) (at start (s75_sem)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (s80_sem)))
  )

  (:durative-action do_step81
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step81)) (at start (s11_sem)) (at start (s17_sem)) (at start (s39_sem)) (at start (s41_sem)) (at start (s52_sem)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (s81_sem)))
  )

  (:durative-action do_step82
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step82)) (at start (s18_sem)) (at start (s51_sem)) (at start (s79_sem)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (s82_sem)))
  )

  (:durative-action do_step83
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step83)) (at start (s1_sem)) (at start (s35_sem)) (at start (s52_sem)) (at start (s67_sem)) (at start (s86_sem)) (at start (s98_sem)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (s83_sem)))
  )

  (:durative-action do_step84
    :duration (= ?duration 7200)
    :condition (at start (step_pending step84))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (s84_sem)))
  )

  (:durative-action do_step85
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step85)) (at start (s72_sem)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (s85_sem)))
  )

  (:durative-action do_step86
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step86)) (at start (s95_sem)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (s86_sem)))
  )

  (:durative-action do_step87
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step87)) (at start (s95_sem)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (s87_sem)))
  )

  (:durative-action do_step88
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step88)) (at start (s27_sem)) (at start (s62_sem)) (at start (s79_sem)) (at start (s91_sem)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (s88_sem)))
  )

  (:durative-action do_step89
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step89)) (at start (s67_sem)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (s89_sem)))
  )

  (:durative-action do_step90
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step90)) (at start (s45_sem)) (at start (s96_sem)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (s90_sem)))
  )

  (:durative-action do_step91
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step91)) (at start (s72_sem)) (at start (s98_sem)))
    :effect (and (at start (not (step_pending step91))) (at end (step_done step91)) (at end (s91_sem)))
  )

  (:durative-action do_step92
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step92)) (at start (s44_sem)) (at start (s63_sem)) (at start (s96_sem)) (at start (s97_sem)))
    :effect (and (at start (not (step_pending step92))) (at end (step_done step92)) (at end (s92_sem)))
  )

  (:durative-action do_step93
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step93)) (at start (s1_sem)) (at start (s67_sem)) (at start (s88_sem)) (at start (s97_sem)))
    :effect (and (at start (not (step_pending step93))) (at end (step_done step93)) (at end (s93_sem)))
  )

  (:durative-action do_step94
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step94)) (at start (s16_sem)) (at start (s26_sem)) (at start (s50_sem)) (at start (s58_sem)) (at start (s72_sem)) (at start (s96_sem)) (at start (s98_sem)))
    :effect (and (at start (not (step_pending step94))) (at end (step_done step94)) (at end (s94_sem)))
  )

  (:durative-action do_step95
    :duration (= ?duration 3600)
    :condition (at start (step_pending step95))
    :effect (and (at start (not (step_pending step95))) (at end (step_done step95)) (at end (s95_sem)))
  )

  (:durative-action do_step96
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step96)) (at start (s54_sem)))
    :effect (and (at start (not (step_pending step96))) (at end (step_done step96)) (at end (s96_sem)))
  )

  (:durative-action do_step97
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step97)) (at start (s67_sem)))
    :effect (and (at start (not (step_pending step97))) (at end (step_done step97)) (at end (s97_sem)))
  )

  (:durative-action do_step98
    :duration (= ?duration 259200)
    :condition (at start (step_pending step98))
    :effect (and (at start (not (step_pending step98))) (at end (step_done step98)) (at end (s98_sem)))
  )

  (:durative-action do_step99
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step99)) (at start (s37_sem)) (at start (s94_sem)))
    :effect (and (at start (not (step_pending step99))) (at end (step_done step99)) (at end (s99_sem)))
  )

  (:durative-action do_step100
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step100)) (at start (s11_sem)) (at start (s14_sem)) (at start (s61_sem)) (at start (s74_sem)) (at start (s87_sem)) (at start (s98_sem)))
    :effect (and (at start (not (step_pending step100))) (at end (step_done step100)) (at end (s100_sem)))
  )

)
