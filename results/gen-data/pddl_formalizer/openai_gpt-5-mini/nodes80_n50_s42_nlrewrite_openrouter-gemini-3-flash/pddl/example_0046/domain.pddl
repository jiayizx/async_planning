(define (domain plan_tibet)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending) (step6_pending) (step7_pending) (step8_pending) (step9_pending) (step10_pending)
    (step11_pending) (step12_pending) (step13_pending) (step14_pending) (step15_pending) (step16_pending) (step17_pending) (step18_pending) (step19_pending) (step20_pending)
    (step21_pending) (step22_pending) (step23_pending) (step24_pending) (step25_pending) (step26_pending) (step27_pending) (step28_pending) (step29_pending) (step30_pending)
    (step31_pending) (step32_pending) (step33_pending) (step34_pending) (step35_pending) (step36_pending) (step37_pending) (step38_pending) (step39_pending) (step40_pending)
    (step41_pending) (step42_pending) (step43_pending) (step44_pending) (step45_pending) (step46_pending) (step47_pending) (step48_pending) (step49_pending) (step50_pending)
    (step51_pending) (step52_pending) (step53_pending) (step54_pending) (step55_pending) (step56_pending) (step57_pending) (step58_pending) (step59_pending) (step60_pending)
    (step61_pending) (step62_pending) (step63_pending) (step64_pending) (step65_pending) (step66_pending) (step67_pending) (step68_pending) (step69_pending) (step70_pending)
    (step71_pending) (step72_pending) (step73_pending) (step74_pending) (step75_pending) (step76_pending) (step77_pending) (step78_pending) (step79_pending) (step80_pending)

    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done) (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done) (step16_done) (step17_done) (step18_done) (step19_done) (step20_done)
    (step21_done) (step22_done) (step23_done) (step24_done) (step25_done) (step26_done) (step27_done) (step28_done) (step29_done) (step30_done)
    (step31_done) (step32_done) (step33_done) (step34_done) (step35_done) (step36_done) (step37_done) (step38_done) (step39_done) (step40_done)
    (step41_done) (step42_done) (step43_done) (step44_done) (step45_done) (step46_done) (step47_done) (step48_done) (step49_done) (step50_done)
    (step51_done) (step52_done) (step53_done) (step54_done) (step55_done) (step56_done) (step57_done) (step58_done) (step59_done) (step60_done)
    (step61_done) (step62_done) (step63_done) (step64_done) (step65_done) (step66_done) (step67_done) (step68_done) (step69_done) (step70_done)
    (step71_done) (step72_done) (step73_done) (step74_done) (step75_done) (step76_done) (step77_done) (step78_done) (step79_done) (step80_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 2700)
    :condition (and (at start (step1_pending)) (at start (step2_done)) (at start (step15_done)) (at start (step38_done)) (at start (step49_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )

  (:durative-action do_step2
    :duration (= ?duration 1209600)
    :condition (and (at start (step2_pending)) (at start (step20_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )

  (:durative-action do_step3
    :duration (= ?duration 14400)
    :condition (and (at start (step3_pending)) (at start (step14_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )

  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (and (at start (step4_pending)) (at start (step28_done)) (at start (step47_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )

  (:durative-action do_step5
    :duration (= ?duration 7200)
    :condition (and (at start (step5_pending)) (at start (step43_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )

  (:durative-action do_step6
    :duration (= ?duration 10800)
    :condition (and (at start (step6_pending)) (at start (step12_done)) (at start (step33_done)) (at start (step35_done)) (at start (step67_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )

  (:durative-action do_step7
    :duration (= ?duration 1800)
    :condition (and (at start (step7_pending)) (at start (step20_done)) (at start (step76_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )

  (:durative-action do_step8
    :duration (= ?duration 2419200)
    :condition (and (at start (step8_pending)) (at start (step2_done)) (at start (step25_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )

  (:durative-action do_step9
    :duration (= ?duration 7200)
    :condition (and (at start (step9_pending)) (at start (step25_done)) (at start (step27_done)) (at start (step40_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )

  (:durative-action do_step10
    :duration (= ?duration 1800)
    :condition (and (at start (step10_pending)) (at start (step12_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )

  (:durative-action do_step11
    :duration (= ?duration 3600)
    :condition (and (at start (step11_pending)) (at start (step28_done)) (at start (step44_done)) (at start (step61_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )

  (:durative-action do_step12
    :duration (= ?duration 7200)
    :condition (and (at start (step12_pending)) (at start (step47_done)) (at start (step50_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )

  (:durative-action do_step13
    :duration (= ?duration 10800)
    :condition (and (at start (step13_pending)) (at start (step21_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )

  (:durative-action do_step14
    :duration (= ?duration 7200)
    :condition (and (at start (step14_pending)) (at start (step46_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )

  (:durative-action do_step15
    :duration (= ?duration 18000)
    :condition (and (at start (step15_pending)) (at start (step29_done)) (at start (step45_done)) (at start (step63_done)) (at start (step76_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )

  (:durative-action do_step16
    :duration (= ?duration 3600)
    :condition (and (at start (step16_pending)) (at start (step44_done)) (at start (step73_done)) (at start (step80_done)))
    :effect (and (at start (not (step16_pending))) (at end (step16_done)))
  )

  (:durative-action do_step17
    :duration (= ?duration 900)
    :condition (and (at start (step17_pending)) (at start (step51_done)))
    :effect (and (at start (not (step17_pending))) (at end (step17_done)))
  )

  (:durative-action do_step18
    :duration (= ?duration 604800)
    :condition (and (at start (step18_pending)) (at start (step5_done)) (at start (step20_done)) (at start (step74_done)))
    :effect (and (at start (not (step18_pending))) (at end (step18_done)))
  )

  (:durative-action do_step19
    :duration (= ?duration 1800)
    :condition (and (at start (step19_pending)) (at start (step8_done)) (at start (step31_done)) (at start (step72_done)))
    :effect (and (at start (not (step19_pending))) (at end (step19_done)))
  )

  (:durative-action do_step20
    :duration (= ?duration 3628800)
    :condition (and (at start (step20_pending)))
    :effect (and (at start (not (step20_pending))) (at end (step20_done)))
  )

  (:durative-action do_step21
    :duration (= ?duration 3600)
    :condition (and (at start (step21_pending)) (at start (step3_done)) (at start (step12_done)) (at start (step14_done)) (at start (step17_done)))
    :effect (and (at start (not (step21_pending))) (at end (step21_done)))
  )

  (:durative-action do_step22
    :duration (= ?duration 1800)
    :condition (and (at start (step22_pending)) (at start (step45_done)) (at start (step66_done)) (at start (step71_done)))
    :effect (and (at start (not (step22_pending))) (at end (step22_done)))
  )

  (:durative-action do_step23
    :duration (= ?duration 900)
    :condition (and (at start (step23_pending)) (at start (step9_done)) (at start (step55_done)))
    :effect (and (at start (not (step23_pending))) (at end (step23_done)))
  )

  (:durative-action do_step24
    :duration (= ?duration 604800)
    :condition (and (at start (step24_pending)) (at start (step8_done)) (at start (step27_done)) (at start (step77_done)))
    :effect (and (at start (not (step24_pending))) (at end (step24_done)))
  )

  (:durative-action do_step25
    :duration (= ?duration 7200)
    :condition (and (at start (step25_pending)) (at start (step14_done)) (at start (step20_done)) (at start (step39_done)))
    :effect (and (at start (not (step25_pending))) (at end (step25_done)))
  )

  (:durative-action do_step26
    :duration (= ?duration 10800)
    :condition (and (at start (step26_pending)))
    :effect (and (at start (not (step26_pending))) (at end (step26_done)))
  )

  (:durative-action do_step27
    :duration (= ?duration 7200)
    :condition (and (at start (step27_pending)))
    :effect (and (at start (not (step27_pending))) (at end (step27_done)))
  )

  (:durative-action do_step28
    :duration (= ?duration 10800)
    :condition (and (at start (step28_pending)) (at start (step5_done)) (at start (step61_done)))
    :effect (and (at start (not (step28_pending))) (at end (step28_done)))
  )

  (:durative-action do_step29
    :duration (= ?duration 3600)
    :condition (and (at start (step29_pending)) (at start (step39_done)))
    :effect (and (at start (not (step29_pending))) (at end (step29_done)))
  )

  (:durative-action do_step30
    :duration (= ?duration 2700)
    :condition (and (at start (step30_pending)) (at start (step27_done)) (at start (step28_done)) (at start (step37_done)) (at start (step61_done)) (at start (step63_done)))
    :effect (and (at start (not (step30_pending))) (at end (step30_done)))
  )

  (:durative-action do_step31
    :duration (= ?duration 7200)
    :condition (and (at start (step31_pending)) (at start (step52_done)))
    :effect (and (at start (not (step31_pending))) (at end (step31_done)))
  )

  (:durative-action do_step32
    :duration (= ?duration 21600)
    :condition (and (at start (step32_pending)) (at start (step3_done)) (at start (step11_done)) (at start (step27_done)) (at start (step52_done)))
    :effect (and (at start (not (step32_pending))) (at end (step32_done)))
  )

  (:durative-action do_step33
    :duration (= ?duration 1200)
    :condition (and (at start (step33_pending)) (at start (step46_done)) (at start (step71_done)))
    :effect (and (at start (not (step33_pending))) (at end (step33_done)))
  )

  (:durative-action do_step34
    :duration (= ?duration 1800)
    :condition (and (at start (step34_pending)) (at start (step53_done)))
    :effect (and (at start (not (step34_pending))) (at end (step34_done)))
  )

  (:durative-action do_step35
    :duration (= ?duration 3600)
    :condition (and (at start (step35_pending)) (at start (step5_done)) (at start (step13_done)))
    :effect (and (at start (not (step35_pending))) (at end (step35_done)))
  )

  (:durative-action do_step36
    :duration (= ?duration 900)
    :condition (and (at start (step36_pending)) (at start (step20_done)) (at start (step78_done)))
    :effect (and (at start (not (step36_pending))) (at end (step36_done)))
  )

  (:durative-action do_step37
    :duration (= ?duration 3600)
    :condition (and (at start (step37_pending)))
    :effect (and (at start (not (step37_pending))) (at end (step37_done)))
  )

  (:durative-action do_step38
    :duration (= ?duration 1200)
    :condition (and (at start (step38_pending)) (at start (step13_done)) (at start (step50_done)) (at start (step52_done)) (at start (step69_done)))
    :effect (and (at start (not (step38_pending))) (at end (step38_done)))
  )

  (:durative-action do_step39
    :duration (= ?duration 10800)
    :condition (and (at start (step39_pending)) (at start (step44_done)) (at start (step47_done)) (at start (step50_done)))
    :effect (and (at start (not (step39_pending))) (at end (step39_done)))
  )

  (:durative-action do_step40
    :duration (= ?duration 86400)
    :condition (and (at start (step40_pending)) (at start (step25_done)) (at start (step43_done)) (at start (step48_done)) (at start (step57_done)))
    :effect (and (at start (not (step40_pending))) (at end (step40_done)))
  )

  (:durative-action do_step41
    :duration (= ?duration 1800)
    :condition (and (at start (step41_pending)) (at start (step10_done)) (at start (step21_done)) (at start (step56_done)) (at start (step57_done)) (at start (step70_done)) (at start (step73_done)))
    :effect (and (at start (not (step41_pending))) (at end (step41_done)))
  )

  (:durative-action do_step42
    :duration (= ?duration 1800)
    :condition (and (at start (step42_pending)) (at start (step28_done)))
    :effect (and (at start (not (step42_pending))) (at end (step42_done)))
  )

  (:durative-action do_step43
    :duration (= ?duration 3600)
    :condition (and (at start (step43_pending)) (at start (step37_done)) (at start (step77_done)))
    :effect (and (at start (not (step43_pending))) (at end (step43_done)))
  )

  (:durative-action do_step44
    :duration (= ?duration 7200)
    :condition (and (at start (step44_pending)) (at start (step27_done)))
    :effect (and (at start (not (step44_pending))) (at end (step44_done)))
  )

  (:durative-action do_step45
    :duration (= ?duration 3600)
    :condition (and (at start (step45_pending)) (at start (step25_done)))
    :effect (and (at start (not (step45_pending))) (at end (step45_done)))
  )

  (:durative-action do_step46
    :duration (= ?duration 3600)
    :condition (and (at start (step46_pending)))
    :effect (and (at start (not (step46_pending))) (at end (step46_done)))
  )

  (:durative-action do_step47
    :duration (= ?duration 1800)
    :condition (and (at start (step47_pending)))
    :effect (and (at start (not (step47_pending))) (at end (step47_done)))
  )

  (:durative-action do_step48
    :duration (= ?duration 1800)
    :condition (and (at start (step48_pending)) (at start (step28_done)) (at start (step42_done)))
    :effect (and (at start (not (step48_pending))) (at end (step48_done)))
  )

  (:durative-action do_step49
    :duration (= ?duration 3600)
    :condition (and (at start (step49_pending)) (at start (step43_done)))
    :effect (and (at start (not (step49_pending))) (at end (step49_done)))
  )

  (:durative-action do_step50
    :duration (= ?duration 7200)
    :condition (and (at start (step50_pending)))
    :effect (and (at start (not (step50_pending))) (at end (step50_done)))
  )

  (:durative-action do_step51
    :duration (= ?duration 600)
    :condition (and (at start (step51_pending)) (at start (step49_done)))
    :effect (and (at start (not (step51_pending))) (at end (step51_done)))
  )

  (:durative-action do_step52
    :duration (= ?duration 1800)
    :condition (and (at start (step52_pending)) (at start (step8_done)) (at start (step20_done)))
    :effect (and (at start (not (step52_pending))) (at end (step52_done)))
  )

  (:durative-action do_step53
    :duration (= ?duration 3600)
    :condition (and (at start (step53_pending)) (at start (step14_done)) (at start (step28_done)) (at start (step31_done)) (at start (step47_done)))
    :effect (and (at start (not (step53_pending))) (at end (step53_done)))
  )

  (:durative-action do_step54
    :duration (= ?duration 900)
    :condition (and (at start (step54_pending)) (at start (step8_done)) (at start (step28_done)))
    :effect (and (at start (not (step54_pending))) (at end (step54_done)))
  )

  (:durative-action do_step55
    :duration (= ?duration 1800)
    :condition (and (at start (step55_pending)) (at start (step24_done)) (at start (step63_done)) (at start (step49_done)))
    :effect (and (at start (not (step55_pending))) (at end (step55_done)))
  )

  (:durative-action do_step56
    :duration (= ?duration 900)
    :condition (and (at start (step56_pending)) (at start (step4_done)) (at start (step45_done)) (at start (step60_done)) (at start (step69_done)) (at start (step78_done)))
    :effect (and (at start (not (step56_pending))) (at end (step56_done)))
  )

  (:durative-action do_step57
    :duration (= ?duration 3600)
    :condition (and (at start (step57_pending)))
    :effect (and (at start (not (step57_pending))) (at end (step57_done)))
  )

  (:durative-action do_step58
    :duration (= ?duration 600)
    :condition (and (at start (step58_pending)) (at start (step12_done)) (at start (step21_done)) (at start (step26_done)) (at start (step39_done)) (at start (step61_done)))
    :effect (and (at start (not (step58_pending))) (at end (step58_done)))
  )

  (:durative-action do_step59
    :duration (= ?duration 1800)
    :condition (and (at start (step59_pending)) (at start (step21_done)) (at start (step25_done)) (at start (step28_done)) (at start (step76_done)))
    :effect (and (at start (not (step59_pending))) (at end (step59_done)))
  )

  (:durative-action do_step60
    :duration (= ?duration 3600)
    :condition (and (at start (step60_pending)) (at start (step2_done)) (at start (step10_done)) (at start (step63_done)) (at start (step71_done)))
    :effect (and (at start (not (step60_pending))) (at end (step60_done)))
  )

  (:durative-action do_step61
    :duration (= ?duration 3600)
    :condition (and (at start (step61_pending)) (at start (step43_done)))
    :effect (and (at start (not (step61_pending))) (at end (step61_done)))
  )

  (:durative-action do_step62
    :duration (= ?duration 1800)
    :condition (and (at start (step62_pending)) (at start (step8_done)) (at start (step66_done)) (at start (step70_done)) (at start (step49_done)))
    :effect (and (at start (not (step62_pending))) (at end (step62_done)))
  )

  (:durative-action do_step63
    :duration (= ?duration 10800)
    :condition (and (at start (step63_pending)) (at start (step3_done)) (at start (step12_done)) (at start (step14_done)) (at start (step22_done)))
    :effect (and (at start (not (step63_pending))) (at end (step63_done)))
  )

  (:durative-action do_step64
    :duration (= ?duration 1209600)
    :condition (and (at start (step64_pending)) (at start (step8_done)) (at start (step66_done)))
    :effect (and (at start (not (step64_pending))) (at end (step64_done)))
  )

  (:durative-action do_step65
    :duration (= ?duration 7200)
    :condition (and (at start (step65_pending)) (at start (step61_done)))
    :effect (and (at start (not (step65_pending))) (at end (step65_done)))
  )

  (:durative-action do_step66
    :duration (= ?duration 900)
    :condition (and (at start (step66_pending)) (at start (step46_done)))
    :effect (and (at start (not (step66_pending))) (at end (step66_done)))
  )

  (:durative-action do_step67
    :duration (= ?duration 900)
    :condition (and (at start (step67_pending)) (at start (step35_done)) (at start (step45_done)) (at start (step61_done)) (at start (step74_done)) (at start (step77_done)))
    :effect (and (at start (not (step67_pending))) (at end (step67_done)))
  )

  (:durative-action do_step68
    :duration (= ?duration 900)
    :condition (and (at start (step68_pending)) (at start (step61_done)) (at start (step77_done)))
    :effect (and (at start (not (step68_pending))) (at end (step68_done)))
  )

  (:durative-action do_step69
    :duration (= ?duration 7200)
    :condition (and (at start (step69_pending)) (at start (step20_done)) (at start (step47_done)))
    :effect (and (at start (not (step69_pending))) (at end (step69_done)))
  )

  (:durative-action do_step70
    :duration (= ?duration 900)
    :condition (and (at start (step70_pending)) (at start (step20_done)) (at start (step27_done)) (at start (step37_done)) (at start (step52_done)) (at start (step80_done)))
    :effect (and (at start (not (step70_pending))) (at end (step70_done)))
  )

  (:durative-action do_step71
    :duration (= ?duration 7200)
    :condition (and (at start (step71_pending)) (at start (step31_done)))
    :effect (and (at start (not (step71_pending))) (at end (step71_done)))
  )

  (:durative-action do_step72
    :duration (= ?duration 1200)
    :condition (and (at start (step72_pending)) (at start (step61_done)))
    :effect (and (at start (not (step72_pending))) (at end (step72_done)))
  )

  (:durative-action do_step73
    :duration (= ?duration 1200)
    :condition (and (at start (step73_pending)) (at start (step64_done)) (at start (step78_done)) (at start (step28_done)))
    :effect (and (at start (not (step73_pending))) (at end (step73_done)))
  )

  (:durative-action do_step74
    :duration (= ?duration 2700)
    :condition (and (at start (step74_pending)) (at start (step57_done)) (at start (step65_done)) (at start (step43_done)))
    :effect (and (at start (not (step74_pending))) (at end (step74_done)))
  )

  (:durative-action do_step75
    :duration (= ?duration 3600)
    :condition (and (at start (step75_pending)) (at start (step64_done)) (at start (step72_done)) (at start (step46_done)))
    :effect (and (at start (not (step75_pending))) (at end (step75_done)))
  )

  (:durative-action do_step76
    :duration (= ?duration 3600)
    :condition (and (at start (step76_pending)) (at start (step30_done)) (at start (step44_done)) (at start (step47_done)))
    :effect (and (at start (not (step76_pending))) (at end (step76_done)))
  )

  (:durative-action do_step77
    :duration (= ?duration 7200)
    :condition (and (at start (step77_pending)) (at start (step50_done)) (at start (step44_done)))
    :effect (and (at start (not (step77_pending))) (at end (step77_done)))
  )

  (:durative-action do_step78
    :duration (= ?duration 3600)
    :condition (and (at start (step78_pending)) (at start (step44_done)) (at start (step50_done)))
    :effect (and (at start (not (step78_pending))) (at end (step78_done)))
  )

  (:durative-action do_step79
    :duration (= ?duration 900)
    :condition (and (at start (step79_pending)) (at start (step3_done)) (at start (step15_done)) (at start (step36_done)) (at start (step39_done)) (at start (step60_done)) (at start (step63_done)) (at start (step47_done)))
    :effect (and (at start (not (step79_pending))) (at end (step79_done)))
  )

  (:durative-action do_step80
    :duration (= ?duration 900)
    :condition (and (at start (step80_pending)) (at start (step69_done)))
    :effect (and (at start (not (step80_pending))) (at end (step80_done)))
  )
)
