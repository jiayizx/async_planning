(define (domain bread_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending)
    (step6_pending) (step7_pending) (step8_pending) (step9_pending) (step10_pending)
    (step11_pending) (step12_pending) (step13_pending) (step14_pending) (step15_pending)
    (step16_pending) (step17_pending) (step18_pending) (step19_pending) (step20_pending)
    (step21_pending) (step22_pending) (step23_pending) (step24_pending) (step25_pending)
    (step26_pending) (step27_pending) (step28_pending) (step29_pending) (step30_pending)
    (step31_pending) (step32_pending) (step33_pending) (step34_pending) (step35_pending)
    (step36_pending) (step37_pending) (step38_pending) (step39_pending) (step40_pending)
    (step41_pending) (step42_pending) (step43_pending) (step44_pending) (step45_pending)
    (step46_pending) (step47_pending) (step48_pending) (step49_pending) (step50_pending)
    (step51_pending) (step52_pending) (step53_pending) (step54_pending) (step55_pending)
    (step56_pending) (step57_pending) (step58_pending) (step59_pending) (step60_pending)
    (step_done ?s - step)
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
  (:durative-action do_step1
    :duration (= ?duration 120)
    :condition (and (at start (step1_pending)) (at start (step12_done)) (at start (step20_done)) (at start (step22_done)))
    :effect (and (at start (not (step1_pending))) (at end (step_done step1)) (at end (step1_done))))
  (:durative-action do_step2
    :duration (= ?duration 180)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step_done step2)) (at end (step2_done))))
  (:durative-action do_step3
    :duration (= ?duration 30)
    :condition (and (at start (step3_pending)) (at start (step2_done)) (at start (step4_done)))
    :effect (and (at start (not (step3_pending))) (at end (step_done step3)) (at end (step3_done))))
  (:durative-action do_step4
    :duration (= ?duration 120)
    :condition (and (at start (step4_pending)) (at start (step8_done)) (at start (step11_done)) (at start (step44_done)) (at start (step46_done)))
    :effect (and (at start (not (step4_pending))) (at end (step_done step4)) (at end (step4_done))))
  (:durative-action do_step5
    :duration (= ?duration 300)
    :condition (and (at start (step5_pending)) (at start (step19_done)) (at start (step46_done)))
    :effect (and (at start (not (step5_pending))) (at end (step_done step5)) (at end (step5_done))))
  (:durative-action do_step6
    :duration (= ?duration 600)
    :condition (and (at start (step6_pending)) (at start (step15_done)) (at start (step55_done)))
    :effect (and (at start (not (step6_pending))) (at end (step_done step6)) (at end (step6_done))))
  (:durative-action do_step7
    :duration (= ?duration 60)
    :condition (and (at start (step7_pending)) (at start (step41_done)))
    :effect (and (at start (not (step7_pending))) (at end (step_done step7)) (at end (step7_done))))
  (:durative-action do_step8
    :duration (= ?duration 30)
    :condition (at start (step8_pending))
    :effect (and (at start (not (step8_pending))) (at end (step_done step8)) (at end (step8_done))))
  (:durative-action do_step9
    :duration (= ?duration 60)
    :condition (at start (step9_pending))
    :effect (and (at start (not (step9_pending))) (at end (step_done step9)) (at end (step9_done))))
  (:durative-action do_step10
    :duration (= ?duration 300)
    :condition (at start (step10_pending))
    :effect (and (at start (not (step10_pending))) (at end (step_done step10)) (at end (step10_done))))
  (:durative-action do_step11
    :duration (= ?duration 600)
    :condition (at start (step11_pending))
    :effect (and (at start (not (step11_pending))) (at end (step_done step11)) (at end (step11_done))))
  (:durative-action do_step12
    :duration (= ?duration 120)
    :condition (and (at start (step12_pending)) (at start (step20_done)))
    :effect (and (at start (not (step12_pending))) (at end (step_done step12)) (at end (step12_done))))
  (:durative-action do_step13
    :duration (= ?duration 120)
    :condition (and (at start (step13_pending)) (at start (step35_done)))
    :effect (and (at start (not (step13_pending))) (at end (step_done step13)) (at end (step13_done))))
  (:durative-action do_step14
    :duration (= ?duration 30)
    :condition (and (at start (step14_pending)) (at start (step6_done)))
    :effect (and (at start (not (step14_pending))) (at end (step_done step14)) (at end (step14_done))))
  (:durative-action do_step15
    :duration (= ?duration 120)
    :condition (and (at start (step15_pending)) (at start (step27_done)))
    :effect (and (at start (not (step15_pending))) (at end (step_done step15)) (at end (step15_done))))
  (:durative-action do_step16
    :duration (= ?duration 60)
    :condition (and (at start (step16_pending)) (at start (step60_done)))
    :effect (and (at start (not (step16_pending))) (at end (step_done step16)) (at end (step16_done))))
  (:durative-action do_step17
    :duration (= ?duration 60)
    :condition (and (at start (step17_pending)) (at start (step12_done)) (at start (step58_done)))
    :effect (and (at start (not (step17_pending))) (at end (step_done step17)) (at end (step17_done))))
  (:durative-action do_step18
    :duration (= ?duration 60)
    :condition (and (at start (step18_pending)) (at start (step30_done)))
    :effect (and (at start (not (step18_pending))) (at end (step_done step18)) (at end (step18_done))))
  (:durative-action do_step19
    :duration (= ?duration 600)
    :condition (and (at start (step19_pending)) (at start (step9_done)) (at start (step39_done)) (at start (step50_done)))
    :effect (and (at start (not (step19_pending))) (at end (step_done step19)) (at end (step19_done))))
  (:durative-action do_step20
    :duration (= ?duration 600)
    :condition (and (at start (step20_pending)) (at start (step41_done)))
    :effect (and (at start (not (step20_pending))) (at end (step_done step20)) (at end (step20_done))))
  (:durative-action do_step21
    :duration (= ?duration 180)
    :condition (and (at start (step21_pending)) (at start (step4_done)) (at start (step28_done)))
    :effect (and (at start (not (step21_pending))) (at end (step_done step21)) (at end (step21_done))))
  (:durative-action do_step22
    :duration (= ?duration 3600)
    :condition (at start (step22_pending))
    :effect (and (at start (not (step22_pending))) (at end (step_done step22)) (at end (step22_done))))
  (:durative-action do_step23
    :duration (= ?duration 30)
    :condition (and (at start (step23_pending)) (at start (step2_done)) (at start (step17_done)) (at start (step47_done)))
    :effect (and (at start (not (step23_pending))) (at end (step_done step23)) (at end (step23_done))))
  (:durative-action do_step24
    :duration (= ?duration 300)
    :condition (and (at start (step24_pending)) (at start (step20_done)))
    :effect (and (at start (not (step24_pending))) (at end (step_done step24)) (at end (step24_done))))
  (:durative-action do_step25
    :duration (= ?duration 300)
    :condition (and (at start (step25_pending)) (at start (step15_done)) (at start (step43_done)) (at start (step45_done)))
    :effect (and (at start (not (step25_pending))) (at end (step_done step25)) (at end (step25_done))))
  (:durative-action do_step26
    :duration (= ?duration 120)
    :condition (at start (step26_pending))
    :effect (and (at start (not (step26_pending))) (at end (step_done step26)) (at end (step26_done))))
  (:durative-action do_step27
    :duration (= ?duration 180)
    :condition (and (at start (step27_pending)) (at start (step4_done)) (at start (step49_done)))
    :effect (and (at start (not (step27_pending))) (at end (step_done step27)) (at end (step27_done))))
  (:durative-action do_step28
    :duration (= ?duration 60)
    :condition (and (at start (step28_pending)) (at start (step10_done)) (at start (step53_done)))
    :effect (and (at start (not (step28_pending))) (at end (step_done step28)) (at end (step28_done))))
  (:durative-action do_step29
    :duration (= ?duration 2700)
    :condition (and (at start (step29_pending)) (at start (step49_done)))
    :effect (and (at start (not (step29_pending))) (at end (step_done step29)) (at end (step29_done))))
  (:durative-action do_step30
    :duration (= ?duration 60)
    :condition (at start (step30_pending))
    :effect (and (at start (not (step30_pending))) (at end (step_done step30)) (at end (step30_done))))
  (:durative-action do_step31
    :duration (= ?duration 120)
    :condition (and (at start (step31_pending)) (at start (step1_done)) (at start (step2_done)) (at start (step19_done)) (at start (step46_done)) (at start (step52_done)))
    :effect (and (at start (not (step31_pending))) (at end (step_done step31)) (at end (step31_done))))
  (:durative-action do_step32
    :duration (= ?duration 5400)
    :condition (and (at start (step32_pending)) (at start (step8_done)) (at start (step35_done)) (at start (step38_done)) (at start (step44_done)) (at start (step50_done)))
    :effect (and (at start (not (step32_pending))) (at end (step_done step32)) (at end (step32_done))))
  (:durative-action do_step33
    :duration (= ?duration 30)
    :condition (and (at start (step33_pending)) (at start (step16_done)))
    :effect (and (at start (not (step33_pending))) (at end (step_done step33)) (at end (step33_done))))
  (:durative-action do_step34
    :duration (= ?duration 60)
    :condition (and (at start (step34_pending)) (at start (step11_done)) (at start (step12_done)) (at start (step13_done)) (at start (step19_done)) (at start (step32_done)) (at start (step49_done)))
    :effect (and (at start (not (step34_pending))) (at end (step_done step34)) (at end (step34_done))))
  (:durative-action do_step35
    :duration (= ?duration 300)
    :condition (and (at start (step35_pending)) (at start (step18_done)) (at start (step57_done)))
    :effect (and (at start (not (step35_pending))) (at end (step_done step35)) (at end (step35_done))))
  (:durative-action do_step36
    :duration (= ?duration 30)
    :condition (and (at start (step36_pending)) (at start (step46_done)))
    :effect (and (at start (not (step36_pending))) (at end (step_done step36)) (at end (step36_done))))
  (:durative-action do_step37
    :duration (= ?duration 120)
    :condition (and (at start (step37_pending)) (at start (step20_done)) (at start (step22_done)) (at start (step46_done)))
    :effect (and (at start (not (step37_pending))) (at end (step_done step37)) (at end (step37_done))))
  (:durative-action do_step38
    :duration (= ?duration 120)
    :condition (and (at start (step38_pending)) (at start (step10_done)) (at start (step56_done)))
    :effect (and (at start (not (step38_pending))) (at end (step_done step38)) (at end (step38_done))))
  (:durative-action do_step39
    :duration (= ?duration 60)
    :condition (and (at start (step39_pending)) (at start (step11_done)) (at start (step17_done)) (at start (step44_done)))
    :effect (and (at start (not (step39_pending))) (at end (step_done step39)) (at end (step39_done))))
  (:durative-action do_step40
    :duration (= ?duration 300)
    :condition (and (at start (step40_pending)) (at start (step29_done)))
    :effect (and (at start (not (step40_pending))) (at end (step_done step40)) (at end (step40_done))))
  (:durative-action do_step41
    :duration (= ?duration 60)
    :condition (and (at start (step41_pending)) (at start (step30_done)))
    :effect (and (at start (not (step41_pending))) (at end (step_done step41)) (at end (step41_done))))
  (:durative-action do_step42
    :duration (= ?duration 60)
    :condition (and (at start (step42_pending)) (at start (step49_done)))
    :effect (and (at start (not (step42_pending))) (at end (step_done step42)) (at end (step42_done))))
  (:durative-action do_step43
    :duration (= ?duration 120)
    :condition (and (at start (step43_pending)) (at start (step5_done)) (at start (step7_done)) (at start (step20_done)))
    :effect (and (at start (not (step43_pending))) (at end (step_done step43)) (at end (step43_done))))
  (:durative-action do_step44
    :duration (= ?duration 180)
    :condition (at start (step44_pending))
    :effect (and (at start (not (step44_pending))) (at end (step_done step44)) (at end (step44_done))))
  (:durative-action do_step45
    :duration (= ?duration 120)
    :condition (at start (step45_pending))
    :effect (and (at start (not (step45_pending))) (at end (step_done step45)) (at end (step45_done))))
  (:durative-action do_step46
    :duration (= ?duration 600)
    :condition (and (at start (step46_pending)) (at start (step11_done)))
    :effect (and (at start (not (step46_pending))) (at end (step_done step46)) (at end (step46_done))))
  (:durative-action do_step47
    :duration (= ?duration 120)
    :condition (at start (step47_pending))
    :effect (and (at start (not (step47_pending))) (at end (step_done step47)) (at end (step47_done))))
  (:durative-action do_step48
    :duration (= ?duration 1200)
    :condition (and (at start (step48_pending)) (at start (step1_done)) (at start (step17_done)) (at start (step20_done)) (at start (step26_done)) (at start (step56_done)))
    :effect (and (at start (not (step48_pending))) (at end (step_done step48)) (at end (step48_done))))
  (:durative-action do_step49
    :duration (= ?duration 600)
    :condition (at start (step49_pending))
    :effect (and (at start (not (step49_pending))) (at end (step_done step49)) (at end (step49_done))))
  (:durative-action do_step50
    :duration (= ?duration 180)
    :condition (and (at start (step50_pending)) (at start (step11_done)))
    :effect (and (at start (not (step50_pending))) (at end (step_done step50)) (at end (step50_done))))
  (:durative-action do_step51
    :duration (= ?duration 300)
    :condition (and (at start (step51_pending)) (at start (step6_done)) (at start (step19_done)))
    :effect (and (at start (not (step51_pending))) (at end (step_done step51)) (at end (step51_done))))
  (:durative-action do_step52
    :duration (= ?duration 2700)
    :condition (and (at start (step52_pending)) (at start (step29_done)) (at start (step35_done)) (at start (step44_done)) (at start (step50_done)))
    :effect (and (at start (not (step52_pending))) (at end (step_done step52)) (at end (step52_done))))
  (:durative-action do_step53
    :duration (= ?duration 120)
    :condition (and (at start (step53_pending)) (at start (step47_done)))
    :effect (and (at start (not (step53_pending))) (at end (step_done step53)) (at end (step53_done))))
  (:durative-action do_step54
    :duration (= ?duration 300)
    :condition (and (at start (step54_pending)) (at start (step53_done)))
    :effect (and (at start (not (step54_pending))) (at end (step_done step54)) (at end (step54_done))))
  (:durative-action do_step55
    :duration (= ?duration 120)
    :condition (at start (step55_pending))
    :effect (and (at start (not (step55_pending))) (at end (step_done step55)) (at end (step55_done))))
  (:durative-action do_step56
    :duration (= ?duration 300)
    :condition (at start (step56_pending))
    :effect (and (at start (not (step56_pending))) (at end (step_done step56)) (at end (step56_done))))
  (:durative-action do_step57
    :duration (= ?duration 60)
    :condition (and (at start (step57_pending)) (at start (step24_done)) (at start (step53_done)))
    :effect (and (at start (not (step57_pending))) (at end (step_done step57)) (at end (step57_done))))
  (:durative-action do_step58
    :duration (= ?duration 600)
    :condition (and (at start (step58_pending)) (at start (step26_done)) (at start (step44_done)))
    :effect (and (at start (not (step58_pending))) (at end (step_done step58)) (at end (step58_done))))
  (:durative-action do_step59
    :duration (= ?duration 180)
    :condition (and (at start (step59_pending)) (at start (step2_done)) (at start (step39_done)))
    :effect (and (at start (not (step59_pending))) (at end (step_done step59)) (at end (step59_done))))
  (:durative-action do_step60
    :duration (= ?duration 2100)
    :condition (at start (step60_pending))
    :effect (and (at start (not (step60_pending))) (at end (step_done step60)) (at end (step60_done))))
)