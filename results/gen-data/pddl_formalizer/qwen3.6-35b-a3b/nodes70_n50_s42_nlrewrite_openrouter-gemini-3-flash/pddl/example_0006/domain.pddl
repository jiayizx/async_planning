(define (domain rubber_band_ball)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_done ?s - step) 
    (step_pending ?s - step)
    (s1_sem) (s2_sem) (s3_sem) (s4_sem) (s5_sem) (s6_sem) (s7_sem) (s8_sem) (s9_sem) (s10_sem)
    (s11_sem) (s12_sem) (s13_sem) (s14_sem) (s15_sem) (s16_sem) (s17_sem) (s18_sem) (s19_sem) (s20_sem)
    (s21_sem) (s22_sem) (s23_sem) (s24_sem) (s25_sem) (s26_sem) (s27_sem) (s28_sem) (s29_sem) (s30_sem)
    (s31_sem) (s32_sem) (s33_sem) (s34_sem) (s35_sem) (s36_sem) (s37_sem) (s38_sem) (s39_sem) (s40_sem)
    (s41_sem) (s42_sem) (s43_sem) (s44_sem) (s45_sem) (s46_sem) (s47_sem) (s48_sem) (s49_sem) (s50_sem)
    (s51_sem) (s52_sem) (s53_sem) (s54_sem) (s55_sem) (s56_sem) (s57_sem) (s58_sem) (s59_sem) (s60_sem)
    (s61_sem) (s62_sem) (s63_sem) (s64_sem) (s65_sem) (s66_sem) (s67_sem) (s68_sem) (s69_sem) (s70_sem))
  (:durative-action step1
    :duration 600
    :condition (and (at start (step_pending step1)) (at start (s21_sem)) (at start (s44_sem)) (at start (s65_sem)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_sem))))
  (:durative-action step2
    :duration 900
    :condition (and (at start (step_pending step2)) (at start (s4_sem)) (at start (s21_sem)) (at start (s32_sem)) (at start (s64_sem)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_sem))))
  (:durative-action step3
    :duration 120
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_sem))))
  (:durative-action step4
    :duration 300
    :condition (and (at start (step_pending step4)) (at start (s29_sem)) (at start (s48_sem)) (at start (s59_sem)) (at start (s61_sem)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_sem))))
  (:durative-action step5
    :duration 480
    :condition (and (at start (step_pending step5)) (at start (s53_sem)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_sem))))
  (:durative-action step6
    :duration 720
    :condition (and (at start (step_pending step6)) (at start (s17_sem)) (at start (s47_sem)) (at start (s63_sem)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_sem))))
  (:durative-action step7
    :duration 900
    :condition (and (at start (step_pending step7)) (at start (s39_sem)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_sem))))
  (:durative-action step8
    :duration 180
    :condition (and (at start (step_pending step8)) (at start (s12_sem)) (at start (s57_sem)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_sem))))
  (:durative-action step9
    :duration 600
    :condition (and (at start (step_pending step9)) (at start (s10_sem)) (at start (s26_sem)) (at start (s59_sem)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_sem))))
  (:durative-action step10
    :duration 3600
    :condition (and (at start (step_pending step10)) (at start (s59_sem)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_sem))))
  (:durative-action step11
    :duration 600
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_sem))))
  (:durative-action step12
    :duration 120
    :condition (and (at start (step_pending step12)) (at start (s45_sem)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_sem))))
  (:durative-action step13
    :duration 1200
    :condition (and (at start (step_pending step13)) (at start (s34_sem)) (at start (s35_sem)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_sem))))
  (:durative-action step14
    :duration 1800
    :condition (and (at start (step_pending step14)) (at start (s13_sem)) (at start (s28_sem)) (at start (s58_sem)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_sem))))
  (:durative-action step15
    :duration 240
    :condition (and (at start (step_pending step15)) (at start (s12_sem)) (at start (s27_sem)) (at start (s55_sem)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_sem))))
  (:durative-action step16
    :duration 2700
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_sem))))
  (:durative-action step17
    :duration 600
    :condition (and (at start (step_pending step17)) (at start (s34_sem)) (at start (s48_sem)) (at start (s49_sem)) (at start (s56_sem)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_sem))))
  (:durative-action step18
    :duration 60
    :condition (and (at start (step_pending step18)) (at start (s11_sem)) (at start (s62_sem)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_sem))))
  (:durative-action step19
    :duration 120
    :condition (and (at start (step_pending step19)) (at start (s1_sem)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_sem))))
  (:durative-action step20
    :duration 120
    :condition (and (at start (step_pending step20)) (at start (s22_sem)) (at start (s48_sem)) (at start (s58_sem)) (at start (s59_sem)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_sem))))
  (:durative-action step21
    :duration 300
    :condition (and (at start (step_pending step21)) (at start (s11_sem)) (at start (s66_sem)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_sem))))
  (:durative-action step22
    :duration 360
    :condition (and (at start (step_pending step22)) (at start (s6_sem)) (at start (s15_sem)) (at start (s17_sem)) (at start (s31_sem)) (at start (s34_sem)) (at start (s56_sem)) (at start (s58_sem)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_sem))))
  (:durative-action step23
    :duration 900
    :condition (and (at start (step_pending step23)) (at start (s58_sem)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_sem))))
  (:durative-action step24
    :duration 300
    :condition (and (at start (step_pending step24)) (at start (s26_sem)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_sem))))
  (:durative-action step25
    :duration 720
    :condition (and (at start (step_pending step25)) (at start (s24_sem)) (at start (s39_sem)) (at start (s40_sem)) (at start (s69_sem)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_sem))))
  (:durative-action step26
    :duration 600
    :condition (and (at start (step_pending step26)) (at start (s4_sem)) (at start (s23_sem)) (at start (s30_sem)) (at start (s38_sem)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_sem))))
  (:durative-action step27
    :duration 1200
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_sem))))
  (:durative-action step28
    :duration 180
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_sem))))
  (:durative-action step29
    :duration 900
    :condition (and (at start (step_pending step29)) (at start (s48_sem)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_sem))))
  (:durative-action step30
    :duration 600
    :condition (and (at start (step_pending step30)) (at start (s10_sem)) (at start (s12_sem)) (at start (s44_sem)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_sem))))
  (:durative-action step31
    :duration 420
    :condition (and (at start (step_pending step31)) (at start (s2_sem)) (at start (s9_sem)) (at start (s15_sem)) (at start (s39_sem)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_sem))))
  (:durative-action step32
    :duration 240
    :condition (and (at start (step_pending step32)) (at start (s40_sem)) (at start (s41_sem)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_sem))))
  (:durative-action step33
    :duration 540
    :condition (and (at start (step_pending step33)) (at start (s5_sem)) (at start (s27_sem)) (at start (s48_sem)) (at start (s51_sem)) (at start (s63_sem)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_sem))))
  (:durative-action step34
    :duration 1500
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_sem))))
  (:durative-action step35
    :duration 300
    :condition (and (at start (step_pending step35)) (at start (s10_sem)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_sem))))
  (:durative-action step36
    :duration 300
    :condition (and (at start (step_pending step36)) (at start (s39_sem)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_sem))))
  (:durative-action step37
    :duration 60
    :condition (and (at start (step_pending step37)) (at start (s13_sem)) (at start (s30_sem)) (at start (s60_sem)) (at start (s63_sem)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_sem))))
  (:durative-action step38
    :duration 30
    :condition (and (at start (step_pending step38)) (at start (s28_sem)) (at start (s48_sem)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_sem))))
  (:durative-action step39
    :duration 1200
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_sem))))
  (:durative-action step40
    :duration 60
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_sem))))
  (:durative-action step41
    :duration 180
    :condition (and (at start (step_pending step41)) (at start (s40_sem)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_sem))))
  (:durative-action step42
    :duration 120
    :condition (and (at start (step_pending step42)) (at start (s28_sem)) (at start (s39_sem)) (at start (s43_sem)) (at start (s51_sem)) (at start (s61_sem)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_sem))))
  (:durative-action step43
    :duration 900
    :condition (and (at start (step_pending step43)) (at start (s10_sem)) (at start (s40_sem)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_sem))))
  (:durative-action step44
    :duration 1800
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_sem))))
  (:durative-action step45
    :duration 300
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_sem))))
  (:durative-action step46
    :duration 120
    :condition (and (at start (step_pending step46)) (at start (s69_sem)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_sem))))
  (:durative-action step47
    :duration 600
    :condition (and (at start (step_pending step47)) (at start (s16_sem)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_sem))))
  (:durative-action step48
    :duration 300
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_sem))))
  (:durative-action step49
    :duration 180
    :condition (and (at start (step_pending step49)) (at start (s16_sem)) (at start (s36_sem)) (at start (s55_sem)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_sem))))
  (:durative-action step50
    :duration 900
    :condition (and (at start (step_pending step50)) (at start (s29_sem)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_sem))))
  (:durative-action step51
    :duration 300
    :condition (and (at start (step_pending step51)) (at start (s9_sem)) (at start (s11_sem)) (at start (s48_sem)) (at start (s59_sem)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51_sem))))
  (:durative-action step52
    :duration 60
    :condition (and (at start (step_pending step52)) (at start (s2_sem)) (at start (s48_sem)) (at start (s60_sem)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52_sem))))
  (:durative-action step53
    :duration 240
    :condition (and (at start (step_pending step53)) (at start (s2_sem)) (at start (s35_sem)) (at start (s50_sem)) (at start (s68_sem)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53_sem))))
  (:durative-action step54
    :duration 360
    :condition (and (at start (step_pending step54)) (at start (s50_sem)) (at start (s56_sem)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54_sem))))
  (:durative-action step55
    :duration 600
    :condition (and (at start (step_pending step55)) (at start (s16_sem)) (at start (s48_sem)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55_sem))))
  (:durative-action step56
    :duration 900
    :condition (and (at start (step_pending step56)) (at start (s47_sem)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56_sem))))
  (:durative-action step57
    :duration 300
    :condition (and (at start (step_pending step57)) (at start (s25_sem)) (at start (s34_sem)) (at start (s36_sem)) (at start (s61_sem)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57_sem))))
  (:durative-action step58
    :duration 600
    :condition (and (at start (step_pending step58)) (at start (s44_sem)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58_sem))))
  (:durative-action step59
    :duration 720
    :condition (and (at start (step_pending step59)) (at start (s11_sem)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59_sem))))
  (:durative-action step60
    :duration 180
    :condition (and (at start (step_pending step60)) (at start (s7_sem)) (at start (s10_sem)) (at start (s21_sem)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60_sem))))
  (:durative-action step61
    :duration 600
    :condition (and (at start (step_pending step61)) (at start (s10_sem)) (at start (s28_sem)) (at start (s39_sem)) (at start (s44_sem)) (at start (s45_sem)) (at start (s64_sem)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (s61_sem))))
  (:durative-action step62
    :duration 120
    :condition (and (at start (step_pending step62)) (at start (s9_sem)) (at start (s32_sem)) (at start (s39_sem)) (at start (s48_sem)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (s62_sem))))
  (:durative-action step63
    :duration 480
    :condition (and (at start (step_pending step63)) (at start (s16_sem)) (at start (s32_sem)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (s63_sem))))
  (:durative-action step64
    :duration 600
    :condition (and (at start (step_pending step64)) (at start (s10_sem)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (s64_sem))))
  (:durative-action step65
    :duration 120
    :condition (and (at start (step_pending step65)) (at start (s16_sem)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (s65_sem))))
  (:durative-action step66
    :duration 600
    :condition (and (at start (step_pending step66)) (at start (s16_sem)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (s66_sem))))
  (:durative-action step67
    :duration 300
    :condition (and (at start (step_pending step67)) (at start (s13_sem)) (at start (s17_sem)) (at start (s33_sem)) (at start (s43_sem)) (at start (s64_sem)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (s67_sem))))
  (:durative-action step68
    :duration 300
    :condition (and (at start (step_pending step68)) (at start (s35_sem)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (s68_sem))))
  (:durative-action step69
    :duration 600
    :condition (and (at start (step_pending step69)) (at start (s13_sem)) (at start (s40_sem)) (at start (s59_sem)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (s69_sem))))
  (:durative-action step70
    :duration 120
    :condition (and (at start (step_pending step70)) (at start (s3_sem)) (at start (s23_sem)) (at start (s61_sem)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (s70_sem))))
)