(define (domain marry-lachonda)
  (:requirements :typing :durative-actions)
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
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step1)) (at start (s24_complete)) (at start (s56_complete)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_complete)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_complete)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step3)) (at start (s38_complete)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_complete)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step4)) (at start (s45_complete)) (at start (s62_complete)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_complete)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (s26_complete)) (at start (s46_complete)) (at start (s82_complete)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_complete)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step6)) (at start (s49_complete)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_complete)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step7)) (at start (s22_complete)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_complete)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_complete)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step9)) (at start (s36_complete)) (at start (s47_complete)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_complete)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step10)) (at start (s11_complete)) (at start (s34_complete)) (at start (s48_complete)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_complete)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_complete)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step12)) (at start (s25_complete)) (at start (s30_complete)) (at start (s38_complete)) (at start (s42_complete)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_complete)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step13)) (at start (s35_complete)) (at start (s38_complete)) (at start (s40_complete)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_complete)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step14)) (at start (s22_complete)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_complete)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step15)) (at start (s6_complete)) (at start (s28_complete)) (at start (s39_complete)) (at start (s70_complete)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_complete)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_complete)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step17)) (at start (s35_complete)) (at start (s40_complete)) (at start (s58_complete)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_complete)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step18)) (at start (s21_complete)) (at start (s34_complete)) (at start (s43_complete)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_complete)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_complete)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step20)) (at start (s10_complete)) (at start (s32_complete)) (at start (s52_complete)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_complete)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step21)) (at start (s28_complete)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_complete)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_complete)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step23)) (at start (s67_complete)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_complete)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step24)) (at start (s69_complete)) (at start (s71_complete)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_complete)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step25)) (at start (s23_complete)) (at start (s30_complete)) (at start (s35_complete)) (at start (s39_complete)) (at start (s79_complete)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_complete)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step26)) (at start (s51_complete)) (at start (s56_complete)) (at start (s71_complete)) (at start (s75_complete)) (at start (s82_complete)) (at start (s43_complete)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_complete)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending step27)) (at start (s12_complete)) (at start (s23_complete)) (at start (s56_complete)) (at start (s74_complete)) (at start (s77_complete)) (at start (s89_complete)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_complete)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step28)) (at start (s10_complete)) (at start (s39_complete)) (at start (s65_complete)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_complete)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step29)) (at start (s14_complete)) (at start (s17_complete)) (at start (s24_complete)) (at start (s32_complete)) (at start (s35_complete)) (at start (s41_complete)) (at start (s44_complete)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_complete)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step30)) (at start (s71_complete)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_complete)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step31)) (at start (s8_complete)) (at start (s34_complete)) (at start (s74_complete)) (at start (s80_complete)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_complete)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step32)) (at start (s58_complete)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_complete)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step33)) (at start (s11_complete)) (at start (s61_complete)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_complete)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step34)) (at start (s43_complete)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_complete)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step35)) (at start (s18_complete)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_complete)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step36)) (at start (s48_complete)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_complete)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step37)) (at start (s71_complete)) (at start (s84_complete)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_complete)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step38)) (at start (s22_complete)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_complete)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step39)) (at start (s11_complete)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_complete)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step40)) (at start (s44_complete)) (at start (s70_complete)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_complete)))
  )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step41)) (at start (s27_complete)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_complete)))
  )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step42)) (at start (s1_complete)) (at start (s19_complete)) (at start (s80_complete)) (at start (s90_complete)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_complete)))
  )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step43))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_complete)))
  )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step44)) (at start (s14_complete)) (at start (s33_complete)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_complete)))
  )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step45)) (at start (s61_complete)) (at start (s48_complete)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_complete)))
  )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step46)) (at start (s1_complete)) (at start (s18_complete)) (at start (s29_complete)) (at start (s60_complete)) (at start (s66_complete)) (at start (s67_complete)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_complete)))
  )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step47)) (at start (s21_complete)) (at start (s32_complete)) (at start (s71_complete)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_complete)))
  )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step48)) (at start (s14_complete)) (at start (s34_complete)) (at start (s84_complete)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_complete)))
  )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_complete)))
  )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step50)) (at start (s47_complete)) (at start (s65_complete)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_complete)))
  )

  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step51)) (at start (s8_complete)) (at start (s13_complete)) (at start (s50_complete)) (at start (s69_complete)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51_complete)))
  )

  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step52)) (at start (s6_complete)) (at start (s30_complete)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52_complete)))
  )

  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step53)) (at start (s7_complete)) (at start (s14_complete)) (at start (s18_complete)) (at start (s39_complete)) (at start (s47_complete)) (at start (s69_complete)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53_complete)))
  )

  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step54)) (at start (s35_complete)) (at start (s40_complete)) (at start (s69_complete)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54_complete)))
  )

  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step55)) (at start (s50_complete)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55_complete)))
  )

  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step56)) (at start (s14_complete)) (at start (s17_complete)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56_complete)))
  )

  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step57)) (at start (s31_complete)) (at start (s53_complete)) (at start (s68_complete)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57_complete)))
  )

  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58_complete)))
  )

  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step59)) (at start (s4_complete)) (at start (s16_complete)) (at start (s24_complete)) (at start (s26_complete)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59_complete)))
  )

  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step60)) (at start (s6_complete)) (at start (s49_complete)) (at start (s71_complete)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60_complete)))
  )

  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step61))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (s61_complete)))
  )

  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step62)) (at start (s10_complete)) (at start (s47_complete)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (s62_complete)))
  )

  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step63)) (at start (s29_complete)) (at start (s67_complete)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (s63_complete)))
  )

  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step64)) (at start (s17_complete)) (at start (s44_complete)) (at start (s82_complete)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (s64_complete)))
  )

  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step65)) (at start (s71_complete)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (s65_complete)))
  )

  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step66)) (at start (s13_complete)) (at start (s83_complete)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (s66_complete)))
  )

  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step67)) (at start (s36_complete)) (at start (s58_complete)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (s67_complete)))
  )

  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step68)) (at start (s2_complete)) (at start (s13_complete)) (at start (s18_complete)) (at start (s49_complete)) (at start (s55_complete)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (s68_complete)))
  )

  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step69)) (at start (s7_complete)) (at start (s21_complete)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (s69_complete)))
  )

  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step70)) (at start (s18_complete)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (s70_complete)))
  )

  (:durative-action do_step71
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step71)) (at start (s61_complete)))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (s71_complete)))
  )

  (:durative-action do_step72
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step72)) (at start (s42_complete)) (at start (s64_complete)) (at start (s80_complete)))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (s72_complete)))
  )

  (:durative-action do_step73
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step73)) (at start (s10_complete)) (at start (s30_complete)) (at start (s45_complete)) (at start (s90_complete)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (s73_complete)))
  )

  (:durative-action do_step74
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step74)) (at start (s10_complete)) (at start (s14_complete)) (at start (s62_complete)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (s74_complete)))
  )

  (:durative-action do_step75
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step75)) (at start (s33_complete)) (at start (s56_complete)) (at start (s44_complete)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (s75_complete)))
  )

  (:durative-action do_step76
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step76)) (at start (s25_complete)) (at start (s33_complete)) (at start (s47_complete)) (at start (s53_complete)) (at start (s39_complete)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (s76_complete)))
  )

  (:durative-action do_step77
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step77)) (at start (s38_complete)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (s77_complete)))
  )

  (:durative-action do_step78
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step78)) (at start (s32_complete)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (s78_complete)))
  )

  (:durative-action do_step79
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step79)) (at start (s4_complete)) (at start (s11_complete)) (at start (s65_complete)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (s79_complete)))
  )

  (:durative-action do_step80
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step80)) (at start (s16_complete)))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (s80_complete)))
  )

  (:durative-action do_step81
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step81)) (at start (s19_complete)) (at start (s62_complete)))
    :effect (and (at start (not (step_pending step81))) (at end (step_done step81)) (at end (s81_complete)))
  )

  (:durative-action do_step82
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step82)) (at start (s76_complete)) (at start (s67_complete)))
    :effect (and (at start (not (step_pending step82))) (at end (step_done step82)) (at end (s82_complete)))
  )

  (:durative-action do_step83
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step83)) (at start (s9_complete)) (at start (s34_complete)))
    :effect (and (at start (not (step_pending step83))) (at end (step_done step83)) (at end (s83_complete)))
  )

  (:durative-action do_step84
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step84)) (at start (s22_complete)) (at start (s39_complete)))
    :effect (and (at start (not (step_pending step84))) (at end (step_done step84)) (at end (s84_complete)))
  )

  (:durative-action do_step85
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step85)) (at start (s80_complete)) (at start (s84_complete)))
    :effect (and (at start (not (step_pending step85))) (at end (step_done step85)) (at end (s85_complete)))
  )

  (:durative-action do_step86
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step86)) (at start (s3_complete)) (at start (s11_complete)) (at start (s32_complete)) (at start (s33_complete)) (at start (s78_complete)))
    :effect (and (at start (not (step_pending step86))) (at end (step_done step86)) (at end (s86_complete)))
  )

  (:durative-action do_step87
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step87)) (at start (s17_complete)) (at start (s33_complete)) (at start (s60_complete)))
    :effect (and (at start (not (step_pending step87))) (at end (step_done step87)) (at end (s87_complete)))
  )

  (:durative-action do_step88
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step88)) (at start (s1_complete)) (at start (s4_complete)) (at start (s30_complete)) (at start (s80_complete)))
    :effect (and (at start (not (step_pending step88))) (at end (step_done step88)) (at end (s88_complete)))
  )

  (:durative-action do_step89
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending step89)) (at start (s23_complete)) (at start (s25_complete)) (at start (s35_complete)))
    :effect (and (at start (not (step_pending step89))) (at end (step_done step89)) (at end (s89_complete)))
  )

  (:durative-action do_step90
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step90)) (at start (s69_complete)))
    :effect (and (at start (not (step_pending step90))) (at end (step_done step90)) (at end (s90_complete)))
  )
)
