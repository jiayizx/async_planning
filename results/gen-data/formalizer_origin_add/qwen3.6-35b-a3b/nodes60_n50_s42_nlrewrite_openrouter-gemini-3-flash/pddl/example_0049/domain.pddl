(define (domain collapsing_trachea)
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
    (s51_done) (s52_done) (s53_done) (s54_done) (s55_done) (s56_done) (s57_done) (s58_done) (s59_done) (s60_done))
  (:durative-action step1
    :duration 600
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done))))
  (:durative-action step2
    :duration 300
    :condition (and (at start (step_pending step2)) (at start (s5_done)) (at start (s11_done)) (at start (s45_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done))))
  (:durative-action step3
    :duration 30
    :condition (and (at start (step_pending step3)) (at start (s13_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done))))
  (:durative-action step4
    :duration 900
    :condition (and (at start (step_pending step4)) (at start (s7_done)) (at start (s11_done)) (at start (s44_done)) (at start (s57_done)) (at start (s58_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done))))
  (:durative-action step5
    :duration 1200
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done))))
  (:durative-action step6
    :duration 300
    :condition (and (at start (step_pending step6)) (at start (s58_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done))))
  (:durative-action step7
    :duration 120
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done))))
  (:durative-action step8
    :duration 60
    :condition (and (at start (step_pending step8)) (at start (s6_done)) (at start (s7_done)) (at start (s24_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done))))
  (:durative-action step9
    :duration 600
    :condition (and (at start (step_pending step9)) (at start (s48_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done))))
  (:durative-action step10
    :duration 600
    :condition (and (at start (step_pending step10)) (at start (s27_done)) (at start (s57_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done))))
  (:durative-action step11
    :duration 900
    :condition (and (at start (step_pending step11)) (at start (s48_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done))))
  (:durative-action step12
    :duration 600
    :condition (and (at start (step_pending step12)) (at start (s27_done)) (at start (s31_done)) (at start (s56_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done))))
  (:durative-action step13
    :duration 600
    :condition (and (at start (step_pending step13)) (at start (s28_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done))))
  (:durative-action step14
    :duration 5
    :condition (and (at start (step_pending step14)) (at start (s22_done)) (at start (s28_done)) (at start (s38_done)) (at start (s53_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done))))
  (:durative-action step15
    :duration 300
    :condition (and (at start (step_pending step15)) (at start (s26_done)) (at start (s38_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done))))
  (:durative-action step16
    :duration 1800
    :condition (and (at start (step_pending step16)) (at start (s4_done)) (at start (s23_done)) (at start (s35_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done))))
  (:durative-action step17
    :duration 600
    :condition (and (at start (step_pending step17)) (at start (s5_done)) (at start (s42_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done))))
  (:durative-action step18
    :duration 300
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done))))
  (:durative-action step19
    :duration 300
    :condition (and (at start (step_pending step19)) (at start (s44_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done))))
  (:durative-action step20
    :duration 900
    :condition (and (at start (step_pending step20)) (at start (s12_done)) (at start (s40_done)) (at start (s46_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done))))
  (:durative-action step21
    :duration 300
    :condition (at start (step_pending step21))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done))))
  (:durative-action step22
    :duration 600
    :condition (and (at start (step_pending step22)) (at start (s11_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done))))
  (:durative-action step23
    :duration 120
    :condition (and (at start (step_pending step23)) (at start (s17_done)) (at start (s31_done)) (at start (s36_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done))))
  (:durative-action step24
    :duration 120
    :condition (and (at start (step_pending step24)) (at start (s13_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done))))
  (:durative-action step25
    :duration 5
    :condition (and (at start (step_pending step25)) (at start (s14_done)) (at start (s53_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done))))
  (:durative-action step26
    :duration 3600
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done))))
  (:durative-action step27
    :duration 900
    :condition (and (at start (step_pending step27)) (at start (s48_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done))))
  (:durative-action step28
    :duration 600
    :condition (and (at start (step_pending step28)) (at start (s11_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done))))
  (:durative-action step29
    :duration 300
    :condition (and (at start (step_pending step29)) (at start (s6_done)) (at start (s45_done)) (at start (s46_done)) (at start (s60_done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done))))
  (:durative-action step30
    :duration 120
    :condition (and (at start (step_pending step30)) (at start (s11_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done))))
  (:durative-action step31
    :duration 1800
    :condition (and (at start (step_pending step31)) (at start (s5_done)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_done))))
  (:durative-action step32
    :duration 7200
    :condition (and (at start (step_pending step32)) (at start (s3_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_done))))
  (:durative-action step33
    :duration 1200
    :condition (and (at start (step_pending step33)) (at start (s57_done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_done))))
  (:durative-action step34
    :duration 600
    :condition (and (at start (step_pending step34)) (at start (s1_done)) (at start (s25_done)) (at start (s59_done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_done))))
  (:durative-action step35
    :duration 2700
    :condition (and (at start (step_pending step35)) (at start (s26_done)) (at start (s33_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_done))))
  (:durative-action step36
    :duration 120
    :condition (and (at start (step_pending step36)) (at start (s1_done)) (at start (s21_done)) (at start (s44_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_done))))
  (:durative-action step37
    :duration 1200
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_done))))
  (:durative-action step38
    :duration 1200
    :condition (and (at start (step_pending step38)) (at start (s28_done)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_done))))
  (:durative-action step39
    :duration 900
    :condition (and (at start (step_pending step39)) (at start (s35_done)) (at start (s55_done)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_done))))
  (:durative-action step40
    :duration 600
    :condition (and (at start (step_pending step40)) (at start (s4_done)) (at start (s21_done)) (at start (s44_done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_done))))
  (:durative-action step41
    :duration 3600
    :condition (and (at start (step_pending step41)) (at start (s40_done)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_done))))
  (:durative-action step42
    :duration 300
    :condition (and (at start (step_pending step42)) (at start (s6_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_done))))
  (:durative-action step43
    :duration 900
    :condition (and (at start (step_pending step43)) (at start (s2_done)) (at start (s3_done)) (at start (s18_done)) (at start (s47_done)) (at start (s55_done)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_done))))
  (:durative-action step44
    :duration 1800
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_done))))
  (:durative-action step45
    :duration 600
    :condition (and (at start (step_pending step45)) (at start (s17_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_done))))
  (:durative-action step46
    :duration 3600
    :condition (and (at start (step_pending step46)) (at start (s5_done)) (at start (s22_done)) (at start (s37_done)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_done))))
  (:durative-action step47
    :duration 120
    :condition (at start (step_pending step47))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_done))))
  (:durative-action step48
    :duration 600
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_done))))
  (:durative-action step49
    :duration 1200
    :condition (and (at start (step_pending step49)) (at start (s25_done)) (at start (s35_done)) (at start (s37_done)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_done))))
  (:durative-action step50
    :duration 600
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_done))))
  (:durative-action step51
    :duration 3600
    :condition (and (at start (step_pending step51)) (at start (s40_done)) (at start (s48_done)) (at start (s54_done)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51_done))))
  (:durative-action step52
    :duration 14400
    :condition (and (at start (step_pending step52)) (at start (s5_done)) (at start (s28_done)) (at start (s46_done)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52_done))))
  (:durative-action step53
    :duration 60
    :condition (and (at start (step_pending step53)) (at start (s16_done)) (at start (s22_done)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53_done))))
  (:durative-action step54
    :duration 2700
    :condition (and (at start (step_pending step54)) (at start (s4_done)) (at start (s18_done)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54_done))))
  (:durative-action step55
    :duration 900
    :condition (and (at start (step_pending step55)) (at start (s50_done)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55_done))))
  (:durative-action step56
    :duration 300
    :condition (and (at start (step_pending step56)) (at start (s2_done)) (at start (s3_done)) (at start (s4_done)) (at start (s17_done)) (at start (s18_done)) (at start (s27_done)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56_done))))
  (:durative-action step57
    :duration 300
    :condition (and (at start (step_pending step57)) (at start (s50_done)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57_done))))
  (:durative-action step58
    :duration 300
    :condition (at start (step_pending step58))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58_done))))
  (:durative-action step59
    :duration 900
    :condition (and (at start (step_pending step59)) (at start (s28_done)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59_done))))
  (:durative-action step60
    :duration 600
    :condition (and (at start (step_pending step60)) (at start (s2_done)) (at start (s3_done)) (at start (s5_done)) (at start (s24_done)) (at start (s43_done)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60_done)))))