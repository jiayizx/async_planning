(define (domain buy_allergy_free_chocolate)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_sem) (step2_sem) (step3_sem) (step4_sem) (step5_sem) (step6_sem) (step7_sem) (step8_sem) (step9_sem) (step10_sem)
    (step11_sem) (step12_sem) (step13_sem) (step14_sem) (step15_sem) (step16_sem) (step17_sem) (step18_sem) (step19_sem) (step20_sem)
    (step21_sem) (step22_sem) (step23_sem) (step24_sem) (step25_sem) (step26_sem) (step27_sem) (step28_sem) (step29_sem) (step30_sem)
    (step31_sem) (step32_sem) (step33_sem) (step34_sem) (step35_sem) (step36_sem) (step37_sem) (step38_sem) (step39_sem) (step40_sem)
    (step41_sem) (step42_sem) (step43_sem) (step44_sem) (step45_sem) (step46_sem) (step47_sem) (step48_sem) (step49_sem) (step50_sem)
    (step51_sem) (step52_sem) (step53_sem) (step54_sem) (step55_sem) (step56_sem) (step57_sem) (step58_sem) (step59_sem) (step60_sem)
    (step61_sem) (step62_sem) (step63_sem) (step64_sem) (step65_sem) (step66_sem) (step67_sem) (step68_sem) (step69_sem) (step70_sem)
    (step71_sem) (step72_sem) (step73_sem) (step74_sem) (step75_sem) (step76_sem) (step77_sem) (step78_sem) (step79_sem) (step80_sem)
  )

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s1)) (at start (step10_sem)) (at start (step27_sem)) (at start (step36_sem)))
    :effect (and (at start (not (step_pending s1))) (at end (step_done s1)) (at end (step1_sem)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s2)) (at start (step50_sem)))
    :effect (and (at start (not (step_pending s2))) (at end (step_done s2)) (at end (step2_sem)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s3)) (at start (step45_sem)) (at start (step61_sem)) (at start (step76_sem)))
    :effect (and (at start (not (step_pending s3))) (at end (step_done s3)) (at end (step3_sem)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s4)) (at start (step14_sem)) (at start (step45_sem)) (at start (step57_sem)) (at start (step59_sem)))
    :effect (and (at start (not (step_pending s4))) (at end (step_done s4)) (at end (step4_sem)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s5)))
    :effect (and (at start (not (step_pending s5))) (at end (step_done s5)) (at end (step5_sem)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s6)) (at start (step67_sem)))
    :effect (and (at start (not (step_pending s6))) (at end (step_done s6)) (at end (step6_sem)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s7)) (at start (step71_sem)))
    :effect (and (at start (not (step_pending s7))) (at end (step_done s7)) (at end (step7_sem)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s8)))
    :effect (and (at start (not (step_pending s8))) (at end (step_done s8)) (at end (step8_sem)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s9)) (at start (step24_sem)) (at start (step29_sem)) (at start (step38_sem)) (at start (step40_sem)) (at start (step56_sem)) (at start (step65_sem)) (at start (step67_sem)) (at start (step71_sem)) (at start (step77_sem)))
    :effect (and (at start (not (step_pending s9))) (at end (step_done s9)) (at end (step9_sem)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s10)) (at start (step17_sem)) (at start (step46_sem)) (at start (step66_sem)))
    :effect (and (at start (not (step_pending s10))) (at end (step_done s10)) (at end (step10_sem)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s11)) (at start (step15_sem)) (at start (step66_sem)))
    :effect (and (at start (not (step_pending s11))) (at end (step_done s11)) (at end (step11_sem)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s12)) (at start (step75_sem)))
    :effect (and (at start (not (step_pending s12))) (at end (step_done s12)) (at end (step12_sem)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s13)) (at start (step75_sem)))
    :effect (and (at start (not (step_pending s13))) (at end (step_done s13)) (at end (step13_sem)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s14)) (at start (step22_sem)) (at start (step36_sem)))
    :effect (and (at start (not (step_pending s14))) (at end (step_done s14)) (at end (step14_sem)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s15)) (at start (step1_sem)) (at start (step5_sem)) (at start (step10_sem)) (at start (step48_sem)) (at start (step60_sem)) (at start (step67_sem)))
    :effect (and (at start (not (step_pending s15))) (at end (step_done s15)) (at end (step15_sem)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s16)) (at start (step22_sem)))
    :effect (and (at start (not (step_pending s16))) (at end (step_done s16)) (at end (step16_sem)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s17)))
    :effect (and (at start (not (step_pending s17))) (at end (step_done s17)) (at end (step17_sem)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s18)) (at start (step23_sem)) (at start (step57_sem)))
    :effect (and (at start (not (step_pending s18))) (at end (step_done s18)) (at end (step18_sem)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s19)) (at start (step17_sem)) (at start (step27_sem)))
    :effect (and (at start (not (step_pending s19))) (at end (step_done s19)) (at end (step19_sem)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s20)) (at start (step6_sem)) (at start (step57_sem)))
    :effect (and (at start (not (step_pending s20))) (at end (step_done s20)) (at end (step20_sem)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s21)) (at start (step61_sem)) (at start (step80_sem)))
    :effect (and (at start (not (step_pending s21))) (at end (step_done s21)) (at end (step21_sem)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s22)) (at start (step35_sem)) (at start (step36_sem)) (at start (step51_sem)))
    :effect (and (at start (not (step_pending s22))) (at end (step_done s22)) (at end (step22_sem)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s23)))
    :effect (and (at start (not (step_pending s23))) (at end (step_done s23)) (at end (step23_sem)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s24)) (at start (step21_sem)) (at start (step57_sem)) (at start (step69_sem)) (at start (step75_sem)) (at start (step29_sem)))
    :effect (and (at start (not (step_pending s24))) (at end (step_done s24)) (at end (step24_sem)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s25)) (at start (step7_sem)) (at start (step17_sem)) (at start (step20_sem)) (at start (step36_sem)) (at start (step37_sem)) (at start (step54_sem)) (at start (step63_sem)))
    :effect (and (at start (not (step_pending s25))) (at end (step_done s25)) (at end (step25_sem)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s26)) (at start (step8_sem)) (at start (step20_sem)) (at start (step33_sem)) (at start (step40_sem)) (at start (step57_sem)) (at start (step77_sem)))
    :effect (and (at start (not (step_pending s26))) (at end (step_done s26)) (at end (step26_sem)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s27)) (at start (step69_sem)))
    :effect (and (at start (not (step_pending s27))) (at end (step_done s27)) (at end (step27_sem)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s28)) (at start (step24_sem)) (at start (step61_sem)) (at start (step72_sem)) (at start (step75_sem)))
    :effect (and (at start (not (step_pending s28))) (at end (step_done s28)) (at end (step28_sem)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending s29)) (at start (step46_sem)) (at start (step69_sem)))
    :effect (and (at start (not (step_pending s29))) (at end (step_done s29)) (at end (step29_sem)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s30)) (at start (step7_sem)) (at start (step44_sem)) (at start (step54_sem)))
    :effect (and (at start (not (step_pending s30))) (at end (step_done s30)) (at end (step30_sem)))
  )

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s31)) (at start (step53_sem)) (at start (step57_sem)))
    :effect (and (at start (not (step_pending s31))) (at end (step_done s31)) (at end (step31_sem)))
  )

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s32)) (at start (step2_sem)) (at start (step16_sem)) (at start (step54_sem)) (at start (step66_sem)) (at start (step73_sem)) (at start (step49_sem)))
    :effect (and (at start (not (step_pending s32))) (at end (step_done s32)) (at end (step32_sem)))
  )

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s33)) (at start (step8_sem)) (at start (step23_sem)))
    :effect (and (at start (not (step_pending s33))) (at end (step_done s33)) (at end (step33_sem)))
  )

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s34)) (at start (step21_sem)) (at start (step37_sem)) (at start (step58_sem)) (at start (step69_sem)) (at start (step80_sem)))
    :effect (and (at start (not (step_pending s34))) (at end (step_done s34)) (at end (step34_sem)))
  )

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending s35)))
    :effect (and (at start (not (step_pending s35))) (at end (step_done s35)) (at end (step35_sem)))
  )

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s36)) (at start (step54_sem)) (at start (step80_sem)))
    :effect (and (at start (not (step_pending s36))) (at end (step_done s36)) (at end (step36_sem)))
  )

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s37)) (at start (step3_sem)) (at start (step6_sem)) (at start (step45_sem)) (at start (step50_sem)) (at start (step67_sem)))
    :effect (and (at start (not (step_pending s37))) (at end (step_done s37)) (at end (step37_sem)))
  )

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s38)) (at start (step7_sem)) (at start (step16_sem)) (at start (step53_sem)) (at start (step40_sem)) (at start (step61_sem)))
    :effect (and (at start (not (step_pending s38))) (at end (step_done s38)) (at end (step38_sem)))
  )

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s39)) (at start (step10_sem)) (at start (step41_sem)) (at start (step59_sem)) (at start (step76_sem)))
    :effect (and (at start (not (step_pending s39))) (at end (step_done s39)) (at end (step39_sem)))
  )

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s40)) (at start (step2_sem)) (at start (step6_sem)) (at start (step35_sem)) (at start (step42_sem)) (at start (step56_sem)) (at start (step58_sem)) (at start (step59_sem)))
    :effect (and (at start (not (step_pending s40))) (at end (step_done s40)) (at end (step40_sem)))
  )

  (:durative-action do-step41
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s41)) (at start (step19_sem)) (at start (step69_sem)) (at start (step75_sem)))
    :effect (and (at start (not (step_pending s41))) (at end (step_done s41)) (at end (step41_sem)))
  )

  (:durative-action do-step42
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s42)) (at start (step31_sem)) (at start (step69_sem)))
    :effect (and (at start (not (step_pending s42))) (at end (step_done s42)) (at end (step42_sem)))
  )

  (:durative-action do-step43
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s43)) (at start (step18_sem)) (at start (step52_sem)) (at start (step61_sem)))
    :effect (and (at start (not (step_pending s43))) (at end (step_done s43)) (at end (step43_sem)))
  )

  (:durative-action do-step44
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s44)) (at start (step6_sem)) (at start (step59_sem)))
    :effect (and (at start (not (step_pending s44))) (at end (step_done s44)) (at end (step44_sem)))
  )

  (:durative-action do-step45
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending s45)))
    :effect (and (at start (not (step_pending s45))) (at end (step_done s45)) (at end (step45_sem)))
  )

  (:durative-action do-step46
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s46)) (at start (step3_sem)))
    :effect (and (at start (not (step_pending s46))) (at end (step_done s46)) (at end (step46_sem)))
  )

  (:durative-action do-step47
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s47)) (at start (step45_sem)) (at start (step60_sem)) (at start (step68_sem)) (at start (step79_sem)))
    :effect (and (at start (not (step_pending s47))) (at end (step_done s47)) (at end (step47_sem)))
  )

  (:durative-action do-step48
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s48)) (at start (step18_sem)))
    :effect (and (at start (not (step_pending s48))) (at end (step_done s48)) (at end (step48_sem)))
  )

  (:durative-action do-step49
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s49)) (at start (step8_sem)) (at start (step33_sem)))
    :effect (and (at start (not (step_pending s49))) (at end (step_done s49)) (at end (step49_sem)))
  )

  (:durative-action do-step50
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s50)) (at start (step27_sem)) (at start (step79_sem)))
    :effect (and (at start (not (step_pending s50))) (at end (step_done s50)) (at end (step50_sem)))
  )

  (:durative-action do-step51
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s51)) (at start (step71_sem)))
    :effect (and (at start (not (step_pending s51))) (at end (step_done s51)) (at end (step51_sem)))
  )

  (:durative-action do-step52
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s52)) (at start (step41_sem)) (at start (step48_sem)) (at start (step59_sem)) (at start (step65_sem)) (at start (step76_sem)) (at start (step80_sem)))
    :effect (and (at start (not (step_pending s52))) (at end (step_done s52)) (at end (step52_sem)))
  )

  (:durative-action do-step53
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s53)) (at start (step5_sem)) (at start (step8_sem)) (at start (step18_sem)) (at start (step35_sem)) (at start (step68_sem)))
    :effect (and (at start (not (step_pending s53))) (at end (step_done s53)) (at end (step53_sem)))
  )

  (:durative-action do-step54
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s54)) (at start (step12_sem)) (at start (step56_sem)))
    :effect (and (at start (not (step_pending s54))) (at end (step_done s54)) (at end (step54_sem)))
  )

  (:durative-action do-step55
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s55)) (at start (step8_sem)) (at start (step21_sem)) (at start (step72_sem)))
    :effect (and (at start (not (step_pending s55))) (at end (step_done s55)) (at end (step55_sem)))
  )

  (:durative-action do-step56
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s56)) (at start (step45_sem)) (at start (step75_sem)))
    :effect (and (at start (not (step_pending s56))) (at end (step_done s56)) (at end (step56_sem)))
  )

  (:durative-action do-step57
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s57)) (at start (step10_sem)))
    :effect (and (at start (not (step_pending s57))) (at end (step_done s57)) (at end (step57_sem)))
  )

  (:durative-action do-step58
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s58)) (at start (step76_sem)))
    :effect (and (at start (not (step_pending s58))) (at end (step_done s58)) (at end (step58_sem)))
  )

  (:durative-action do-step59
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s59)))
    :effect (and (at start (not (step_pending s59))) (at end (step_done s59)) (at end (step59_sem)))
  )

  (:durative-action do-step60
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s60)) (at start (step76_sem)))
    :effect (and (at start (not (step_pending s60))) (at end (step_done s60)) (at end (step60_sem)))
  )

  (:durative-action do-step61
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s61)) (at start (step27_sem)) (at start (step41_sem)))
    :effect (and (at start (not (step_pending s61))) (at end (step_done s61)) (at end (step61_sem)))
  )

  (:durative-action do-step62
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s62)) (at start (step23_sem)) (at start (step69_sem)))
    :effect (and (at start (not (step_pending s62))) (at end (step_done s62)) (at end (step62_sem)))
  )

  (:durative-action do-step63
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s63)) (at start (step8_sem)) (at start (step24_sem)) (at start (step28_sem)) (at start (step40_sem)) (at start (step42_sem)) (at start (step58_sem)))
    :effect (and (at start (not (step_pending s63))) (at end (step_done s63)) (at end (step63_sem)))
  )

  (:durative-action do-step64
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s64)) (at start (step52_sem)) (at start (step53_sem)) (at start (step55_sem)))
    :effect (and (at start (not (step_pending s64))) (at end (step_done s64)) (at end (step64_sem)))
  )

  (:durative-action do-step65
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s65)) (at start (step4_sem)) (at start (step35_sem)) (at start (step38_sem)) (at start (step56_sem)))
    :effect (and (at start (not (step_pending s65))) (at end (step_done s65)) (at end (step65_sem)))
  )

  (:durative-action do-step66
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s66)))
    :effect (and (at start (not (step_pending s66))) (at end (step_done s66)) (at end (step66_sem)))
  )

  (:durative-action do-step67
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s67)) (at start (step76_sem)))
    :effect (and (at start (not (step_pending s67))) (at end (step_done s67)) (at end (step67_sem)))
  )

  (:durative-action do-step68
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s68)) (at start (step10_sem)))
    :effect (and (at start (not (step_pending s68))) (at end (step_done s68)) (at end (step68_sem)))
  )

  (:durative-action do-step69
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s69)) (at start (step71_sem)))
    :effect (and (at start (not (step_pending s69))) (at end (step_done s69)) (at end (step69_sem)))
  )

  (:durative-action do-step70
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s70)) (at start (step36_sem)) (at start (step37_sem)) (at start (step40_sem)) (at start (step78_sem)))
    :effect (and (at start (not (step_pending s70))) (at end (step_done s70)) (at end (step70_sem)))
  )

  (:durative-action do-step71
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s71)))
    :effect (and (at start (not (step_pending s71))) (at end (step_done s71)) (at end (step71_sem)))
  )

  (:durative-action do-step72
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s72)) (at start (step76_sem)))
    :effect (and (at start (not (step_pending s72))) (at end (step_done s72)) (at end (step72_sem)))
  )

  (:durative-action do-step73
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s73)) (at start (step4_sem)) (at start (step72_sem)))
    :effect (and (at start (not (step_pending s73))) (at end (step_done s73)) (at end (step73_sem)))
  )

  (:durative-action do-step74
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s74)) (at start (step22_sem)))
    :effect (and (at start (not (step_pending s74))) (at end (step_done s74)) (at end (step74_sem)))
  )

  (:durative-action do-step75
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s75)) (at start (step27_sem)) (at start (step69_sem)) (at start (step76_sem)))
    :effect (and (at start (not (step_pending s75))) (at end (step_done s75)) (at end (step75_sem)))
  )

  (:durative-action do-step76
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending s76)))
    :effect (and (at start (not (step_pending s76))) (at end (step_done s76)) (at end (step76_sem)))
  )

  (:durative-action do-step77
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s77)) (at start (step24_sem)))
    :effect (and (at start (not (step_pending s77))) (at end (step_done s77)) (at end (step77_sem)))
  )

  (:durative-action do-step78
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s78)) (at start (step41_sem)) (at start (step71_sem)) (at start (step72_sem)))
    :effect (and (at start (not (step_pending s78))) (at end (step_done s78)) (at end (step78_sem)))
  )

  (:durative-action do-step79
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s79)) (at start (step41_sem)))
    :effect (and (at start (not (step_pending s79))) (at end (step_done s79)) (at end (step79_sem)))
  )

  (:durative-action do-step80
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s80)) (at start (step17_sem)) (at start (step23_sem)))
    :effect (and (at start (not (step_pending s80))) (at end (step_done s80)) (at end (step80_sem)))
  )

)
