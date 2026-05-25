(define (domain secret_wedding)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step1_pending) (step1_done) (step1_sem)
    (step2_pending) (step2_done) (step2_sem)
    (step3_pending) (step3_done) (step3_sem)
    (step4_pending) (step4_done) (step4_sem)
    (step5_pending) (step5_done) (step5_sem)
    (step6_pending) (step6_done) (step6_sem)
    (step7_pending) (step7_done) (step7_sem)
    (step8_pending) (step8_done) (step8_sem)
    (step9_pending) (step9_done) (step9_sem)
    (step10_pending) (step10_done) (step10_sem)
    (step11_pending) (step11_done) (step11_sem)
    (step12_pending) (step12_done) (step12_sem)
    (step13_pending) (step13_done) (step13_sem)
    (step14_pending) (step14_done) (step14_sem)
    (step15_pending) (step15_done) (step15_sem)
    (step16_pending) (step16_done) (step16_sem)
    (step17_pending) (step17_done) (step17_sem)
    (step18_pending) (step18_done) (step18_sem)
    (step19_pending) (step19_done) (step19_sem)
    (step20_pending) (step20_done) (step20_sem)
    (step21_pending) (step21_done) (step21_sem)
    (step22_pending) (step22_done) (step22_sem)
    (step23_pending) (step23_done) (step23_sem)
    (step24_pending) (step24_done) (step24_sem)
    (step25_pending) (step25_done) (step25_sem)
    (step26_pending) (step26_done) (step26_sem)
    (step27_pending) (step27_done) (step27_sem)
    (step28_pending) (step28_done) (step28_sem)
    (step29_pending) (step29_done) (step29_sem)
    (step30_pending) (step30_done) (step30_sem)
    (step31_pending) (step31_done) (step31_sem)
    (step32_pending) (step32_done) (step32_sem)
    (step33_pending) (step33_done) (step33_sem)
    (step34_pending) (step34_done) (step34_sem)
    (step35_pending) (step35_done) (step35_sem)
    (step36_pending) (step36_done) (step36_sem)
    (step37_pending) (step37_done) (step37_sem)
    (step38_pending) (step38_done) (step38_sem)
    (step39_pending) (step39_done) (step39_sem)
    (step40_pending) (step40_done) (step40_sem)
    (step41_pending) (step41_done) (step41_sem)
    (step42_pending) (step42_done) (step42_sem)
    (step43_pending) (step43_done) (step43_sem)
    (step44_pending) (step44_done) (step44_sem)
    (step45_pending) (step45_done) (step45_sem)
    (step46_pending) (step46_done) (step46_sem)
    (step47_pending) (step47_done) (step47_sem)
    (step48_pending) (step48_done) (step48_sem)
    (step49_pending) (step49_done) (step49_sem)
    (step50_pending) (step50_done) (step50_sem)
    (step51_pending) (step51_done) (step51_sem)
    (step52_pending) (step52_done) (step52_sem)
    (step53_pending) (step53_done) (step53_sem)
    (step54_pending) (step54_done) (step54_sem)
    (step55_pending) (step55_done) (step55_sem)
    (step56_pending) (step56_done) (step56_sem)
    (step57_pending) (step57_done) (step57_sem)
    (step58_pending) (step58_done) (step58_sem)
    (step59_pending) (step59_done) (step59_sem)
    (step60_pending) (step60_done) (step60_sem)
    (step61_pending) (step61_done) (step61_sem)
    (step62_pending) (step62_done) (step62_sem)
    (step63_pending) (step63_done) (step63_sem)
    (step64_pending) (step64_done) (step64_sem)
    (step65_pending) (step65_done) (step65_sem)
    (step66_pending) (step66_done) (step66_sem)
    (step67_pending) (step67_done) (step67_sem)
    (step68_pending) (step68_done) (step68_sem)
    (step69_pending) (step69_done) (step69_sem)
    (step70_pending) (step70_done) (step70_sem)
  )

  ;; Each durative action implements one step and produces a unique semantic predicate at end.

  (:durative-action do_step1
    :duration (= ?duration 300)
    :condition (and (at start (step1_pending)) (at start (step9_sem)) (at start (step15_sem)) (at start (step32_sem)) (at start (step41_sem)) (at start (step54_sem)) (at start (step62_sem)) (at start (step65_sem)) (at start (step67_sem)) (at start (step12_sem)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)) (at end (step1_sem)))
  )

  (:durative-action do_step2
    :duration (= ?duration 7200)
    :condition (and (at start (step2_pending)) (at start (step22_sem)) (at start (step56_sem)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)) (at end (step2_sem)))
  )

  (:durative-action do_step3
    :duration (= ?duration 3600)
    :condition (and (at start (step3_pending)) (at start (step4_sem)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)) (at end (step3_sem)))
  )

  (:durative-action do_step4
    :duration (= ?duration 10800)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)) (at end (step4_sem)))
  )

  (:durative-action do_step5
    :duration (= ?duration 1800)
    :condition (and (at start (step5_pending)) (at start (step13_sem)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)) (at end (step5_sem)))
  )

  (:durative-action do_step6
    :duration (= ?duration 3600)
    :condition (and (at start (step6_pending)) (at start (step40_sem)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)) (at end (step6_sem)))
  )

  (:durative-action do_step7
    :duration (= ?duration 1200)
    :condition (and (at start (step7_pending)) (at start (step31_sem)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)) (at end (step7_sem)))
  )

  (:durative-action do_step8
    :duration (= ?duration 3600)
    :condition (at start (step8_pending))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)) (at end (step8_sem)))
  )

  (:durative-action do_step9
    :duration (= ?duration 1800)
    :condition (and (at start (step9_pending)) (at start (step51_sem)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)) (at end (step9_sem)))
  )

  (:durative-action do_step10
    :duration (= ?duration 900)
    :condition (and (at start (step10_pending)) (at start (step8_sem)) (at start (step12_sem)) (at start (step29_sem)) (at start (step31_sem)) (at start (step63_sem)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)) (at end (step10_sem)))
  )

  (:durative-action do_step11
    :duration (= ?duration 7200)
    :condition (and (at start (step11_pending)) (at start (step13_sem)) (at start (step37_sem)) (at start (step46_sem)) (at start (step51_sem)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)) (at end (step11_sem)))
  )

  (:durative-action do_step12
    :duration (= ?duration 2700)
    :condition (and (at start (step12_pending)) (at start (step58_sem)) (at start (step64_sem)) (at start (step8_sem)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)) (at end (step12_sem)))
  )

  (:durative-action do_step13
    :duration (= ?duration 3600)
    :condition (and (at start (step13_pending)) (at start (step37_sem)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)) (at end (step13_sem)))
  )

  (:durative-action do_step14
    :duration (= ?duration 7200)
    :condition (and (at start (step14_pending)) (at start (step4_sem)) (at start (step50_sem)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)) (at end (step14_sem)))
  )

  (:durative-action do_step15
    :duration (= ?duration 14400)
    :condition (at start (step15_pending))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)) (at end (step15_sem)))
  )

  (:durative-action do_step16
    :duration (= ?duration 259200)
    :condition (and (at start (step16_pending)) (at start (step2_sem)) (at start (step21_sem)) (at start (step57_sem)))
    :effect (and (at start (not (step16_pending))) (at end (step16_done)) (at end (step16_sem)))
  )

  (:durative-action do_step17
    :duration (= ?duration 2700)
    :condition (and (at start (step17_pending)) (at start (step26_sem)))
    :effect (and (at start (not (step17_pending))) (at end (step17_done)) (at end (step17_sem)))
  )

  (:durative-action do_step18
    :duration (= ?duration 7200)
    :condition (and (at start (step18_pending)) (at start (step4_sem)) (at start (step5_sem)) (at start (step26_sem)))
    :effect (and (at start (not (step18_pending))) (at end (step18_done)) (at end (step18_sem)))
  )

  (:durative-action do_step19
    :duration (= ?duration 600)
    :condition (and (at start (step19_pending)) (at start (step11_sem)) (at start (step50_sem)) (at start (step51_sem)))
    :effect (and (at start (not (step19_pending))) (at end (step19_done)) (at end (step19_sem)))
  )

  (:durative-action do_step20
    :duration (= ?duration 7200)
    :condition (and (at start (step20_pending)) (at start (step5_sem)) (at start (step40_sem)))
    :effect (and (at start (not (step20_pending))) (at end (step20_done)) (at end (step20_sem)))
  )

  (:durative-action do_step21
    :duration (= ?duration 604800)
    :condition (and (at start (step21_pending)) (at start (step15_sem)))
    :effect (and (at start (not (step21_pending))) (at end (step21_done)) (at end (step21_sem)))
  )

  (:durative-action do_step22
    :duration (= ?duration 600)
    :condition (and (at start (step22_pending)) (at start (step13_sem)) (at start (step18_sem)) (at start (step25_sem)) (at start (step46_sem)) (at start (step64_sem)))
    :effect (and (at start (not (step22_pending))) (at end (step22_done)) (at end (step22_sem)))
  )

  (:durative-action do_step23
    :duration (= ?duration 1800)
    :condition (and (at start (step23_pending)) (at start (step29_sem)) (at start (step35_sem)) (at start (step52_sem)) (at start (step64_sem)) (at start (step66_sem)))
    :effect (and (at start (not (step23_pending))) (at end (step23_done)) (at end (step23_sem)))
  )

  (:durative-action do_step24
    :duration (= ?duration 3600)
    :condition (and (at start (step24_pending)) (at start (step63_sem)))
    :effect (and (at start (not (step24_pending))) (at end (step24_done)) (at end (step24_sem)))
  )

  (:durative-action do_step25
    :duration (= ?duration 3600)
    :condition (and (at start (step25_pending)) (at start (step26_sem)) (at start (step50_sem)) (at start (step70_sem)))
    :effect (and (at start (not (step25_pending))) (at end (step25_done)) (at end (step25_sem)))
  )

  (:durative-action do_step26
    :duration (= ?duration 14400)
    :condition (and (at start (step26_pending)) (at start (step11_sem)) (at start (step60_sem)))
    :effect (and (at start (not (step26_pending))) (at end (step26_done)) (at end (step26_sem)))
  )

  (:durative-action do_step27
    :duration (= ?duration 7200)
    :condition (and (at start (step27_pending)) (at start (step18_sem)))
    :effect (and (at start (not (step27_pending))) (at end (step27_done)) (at end (step27_sem)))
  )

  (:durative-action do_step28
    :duration (= ?duration 1800)
    :condition (and (at start (step28_pending)) (at start (step46_sem)) (at start (step47_sem)))
    :effect (and (at start (not (step28_pending))) (at end (step28_done)) (at end (step28_sem)))
  )

  (:durative-action do_step29
    :duration (= ?duration 1200)
    :condition (and (at start (step29_pending)) (at start (step4_sem)) (at start (step18_sem)) (at start (step37_sem)) (at start (step52_sem)) (at start (step53_sem)))
    :effect (and (at start (not (step29_pending))) (at end (step29_done)) (at end (step29_sem)))
  )

  (:durative-action do_step30
    :duration (= ?duration 600)
    :condition (and (at start (step30_pending)) (at start (step45_sem)) (at start (step47_sem)) (at start (step61_sem)))
    :effect (and (at start (not (step30_pending))) (at end (step30_done)) (at end (step30_sem)))
  )

  (:durative-action do_step31
    :duration (= ?duration 3600)
    :condition (and (at start (step31_pending)) (at start (step60_sem)) (at start (step51_sem)))
    :effect (and (at start (not (step31_pending))) (at end (step31_done)) (at end (step31_sem)))
  )

  (:durative-action do_step32
    :duration (= ?duration 172800)
    :condition (and (at start (step32_pending)) (at start (step58_sem)) (at start (step70_sem)) (at start (step27_sem)))
    :effect (and (at start (not (step32_pending))) (at end (step32_done)) (at end (step32_sem)))
  )

  (:durative-action do_step33
    :duration (= ?duration 3600)
    :condition (and (at start (step33_pending)) (at start (step15_sem)) (at start (step47_sem)))
    :effect (and (at start (not (step33_pending))) (at end (step33_done)) (at end (step33_sem)))
  )

  (:durative-action do_step34
    :duration (= ?duration 900)
    :condition (and (at start (step34_pending)) (at start (step11_sem)) (at start (step24_sem)))
    :effect (and (at start (not (step34_pending))) (at end (step34_done)) (at end (step34_sem)))
  )

  (:durative-action do_step35
    :duration (= ?duration 7200)
    :condition (and (at start (step35_pending)) (at start (step14_sem)) (at start (step21_sem)) (at start (step28_sem)) (at start (step44_sem)))
    :effect (and (at start (not (step35_pending))) (at end (step35_done)) (at end (step35_sem)))
  )

  (:durative-action do_step36
    :duration (= ?duration 900)
    :condition (and (at start (step36_pending)) (at start (step11_sem)) (at start (step13_sem)) (at start (step23_sem)))
    :effect (and (at start (not (step36_pending))) (at end (step36_done)) (at end (step36_sem)))
  )

  (:durative-action do_step37
    :duration (= ?duration 3600)
    :condition (and (at start (step37_pending)) (at start (step4_sem)))
    :effect (and (at start (not (step37_pending))) (at end (step37_done)) (at end (step37_sem)))
  )

  (:durative-action do_step38
    :duration (= ?duration 1800)
    :condition (and (at start (step38_pending)) (at start (step32_sem)) (at start (step47_sem)))
    :effect (and (at start (not (step38_pending))) (at end (step38_done)) (at end (step38_sem)))
  )

  (:durative-action do_step39
    :duration (= ?duration 1200)
    :condition (and (at start (step39_pending)) (at start (step6_sem)) (at start (step8_sem)) (at start (step9_sem)) (at start (step32_sem)))
    :effect (and (at start (not (step39_pending))) (at end (step39_done)) (at end (step39_sem)))
  )

  (:durative-action do_step40
    :duration (= ?duration 10800)
    :condition (and (at start (step40_pending)) (at start (step3_sem)))
    :effect (and (at start (not (step40_pending))) (at end (step40_done)) (at end (step40_sem)))
  )

  (:durative-action do_step41
    :duration (= ?duration 300)
    :condition (and (at start (step41_pending)) (at start (step39_sem)))
    :effect (and (at start (not (step41_pending))) (at end (step41_done)) (at end (step41_sem)))
  )

  (:durative-action do_step42
    :duration (= ?duration 600)
    :condition (and (at start (step42_pending)) (at start (step14_sem)) (at start (step48_sem)))
    :effect (and (at start (not (step42_pending))) (at end (step42_done)) (at end (step42_sem)))
  )

  (:durative-action do_step43
    :duration (= ?duration 1800)
    :condition (and (at start (step43_pending)) (at start (step4_sem)))
    :effect (and (at start (not (step43_pending))) (at end (step43_done)) (at end (step43_sem)))
  )

  (:durative-action do_step44
    :duration (= ?duration 2700)
    :condition (and (at start (step44_pending)) (at start (step19_sem)) (at start (step62_sem)) (at start (step63_sem)))
    :effect (and (at start (not (step44_pending))) (at end (step44_done)) (at end (step44_sem)))
  )

  (:durative-action do_step45
    :duration (= ?duration 3600)
    :condition (and (at start (step45_pending)) (at start (step32_sem)))
    :effect (and (at start (not (step45_pending))) (at end (step45_done)) (at end (step45_sem)))
  )

  (:durative-action do_step46
    :duration (= ?duration 7200)
    :condition (at start (step46_pending))
    :effect (and (at start (not (step46_pending))) (at end (step46_done)) (at end (step46_sem)))
  )

  (:durative-action do_step47
    :duration (= ?duration 900)
    :condition (and (at start (step47_pending)) (at start (step57_sem)))
    :effect (and (at start (not (step47_pending))) (at end (step47_done)) (at end (step47_sem)))
  )

  (:durative-action do_step48
    :duration (= ?duration 600)
    :condition (and (at start (step48_pending)) (at start (step9_sem)) (at start (step14_sem)))
    :effect (and (at start (not (step48_pending))) (at end (step48_done)) (at end (step48_sem)))
  )

  (:durative-action do_step49
    :duration (= ?duration 300)
    :condition (and (at start (step49_pending)) (at start (step13_sem)) (at start (step14_sem)) (at start (step32_sem)) (at start (step52_sem)))
    :effect (and (at start (not (step49_pending))) (at end (step49_done)) (at end (step49_sem)))
  )

  (:durative-action do_step50
    :duration (= ?duration 1800)
    :condition (and (at start (step50_pending)) (at start (step64_sem)))
    :effect (and (at start (not (step50_pending))) (at end (step50_done)) (at end (step50_sem)))
  )

  (:durative-action do_step51
    :duration (= ?duration 3600)
    :condition (at start (step51_pending))
    :effect (and (at start (not (step51_pending))) (at end (step51_done)) (at end (step51_sem)))
  )

  (:durative-action do_step52
    :duration (= ?duration 900)
    :condition (and (at start (step52_pending)) (at start (step51_sem)) (at start (step64_sem)))
    :effect (and (at start (not (step52_pending))) (at end (step52_done)) (at end (step52_sem)))
  )

  (:durative-action do_step53
    :duration (= ?duration 2700)
    :condition (and (at start (step53_pending)) (at start (step21_sem)))
    :effect (and (at start (not (step53_pending))) (at end (step53_done)) (at end (step53_sem)))
  )

  (:durative-action do_step54
    :duration (= ?duration 10800)
    :condition (and (at start (step54_pending)) (at start (step43_sem)) (at start (step48_sem)))
    :effect (and (at start (not (step54_pending))) (at end (step54_done)) (at end (step54_sem)))
  )

  (:durative-action do_step55
    :duration (= ?duration 1200)
    :condition (and (at start (step55_pending)) (at start (step13_sem)) (at start (step18_sem)) (at start (step64_sem)))
    :effect (and (at start (not (step55_pending))) (at end (step55_done)) (at end (step55_sem)))
  )

  (:durative-action do_step56
    :duration (= ?duration 600)
    :condition (and (at start (step56_pending)) (at start (step14_sem)))
    :effect (and (at start (not (step56_pending))) (at end (step56_done)) (at end (step56_sem)))
  )

  (:durative-action do_step57
    :duration (= ?duration 7200)
    :condition (and (at start (step57_pending)) (at start (step27_sem)) (at start (step63_sem)))
    :effect (and (at start (not (step57_pending))) (at end (step57_done)) (at end (step57_sem)))
  )

  (:durative-action do_step58
    :duration (= ?duration 1800)
    :condition (and (at start (step58_pending)) (at start (step8_sem)) (at start (step43_sem)))
    :effect (and (at start (not (step58_pending))) (at end (step58_done)) (at end (step58_sem)))
  )

  (:durative-action do_step59
    :duration (= ?duration 3600)
    :condition (and (at start (step59_pending)) (at start (step25_sem)) (at start (step35_sem)) (at start (step67_sem)))
    :effect (and (at start (not (step59_pending))) (at end (step59_done)) (at end (step59_sem)))
  )

  (:durative-action do_step60
    :duration (= ?duration 3600)
    :condition (and (at start (step60_pending)) (at start (step3_sem)))
    :effect (and (at start (not (step60_pending))) (at end (step60_done)) (at end (step60_sem)))
  )

  (:durative-action do_step61
    :duration (= ?duration 900)
    :condition (and (at start (step61_pending)) (at start (step11_sem)) (at start (step42_sem)))
    :effect (and (at start (not (step61_pending))) (at end (step61_done)) (at end (step61_sem)))
  )

  (:durative-action do_step62
    :duration (= ?duration 300)
    :condition (and (at start (step62_pending)) (at start (step6_sem)) (at start (step14_sem)))
    :effect (and (at start (not (step62_pending))) (at end (step62_done)) (at end (step62_sem)))
  )

  (:durative-action do_step63
    :duration (= ?duration 3600)
    :condition (at start (step63_pending))
    :effect (and (at start (not (step63_pending))) (at end (step63_done)) (at end (step63_sem)))
  )

  (:durative-action do_step64
    :duration (= ?duration 3600)
    :condition (and (at start (step64_pending)) (at start (step8_sem)))
    :effect (and (at start (not (step64_pending))) (at end (step64_done)) (at end (step64_sem)))
  )

  (:durative-action do_step65
    :duration (= ?duration 1200)
    :condition (and (at start (step65_pending)) (at start (step33_sem)) (at start (step69_sem)))
    :effect (and (at start (not (step65_pending))) (at end (step65_done)) (at end (step65_sem)))
  )

  (:durative-action do_step66
    :duration (= ?duration 3600)
    :condition (and (at start (step66_pending)) (at start (step51_sem)))
    :effect (and (at start (not (step66_pending))) (at end (step66_done)) (at end (step66_sem)))
  )

  (:durative-action do_step67
    :duration (= ?duration 1800)
    :condition (and (at start (step67_pending)) (at start (step29_sem)) (at start (step42_sem)))
    :effect (and (at start (not (step67_pending))) (at end (step67_done)) (at end (step67_sem)))
  )

  (:durative-action do_step68
    :duration (= ?duration 300)
    :condition (and (at start (step68_pending)) (at start (step3_sem)) (at start (step11_sem)) (at start (step45_sem)) (at start (step58_sem)) (at start (step70_sem)) (at start (step46_sem)))
    :effect (and (at start (not (step68_pending))) (at end (step68_done)) (at end (step68_sem)))
  )

  (:durative-action do_step69
    :duration (= ?duration 900)
    :condition (at start (step69_pending))
    :effect (and (at start (not (step69_pending))) (at end (step69_done)) (at end (step69_sem)))
  )

  (:durative-action do_step70
    :duration (= ?duration 600)
    :condition (and (at start (step70_pending)) (at start (step53_sem)) (at start (step57_sem)) (at start (step66_sem)))
    :effect (and (at start (not (step70_pending))) (at end (step70_done)) (at end (step70_sem)))
  )
)
