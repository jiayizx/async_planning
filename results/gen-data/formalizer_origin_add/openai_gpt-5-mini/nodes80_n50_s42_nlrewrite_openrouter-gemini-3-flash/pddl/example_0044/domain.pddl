(define (domain sinless_cookies)
  (:requirements :durative-actions :typing)
  (:types step)

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
  )

  ; 80 durative actions, one per step

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (pending step1)) (at start (s6_done)))
    :effect (and (at start (not (pending step1))) (at end (step_done step1)) (at end (s1_done))))

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending step2)) (at start (s21_done)) (at start (s75_done)))
    :effect (and (at start (not (pending step2))) (at end (step_done step2)) (at end (s2_done))))

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step3)) (at start (s1_done)) (at start (s5_done)) (at start (s10_done)) (at start (s15_done)) (at start (s27_done)) (at start (s55_done)) (at start (s68_done)) (at start (s71_done)))
    :effect (and (at start (not (pending step3))) (at end (step_done step3)) (at end (s3_done))))

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (pending step4)) (at start (s72_done)))
    :effect (and (at start (not (pending step4))) (at end (step_done step4)) (at end (s4_done))))

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending step5)) (at start (s19_done)) (at start (s23_done)) (at start (s35_done)) (at start (s45_done)))
    :effect (and (at start (not (pending step5))) (at end (step_done step5)) (at end (s5_done))))

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending step6)))
    :effect (and (at start (not (pending step6))) (at end (step_done step6)) (at end (s6_done))))

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step7)) (at start (s20_done)))
    :effect (and (at start (not (pending step7))) (at end (step_done step7)) (at end (s7_done))))

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending step8)) (at start (s10_done)) (at start (s11_done)) (at start (s29_done)) (at start (s32_done)) (at start (s40_done)))
    :effect (and (at start (not (pending step8))) (at end (step_done step8)) (at end (s8_done))))

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step9)) (at start (s32_done)) (at start (s45_done)))
    :effect (and (at start (not (pending step9))) (at end (step_done step9)) (at end (s9_done))))

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step10)) (at start (s20_done)))
    :effect (and (at start (not (pending step10))) (at end (step_done step10)) (at end (s10_done))))

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending step11)) (at start (s29_done)))
    :effect (and (at start (not (pending step11))) (at end (step_done step11)) (at end (s11_done))))

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step12)) (at start (s31_done)) (at start (s23_done)) (at start (s47_done)) (at start (s76_done)))
    :effect (and (at start (not (pending step12))) (at end (step_done step12)) (at end (s12_done))))

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending step13)) (at start (s12_done)) (at start (s54_done)) (at start (s55_done)) (at start (s64_done)) (at start (s67_done)))
    :effect (and (at start (not (pending step13))) (at end (step_done step13)) (at end (s13_done))))

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step14)) (at start (s11_done)) (at start (s20_done)) (at start (s35_done)))
    :effect (and (at start (not (pending step14))) (at end (step_done step14)) (at end (s14_done))))

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step15)) (at start (s4_done)) (at start (s20_done)) (at start (s55_done)))
    :effect (and (at start (not (pending step15))) (at end (step_done step15)) (at end (s15_done))))

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step16)) (at start (s76_done)))
    :effect (and (at start (not (pending step16))) (at end (step_done step16)) (at end (s16_done))))

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step17)) (at start (s62_done)))
    :effect (and (at start (not (pending step17))) (at end (step_done step17)) (at end (s17_done))))

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step18)))
    :effect (and (at start (not (pending step18))) (at end (step_done step18)) (at end (s18_done))))

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (pending step19)) (at start (s17_done)) (at start (s48_done)) (at start (s29_done)) (at start (s72_done)))
    :effect (and (at start (not (pending step19))) (at end (step_done step19)) (at end (s19_done))))

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending step20)))
    :effect (and (at start (not (pending step20))) (at end (step_done step20)) (at end (s20_done))))

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending step21)) (at start (s75_done)) (at start (s55_done)))
    :effect (and (at start (not (pending step21))) (at end (step_done step21)) (at end (s21_done))))

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step22)) (at start (s74_done)))
    :effect (and (at start (not (pending step22))) (at end (step_done step22)) (at end (s22_done))))

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step23)) (at start (s17_done)) (at start (s28_done)) (at start (s29_done)) (at start (s54_done)))
    :effect (and (at start (not (pending step23))) (at end (step_done step23)) (at end (s23_done))))

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (pending step24)) (at start (s18_done)) (at start (s41_done)) (at start (s42_done)) (at start (s70_done)))
    :effect (and (at start (not (pending step24))) (at end (step_done step24)) (at end (s24_done))))

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending step25)) (at start (s15_done)) (at start (s38_done)) (at start (s54_done)) (at start (s66_done)))
    :effect (and (at start (not (pending step25))) (at end (step_done step25)) (at end (s25_done))))

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (pending step26)) (at start (s22_done)) (at start (s27_done)) (at start (s33_done)) (at start (s66_done)) (at start (s75_done)))
    :effect (and (at start (not (pending step26))) (at end (step_done step26)) (at end (s26_done))))

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step27)))
    :effect (and (at start (not (pending step27))) (at end (step_done step27)) (at end (s27_done))))

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step28)) (at start (s7_done)))
    :effect (and (at start (not (pending step28))) (at end (step_done step28)) (at end (s28_done))))

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending step29)))
    :effect (and (at start (not (pending step29))) (at end (step_done step29)) (at end (s29_done))))

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step30)) (at start (s38_done)) (at start (s76_done)))
    :effect (and (at start (not (pending step30))) (at end (step_done step30)) (at end (s30_done))))

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending step31)) (at start (s11_done)) (at start (s20_done)))
    :effect (and (at start (not (pending step31))) (at end (step_done step31)) (at end (s31_done))))

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step32)) (at start (s7_done)))
    :effect (and (at start (not (pending step32))) (at end (step_done step32)) (at end (s32_done))))

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending step33)) (at start (s47_done)) (at start (s55_done)))
    :effect (and (at start (not (pending step33))) (at end (step_done step33)) (at end (s33_done))))

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step34)) (at start (s56_done)))
    :effect (and (at start (not (pending step34))) (at end (step_done step34)) (at end (s34_done))))

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step35)) (at start (s72_done)))
    :effect (and (at start (not (pending step35))) (at end (step_done step35)) (at end (s35_done))))

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step36)) (at start (s10_done)) (at start (s48_done)) (at start (s30_done)))
    :effect (and (at start (not (pending step36))) (at end (step_done step36)) (at end (s36_done))))

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (pending step37)) (at start (s10_done)) (at start (s18_done)) (at start (s23_done)) (at start (s27_done)) (at start (s44_done)) (at start (s68_done)))
    :effect (and (at start (not (pending step37))) (at end (step_done step37)) (at end (s37_done))))

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step38)) (at start (s4_done)) (at start (s10_done)))
    :effect (and (at start (not (pending step38))) (at end (step_done step38)) (at end (s38_done))))

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pending step39)) (at start (s3_done)) (at start (s37_done)))
    :effect (and (at start (not (pending step39))) (at end (step_done step39)) (at end (s39_done))))

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending step40)) (at start (s17_done)) (at start (s36_done)) (at start (s49_done)))
    :effect (and (at start (not (pending step40))) (at end (step_done step40)) (at end (s40_done))))

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step41)) (at start (s8_done)) (at start (s34_done)) (at start (s57_done)) (at start (s76_done)) (at start (s79_done)))
    :effect (and (at start (not (pending step41))) (at end (step_done step41)) (at end (s41_done))))

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step42)) (at start (s50_done)))
    :effect (and (at start (not (pending step42))) (at end (step_done step42)) (at end (s42_done))))

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step43)) (at start (s56_done)))
    :effect (and (at start (not (pending step43))) (at end (step_done step43)) (at end (s43_done))))

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step44)) (at start (s36_done)) (at start (s47_done)) (at start (s52_done)) (at start (s78_done)))
    :effect (and (at start (not (pending step44))) (at end (step_done step44)) (at end (s44_done))))

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step45)))
    :effect (and (at start (not (pending step45))) (at end (step_done step45)) (at end (s45_done))))

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending step46)) (at start (s60_done)) (at start (s77_done)) (at start (s80_done)))
    :effect (and (at start (not (pending step46))) (at end (step_done step46)) (at end (s46_done))))

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending step47)) (at start (s17_done)) (at start (s53_done)) (at start (s59_done)) (at start (s72_done)))
    :effect (and (at start (not (pending step47))) (at end (step_done step47)) (at end (s47_done))))

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (pending step48)) (at start (s1_done)) (at start (s76_done)))
    :effect (and (at start (not (pending step48))) (at end (step_done step48)) (at end (s48_done))))

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step49)) (at start (s6_done)) (at start (s16_done)) (at start (s34_done)))
    :effect (and (at start (not (pending step49))) (at end (step_done step49)) (at end (s49_done))))

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step50)) (at start (s69_done)))
    :effect (and (at start (not (pending step50))) (at end (step_done step50)) (at end (s50_done))))

  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending step51)) (at start (s56_done)))
    :effect (and (at start (not (pending step51))) (at end (step_done step51)) (at end (s51_done))))

  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step52)) (at start (s11_done)))
    :effect (and (at start (not (pending step52))) (at end (step_done step52)) (at end (s52_done))))

  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step53)))
    :effect (and (at start (not (pending step53))) (at end (step_done step53)) (at end (s53_done))))

  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending step54)) (at start (s6_done)) (at start (s58_done)) (at start (s77_done)))
    :effect (and (at start (not (pending step54))) (at end (step_done step54)) (at end (s54_done))))

  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step55)) (at start (s56_done)))
    :effect (and (at start (not (pending step55))) (at end (step_done step55)) (at end (s55_done))))

  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending step56)))
    :effect (and (at start (not (pending step56))) (at end (step_done step56)) (at end (s56_done))))

  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending step57)) (at start (s72_done)))
    :effect (and (at start (not (pending step57))) (at end (step_done step57)) (at end (s57_done))))

  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending step58)))
    :effect (and (at start (not (pending step58))) (at end (step_done step58)) (at end (s58_done))))

  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step59)) (at start (s38_done)) (at start (s66_done)))
    :effect (and (at start (not (pending step59))) (at end (step_done step59)) (at end (s59_done))))

  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step60)) (at start (s55_done)))
    :effect (and (at start (not (pending step60))) (at end (step_done step60)) (at end (s60_done))))

  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step61)) (at start (s28_done)) (at start (s54_done)))
    :effect (and (at start (not (pending step61))) (at end (step_done step61)) (at end (s61_done))))

  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step62)) (at start (s53_done)) (at start (s75_done)))
    :effect (and (at start (not (pending step62))) (at end (step_done step62)) (at end (s62_done))))

  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step63)) (at start (s20_done)) (at start (s30_done)) (at start (s77_done)))
    :effect (and (at start (not (pending step63))) (at end (step_done step63)) (at end (s63_done))))

  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step64)) (at start (s7_done)))
    :effect (and (at start (not (pending step64))) (at end (step_done step64)) (at end (s64_done))))

  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step65)) (at start (s4_done)) (at start (s14_done)) (at start (s15_done)) (at start (s27_done)) (at start (s36_done)) (at start (s38_done)) (at start (s60_done)) (at start (s66_done)))
    :effect (and (at start (not (pending step65))) (at end (step_done step65)) (at end (s65_done))))

  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending step66)) (at start (s28_done)) (at start (s69_done)))
    :effect (and (at start (not (pending step66))) (at end (step_done step66)) (at end (s66_done))))

  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step67)) (at start (s12_done)))
    :effect (and (at start (not (pending step67))) (at end (step_done step67)) (at end (s67_done))))

  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step68)) (at start (s28_done)))
    :effect (and (at start (not (pending step68))) (at end (step_done step68)) (at end (s68_done))))

  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step69)) (at start (s4_done)) (at start (s28_done)) (at start (s64_done)))
    :effect (and (at start (not (pending step69))) (at end (step_done step69)) (at end (s69_done))))

  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step70)) (at start (s2_done)) (at start (s25_done)) (at start (s48_done)) (at start (s52_done)) (at start (s60_done)))
    :effect (and (at start (not (pending step70))) (at end (step_done step70)) (at end (s70_done))))

  (:durative-action do_step71
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step71)) (at start (s25_done)) (at start (s74_done)))
    :effect (and (at start (not (pending step71))) (at end (step_done step71)) (at end (s71_done))))

  (:durative-action do_step72
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step72)))
    :effect (and (at start (not (pending step72))) (at end (step_done step72)) (at end (s72_done))))

  (:durative-action do_step73
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step73)) (at start (s11_done)) (at start (s12_done)) (at start (s14_done)) (at start (s19_done)) (at start (s29_done)) (at start (s30_done)) (at start (s33_done)) (at start (s35_done)) (at start (s36_done)) (at start (s40_done)))
    :effect (and (at start (not (pending step73))) (at end (step_done step73)) (at end (s73_done))))

  (:durative-action do_step74
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step74)))
    :effect (and (at start (not (pending step74))) (at end (step_done step74)) (at end (s74_done))))

  (:durative-action do_step75
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending step75)) (at start (s4_done)))
    :effect (and (at start (not (pending step75))) (at end (step_done step75)) (at end (s75_done))))

  (:durative-action do_step76
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step76)) (at start (s10_done)))
    :effect (and (at start (not (pending step76))) (at end (step_done step76)) (at end (s76_done))))

  (:durative-action do_step77
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step77)) (at start (s29_done)))
    :effect (and (at start (not (pending step77))) (at end (step_done step77)) (at end (s77_done))))

  (:durative-action do_step78
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending step78)) (at start (s45_done)) (at start (s66_done)) (at start (s74_done)) (at start (s77_done)))
    :effect (and (at start (not (pending step78))) (at end (step_done step78)) (at end (s78_done))))

  (:durative-action do_step79
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending step79)) (at start (s51_done)) (at start (s52_done)) (at start (s61_done)))
    :effect (and (at start (not (pending step79))) (at end (step_done step79)) (at end (s79_done))))

  (:durative-action do_step80
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending step80)) (at start (s68_done)))
    :effect (and (at start (not (pending step80))) (at end (step_done step80)) (at end (s80_done))))
)
