(define (domain break_even_analysis)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_done ?s - step)
    (step_pending ?s - step)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done)
    (step16_done) (step17_done) (step18_done) (step19_done) (step20_done)
    (step21_done) (step22_done) (step23_done) (step24_done) (step25_done)
    (step26_done) (step27_done) (step28_done) (step29_done) (step30_done)
    (step31_done) (step32_done) (step33_done) (step34_done) (step35_done)
    (step36_done) (step37_done) (step38_done) (step39_done) (step40_done)
    (step41_done) (step42_done) (step43_done) (step44_done) (step45_done)
    (step46_done) (step47_done) (step48_done) (step49_done) (step50_done)
    (step51_done) (step52_done) (step53_done) (step54_done) (step55_done)
    (step56_done) (step57_done) (step58_done) (step59_done) (step60_done))

  (:durative-action step1
    :duration 14400
    :condition (and (at start (step_pending step1)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_done))))

  (:durative-action step2
    :duration 1800
    :condition (and (at start (step_pending step2)) (at start (step31_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_done))))

  (:durative-action step3
    :duration 3600
    :condition (and (at start (step_pending step3)) (at start (step8_done)) (at start (step17_done)) (at start (step29_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_done))))

  (:durative-action step4
    :duration 3600
    :condition (and (at start (step_pending step4)) (at start (step8_done)) (at start (step28_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_done))))

  (:durative-action step5
    :duration 7200
    :condition (and (at start (step_pending step5)) (at start (step13_done)) (at start (step27_done)) (at start (step31_done)) (at start (step58_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_done))))

  (:durative-action step6
    :duration 259200
    :condition (and (at start (step_pending step6)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_done))))

  (:durative-action step7
    :duration 18000
    :condition (and (at start (step_pending step7)) (at start (step33_done)) (at start (step55_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_done))))

  (:durative-action step8
    :duration 86400
    :condition (and (at start (step_pending step8)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_done))))

  (:durative-action step9
    :duration 7200
    :condition (and (at start (step_pending step9)) (at start (step6_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_done))))

  (:durative-action step10
    :duration 14400
    :condition (and (at start (step_pending step10)) (at start (step15_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_done))))

  (:durative-action step11
    :duration 10800
    :condition (and (at start (step_pending step11)) (at start (step1_done)) (at start (step29_done)) (at start (step35_done)) (at start (step39_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_done))))

  (:durative-action step12
    :duration 7200
    :condition (and (at start (step_pending step12)) (at start (step24_done)) (at start (step48_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_done))))

  (:durative-action step13
    :duration 2700
    :condition (and (at start (step_pending step13)) (at start (step20_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_done))))

  (:durative-action step14
    :duration 172800
    :condition (and (at start (step_pending step14)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_done))))

  (:durative-action step15
    :duration 3600
    :condition (and (at start (step_pending step15)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_done))))

  (:durative-action step16
    :duration 3600
    :condition (and (at start (step_pending step16)) (at start (step32_done)) (at start (step35_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_done))))

  (:durative-action step17
    :duration 1800
    :condition (and (at start (step_pending step17)) (at start (step1_done)) (at start (step14_done)) (at start (step24_done)) (at start (step52_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_done))))

  (:durative-action step18
    :duration 5400
    :condition (and (at start (step_pending step18)) (at start (step24_done)) (at start (step44_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_done))))

  (:durative-action step19
    :duration 3600
    :condition (and (at start (step_pending step19)) (at start (step12_done)) (at start (step29_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_done))))

  (:durative-action step20
    :duration 1800
    :condition (and (at start (step_pending step20)) (at start (step58_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_done))))

  (:durative-action step21
    :duration 14400
    :condition (and (at start (step_pending step21)) (at start (step34_done)) (at start (step42_done)) (at start (step44_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_done))))

  (:durative-action step22
    :duration 7200
    :condition (and (at start (step_pending step22)) (at start (step26_done)) (at start (step38_done)) (at start (step41_done)) (at start (step52_done)) (at start (step55_done)) (at start (step57_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_done))))

  (:durative-action step23
    :duration 900
    :condition (and (at start (step_pending step23)) (at start (step32_done)) (at start (step33_done)) (at start (step35_done)) (at start (step51_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_done))))

  (:durative-action step24
    :duration 604800
    :condition (and (at start (step_pending step24)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_done))))

  (:durative-action step25
    :duration 3600
    :condition (and (at start (step_pending step25)) (at start (step2_done)) (at start (step17_done)) (at start (step28_done)) (at start (step46_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_done))))

  (:durative-action step26
    :duration 86400
    :condition (and (at start (step_pending step26)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_done))))

  (:durative-action step27
    :duration 2400
    :condition (and (at start (step_pending step27)) (at start (step26_done)) (at start (step33_done)) (at start (step44_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_done))))

  (:durative-action step28
    :duration 1200
    :condition (and (at start (step_pending step28)) (at start (step9_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_done))))

  (:durative-action step29
    :duration 7200
    :condition (and (at start (step_pending step29)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_done))))

  (:durative-action step30
    :duration 900
    :condition (and (at start (step_pending step30)) (at start (step24_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_done))))

  (:durative-action step31
    :duration 900
    :condition (and (at start (step_pending step31)) (at start (step16_done)) (at start (step24_done)) (at start (step44_done)) (at start (step52_done)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step31_done))))

  (:durative-action step32
    :duration 10800
    :condition (and (at start (step_pending step32)) (at start (step35_done)) (at start (step48_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step32_done))))

  (:durative-action step33
    :duration 14400
    :condition (and (at start (step_pending step33)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step33_done))))

  (:durative-action step34
    :duration 18000
    :condition (and (at start (step_pending step34)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step34_done))))

  (:durative-action step35
    :duration 7200
    :condition (and (at start (step_pending step35)) (at start (step38_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step35_done))))

  (:durative-action step36
    :duration 3600
    :condition (and (at start (step_pending step36)) (at start (step3_done)) (at start (step5_done)) (at start (step52_done)) (at start (step57_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step36_done))))

  (:durative-action step37
    :duration 1200
    :condition (and (at start (step_pending step37)) (at start (step13_done)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step37_done))))

  (:durative-action step38
    :duration 86400
    :condition (and (at start (step_pending step38)) (at start (step14_done)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step38_done))))

  (:durative-action step39
    :duration 10800
    :condition (and (at start (step_pending step39)) (at start (step16_done)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step39_done))))

  (:durative-action step40
    :duration 3600
    :condition (and (at start (step_pending step40)) (at start (step14_done)) (at start (step32_done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step40_done))))

  (:durative-action step41
    :duration 7200
    :condition (and (at start (step_pending step41)) (at start (step14_done)) (at start (step38_done)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (step41_done))))

  (:durative-action step42
    :duration 1800
    :condition (and (at start (step_pending step42)) (at start (step18_done)) (at start (step54_done)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (step42_done))))

  (:durative-action step43
    :duration 7200
    :condition (and (at start (step_pending step43)) (at start (step10_done)) (at start (step18_done)) (at start (step33_done)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (step43_done))))

  (:durative-action step44
    :duration 3600
    :condition (and (at start (step_pending step44)) (at start (step32_done)) (at start (step59_done)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (step44_done))))

  (:durative-action step45
    :duration 3600
    :condition (and (at start (step_pending step45)) (at start (step6_done)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (step45_done))))

  (:durative-action step46
    :duration 3600
    :condition (and (at start (step_pending step46)) (at start (step4_done)) (at start (step16_done)) (at start (step53_done)) (at start (step59_done)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (step46_done))))

  (:durative-action step47
    :duration 10800
    :condition (and (at start (step_pending step47)) (at start (step12_done)) (at start (step41_done)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (step47_done))))

  (:durative-action step48
    :duration 300
    :condition (and (at start (step_pending step48)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (step48_done))))

  (:durative-action step49
    :duration 7200
    :condition (and (at start (step_pending step49)) (at start (step9_done)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (step49_done))))

  (:durative-action step50
    :duration 600
    :condition (and (at start (step_pending step50)) (at start (step35_done)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (step50_done))))

  (:durative-action step51
    :duration 1800
    :condition (and (at start (step_pending step51)) (at start (step3_done)) (at start (step4_done)) (at start (step16_done)) (at start (step48_done)) (at start (step49_done)) (at start (step54_done)) (at start (step59_done)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (step51_done))))

  (:durative-action step52
    :duration 7200
    :condition (and (at start (step_pending step52)) (at start (step32_done)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (step52_done))))

  (:durative-action step53
    :duration 7200
    :condition (and (at start (step_pending step53)) (at start (step6_done)) (at start (step7_done)) (at start (step40_done)) (at start (step47_done)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (step53_done))))

  (:durative-action step54
    :duration 14400
    :condition (and (at start (step_pending step54)) (at start (step29_done)) (at start (step33_done)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (step54_done))))

  (:durative-action step55
    :duration 10800
    :condition (and (at start (step_pending step55)) (at start (step15_done)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (step55_done))))

  (:durative-action step56
    :duration 86400
    :condition (and (at start (step_pending step56)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (step56_done))))

  (:durative-action step57
    :duration 14400
    :condition (and (at start (step_pending step57)) (at start (step26_done)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (step57_done))))

  (:durative-action step58
    :duration 1800
    :condition (and (at start (step_pending step58)) (at start (step6_done)) (at start (step19_done)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (step58_done))))

  (:durative-action step59
    :duration 86400
    :condition (and (at start (step_pending step59)) (at start (step24_done)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (step59_done))))

  (:durative-action step60
    :duration 7200
    :condition (and (at start (step_pending step60)) (at start (step8_done)) (at start (step17_done)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (step60_done))))
)