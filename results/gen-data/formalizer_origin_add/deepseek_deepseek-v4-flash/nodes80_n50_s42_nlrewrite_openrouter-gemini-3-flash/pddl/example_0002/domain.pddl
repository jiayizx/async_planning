(define (domain become_more_than_friends)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done) (step1_completed)
    (step2_pending) (step2_done) (step2_completed)
    (step3_pending) (step3_done) (step3_completed)
    (step4_pending) (step4_done) (step4_completed)
    (step5_pending) (step5_done) (step5_completed)
    (step6_pending) (step6_done) (step6_completed)
    (step7_pending) (step7_done) (step7_completed)
    (step8_pending) (step8_done) (step8_completed)
    (step9_pending) (step9_done) (step9_completed)
    (step10_pending) (step10_done) (step10_completed)
    (step11_pending) (step11_done) (step11_completed)
    (step12_pending) (step12_done) (step12_completed)
    (step13_pending) (step13_done) (step13_completed)
    (step14_pending) (step14_done) (step14_completed)
    (step15_pending) (step15_done) (step15_completed)
    (step16_pending) (step16_done) (step16_completed)
    (step17_pending) (step17_done) (step17_completed)
    (step18_pending) (step18_done) (step18_completed)
    (step19_pending) (step19_done) (step19_completed)
    (step20_pending) (step20_done) (step20_completed)
    (step21_pending) (step21_done) (step21_completed)
    (step22_pending) (step22_done) (step22_completed)
    (step23_pending) (step23_done) (step23_completed)
    (step24_pending) (step24_done) (step24_completed)
    (step25_pending) (step25_done) (step25_completed)
    (step26_pending) (step26_done) (step26_completed)
    (step27_pending) (step27_done) (step27_completed)
    (step28_pending) (step28_done) (step28_completed)
    (step29_pending) (step29_done) (step29_completed)
    (step30_pending) (step30_done) (step30_completed)
    (step31_pending) (step31_done) (step31_completed)
    (step32_pending) (step32_done) (step32_completed)
    (step33_pending) (step33_done) (step33_completed)
    (step34_pending) (step34_done) (step34_completed)
    (step35_pending) (step35_done) (step35_completed)
    (step36_pending) (step36_done) (step36_completed)
    (step37_pending) (step37_done) (step37_completed)
    (step38_pending) (step38_done) (step38_completed)
    (step39_pending) (step39_done) (step39_completed)
    (step40_pending) (step40_done) (step40_completed)
    (step41_pending) (step41_done) (step41_completed)
    (step42_pending) (step42_done) (step42_completed)
    (step43_pending) (step43_done) (step43_completed)
    (step44_pending) (step44_done) (step44_completed)
    (step45_pending) (step45_done) (step45_completed)
    (step46_pending) (step46_done) (step46_completed)
    (step47_pending) (step47_done) (step47_completed)
    (step48_pending) (step48_done) (step48_completed)
    (step49_pending) (step49_done) (step49_completed)
    (step50_pending) (step50_done) (step50_completed)
    (step51_pending) (step51_done) (step51_completed)
    (step52_pending) (step52_done) (step52_completed)
    (step53_pending) (step53_done) (step53_completed)
    (step54_pending) (step54_done) (step54_completed)
    (step55_pending) (step55_done) (step55_completed)
    (step56_pending) (step56_done) (step56_completed)
    (step57_pending) (step57_done) (step57_completed)
    (step58_pending) (step58_done) (step58_completed)
    (step59_pending) (step59_done) (step59_completed)
    (step60_pending) (step60_done) (step60_completed)
    (step61_pending) (step61_done) (step61_completed)
    (step62_pending) (step62_done) (step62_completed)
    (step63_pending) (step63_done) (step63_completed)
    (step64_pending) (step64_done) (step64_completed)
    (step65_pending) (step65_done) (step65_completed)
    (step66_pending) (step66_done) (step66_completed)
    (step67_pending) (step67_done) (step67_completed)
    (step68_pending) (step68_done) (step68_completed)
    (step69_pending) (step69_done) (step69_completed)
    (step70_pending) (step70_done) (step70_completed)
    (step71_pending) (step71_done) (step71_completed)
    (step72_pending) (step72_done) (step72_completed)
    (step73_pending) (step73_done) (step73_completed)
    (step74_pending) (step74_done) (step74_completed)
    (step75_pending) (step75_done) (step75_completed)
    (step76_pending) (step76_done) (step76_completed)
    (step77_pending) (step77_done) (step77_completed)
    (step78_pending) (step78_done) (step78_completed)
    (step79_pending) (step79_done) (step79_completed)
    (step80_pending) (step80_done) (step80_completed)
  )

  (:durative-action do_step1
    :duration (= ?duration 7200)
    :condition (and (at start (step1_pending))
                    (at start (step8_completed)) (at start (step12_completed)) (at start (step50_completed)) (at start (step56_completed)) (at start (step68_completed)) (at start (step76_completed)))
    :effect (and (at start (not (step1_pending)))
                 (at end (step1_done))
                 (at end (step1_completed)))
  )

  (:durative-action do_step2
    :duration (= ?duration 1800)
    :condition (and (at start (step2_pending)) (at start (step78_completed)))
    :effect (and (at start (not (step2_pending)))
                 (at end (step2_done))
                 (at end (step2_completed)))
  )

  (:durative-action do_step3
    :duration (= ?duration 900)
    :condition (and (at start (step3_pending))
                    (at start (step21_completed)) (at start (step28_completed)) (at start (step38_completed)) (at start (step53_completed)))
    :effect (and (at start (not (step3_pending)))
                 (at end (step3_done))
                 (at end (step3_completed)))
  )

  (:durative-action do_step4
    :duration (= ?duration 600)
    :condition (and (at start (step4_pending)) (at start (step44_completed)))
    :effect (and (at start (not (step4_pending)))
                 (at end (step4_done))
                 (at end (step4_completed)))
  )

  (:durative-action do_step5
    :duration (= ?duration 3600)
    :condition (and (at start (step5_pending))
                    (at start (step46_completed)) (at start (step47_completed)) (at start (step58_completed)))
    :effect (and (at start (not (step5_pending)))
                 (at end (step5_done))
                 (at end (step5_completed)))
  )

  (:durative-action do_step6
    :duration (= ?duration 3600)
    :condition (and (at start (step6_pending))
                    (at start (step2_completed)) (at start (step3_completed)) (at start (step17_completed)))
    :effect (and (at start (not (step6_pending)))
                 (at end (step6_done))
                 (at end (step6_completed)))
  )

  (:durative-action do_step7
    :duration (= ?duration 259200)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending)))
                 (at end (step7_done))
                 (at end (step7_completed)))
  )

  (:durative-action do_step8
    :duration (= ?duration 900)
    :condition (and (at start (step8_pending))
                    (at start (step32_completed)) (at start (step48_completed)) (at start (step65_completed)) (at start (step66_completed)) (at start (step74_completed)))
    :effect (and (at start (not (step8_pending)))
                 (at end (step8_done))
                 (at end (step8_completed)))
  )

  (:durative-action do_step9
    :duration (= ?duration 1200)
    :condition (and (at start (step9_pending))
                    (at start (step16_completed)) (at start (step21_completed)) (at start (step40_completed)) (at start (step48_completed)) (at start (step61_completed)))
    :effect (and (at start (not (step9_pending)))
                 (at end (step9_done))
                 (at end (step9_completed)))
  )

  (:durative-action do_step10
    :duration (= ?duration 300)
    :condition (and (at start (step10_pending)) (at start (step13_completed)))
    :effect (and (at start (not (step10_pending)))
                 (at end (step10_done))
                 (at end (step10_completed)))
  )

  (:durative-action do_step11
    :duration (= ?duration 2700)
    :condition (at start (step11_pending))
    :effect (and (at start (not (step11_pending)))
                 (at end (step11_done))
                 (at end (step11_completed)))
  )

  (:durative-action do_step12
    :duration (= ?duration 14400)
    :condition (and (at start (step12_pending)) (at start (step21_completed)))
    :effect (and (at start (not (step12_pending)))
                 (at end (step12_done))
                 (at end (step12_completed)))
  )

  (:durative-action do_step13
    :duration (= ?duration 300)
    :condition (and (at start (step13_pending)) (at start (step17_completed)) (at start (step71_completed)))
    :effect (and (at start (not (step13_pending)))
                 (at end (step13_done))
                 (at end (step13_completed)))
  )

  (:durative-action do_step14
    :duration (= ?duration 600)
    :condition (at start (step14_pending))
    :effect (and (at start (not (step14_pending)))
                 (at end (step14_done))
                 (at end (step14_completed)))
  )

  (:durative-action do_step15
    :duration (= ?duration 7200)
    :condition (and (at start (step15_pending))
                    (at start (step1_completed)) (at start (step19_completed)) (at start (step21_completed)) (at start (step36_completed)) (at start (step66_completed)) (at start (step80_completed)))
    :effect (and (at start (not (step15_pending)))
                 (at end (step15_done))
                 (at end (step15_completed)))
  )

  (:durative-action do_step16
    :duration (= ?duration 1800)
    :condition (and (at start (step16_pending)) (at start (step18_completed)) (at start (step78_completed)))
    :effect (and (at start (not (step16_pending)))
                 (at end (step16_done))
                 (at end (step16_completed)))
  )

  (:durative-action do_step17
    :duration (= ?duration 86400)
    :condition (and (at start (step17_pending)) (at start (step45_completed)))
    :effect (and (at start (not (step17_pending)))
                 (at end (step17_done))
                 (at end (step17_completed)))
  )

  (:durative-action do_step18
    :duration (= ?duration 3600)
    :condition (and (at start (step18_pending))
                    (at start (step12_completed)) (at start (step17_completed)) (at start (step31_completed)) (at start (step45_completed)) (at start (step48_completed)))
    :effect (and (at start (not (step18_pending)))
                 (at end (step18_done))
                 (at end (step18_completed)))
  )

  (:durative-action do_step19
    :duration (= ?duration 1800)
    :condition (at start (step19_pending))
    :effect (and (at start (not (step19_pending)))
                 (at end (step19_done))
                 (at end (step19_completed)))
  )

  (:durative-action do_step20
    :duration (= ?duration 300)
    :condition (and (at start (step20_pending)) (at start (step8_completed)) (at start (step28_completed)) (at start (step32_completed)))
    :effect (and (at start (not (step20_pending)))
                 (at end (step20_done))
                 (at end (step20_completed)))
  )

  (:durative-action do_step21
    :duration (= ?duration 600)
    :condition (and (at start (step21_pending)) (at start (step44_completed)) (at start (step47_completed)) (at start (step78_completed)))
    :effect (and (at start (not (step21_pending)))
                 (at end (step21_done))
                 (at end (step21_completed)))
  )

  (:durative-action do_step22
    :duration (= ?duration 604800)
    :condition (and (at start (step22_pending)) (at start (step28_completed)) (at start (step43_completed)))
    :effect (and (at start (not (step22_pending)))
                 (at end (step22_done))
                 (at end (step22_completed)))
  )

  (:durative-action do_step23
    :duration (= ?duration 900)
    :condition (and (at start (step23_pending)) (at start (step11_completed)) (at start (step45_completed)) (at start (step53_completed)))
    :effect (and (at start (not (step23_pending)))
                 (at end (step23_done))
                 (at end (step23_completed)))
  )

  (:durative-action do_step24
    :duration (= ?duration 14400)
    :condition (and (at start (step24_pending)) (at start (step56_completed)))
    :effect (and (at start (not (step24_pending)))
                 (at end (step24_done))
                 (at end (step24_completed)))
  )

  (:durative-action do_step25
    :duration (= ?duration 1200)
    :condition (and (at start (step25_pending)) (at start (step12_completed)) (at start (step24_completed)) (at start (step41_completed)))
    :effect (and (at start (not (step25_pending)))
                 (at end (step25_done))
                 (at end (step25_completed)))
  )

  (:durative-action do_step26
    :duration (= ?duration 3600)
    :condition (and (at start (step26_pending)) (at start (step60_completed)) (at start (step70_completed)))
    :effect (and (at start (not (step26_pending)))
                 (at end (step26_done))
                 (at end (step26_completed)))
  )

  (:durative-action do_step27
    :duration (= ?duration 10800)
    :condition (and (at start (step27_pending))
                    (at start (step34_completed)) (at start (step37_completed)) (at start (step42_completed)) (at start (step43_completed)) (at start (step53_completed)) (at start (step63_completed)))
    :effect (and (at start (not (step27_pending)))
                 (at end (step27_done))
                 (at end (step27_completed)))
  )

  (:durative-action do_step28
    :duration (= ?duration 1800)
    :condition (and (at start (step28_pending)) (at start (step2_completed)) (at start (step64_completed)) (at start (step65_completed)))
    :effect (and (at start (not (step28_pending)))
                 (at end (step28_done))
                 (at end (step28_completed)))
  )

  (:durative-action do_step29
    :duration (= ?duration 3600)
    :condition (at start (step29_pending))
    :effect (and (at start (not (step29_pending)))
                 (at end (step29_done))
                 (at end (step29_completed)))
  )

  (:durative-action do_step30
    :duration (= ?duration 3600)
    :condition (and (at start (step30_pending))
                    (at start (step4_completed)) (at start (step32_completed)) (at start (step37_completed)) (at start (step39_completed)) (at start (step55_completed)) (at start (step79_completed)))
    :effect (and (at start (not (step30_pending)))
                 (at end (step30_done))
                 (at end (step30_completed)))
  )

  (:durative-action do_step31
    :duration (= ?duration 7200)
    :condition (and (at start (step31_pending)) (at start (step64_completed)))
    :effect (and (at start (not (step31_pending)))
                 (at end (step31_done))
                 (at end (step31_completed)))
  )

  (:durative-action do_step32
    :duration (= ?duration 172800)
    :condition (and (at start (step32_pending)) (at start (step50_completed)) (at start (step55_completed)) (at start (step70_completed)))
    :effect (and (at start (not (step32_pending)))
                 (at end (step32_done))
                 (at end (step32_completed)))
  )

  (:durative-action do_step33
    :duration (= ?duration 10800)
    :condition (and (at start (step33_pending)) (at start (step14_completed)) (at start (step23_completed)) (at start (step41_completed)))
    :effect (and (at start (not (step33_pending)))
                 (at end (step33_done))
                 (at end (step33_completed)))
  )

  (:durative-action do_step34
    :duration (= ?duration 5400)
    :condition (and (at start (step34_pending)) (at start (step15_completed)) (at start (step29_completed)))
    :effect (and (at start (not (step34_pending)))
                 (at end (step34_done))
                 (at end (step34_completed)))
  )

  (:durative-action do_step35
    :duration (= ?duration 432000)
    :condition (at start (step35_pending))
    :effect (and (at start (not (step35_pending)))
                 (at end (step35_done))
                 (at end (step35_completed)))
  )

  (:durative-action do_step36
    :duration (= ?duration 7200)
    :condition (at start (step36_pending))
    :effect (and (at start (not (step36_pending)))
                 (at end (step36_done))
                 (at end (step36_completed)))
  )

  (:durative-action do_step37
    :duration (= ?duration 172800)
    :condition (at start (step37_pending))
    :effect (and (at start (not (step37_pending)))
                 (at end (step37_done))
                 (at end (step37_completed)))
  )

  (:durative-action do_step38
    :duration (= ?duration 2700)
    :condition (and (at start (step38_pending)) (at start (step19_completed)) (at start (step52_completed)))
    :effect (and (at start (not (step38_pending)))
                 (at end (step38_done))
                 (at end (step38_completed)))
  )

  (:durative-action do_step39
    :duration (= ?duration 1200)
    :condition (and (at start (step39_pending)) (at start (step5_completed)) (at start (step21_completed)) (at start (step29_completed)))
    :effect (and (at start (not (step39_pending)))
                 (at end (step39_done))
                 (at end (step39_completed)))
  )

  (:durative-action do_step40
    :duration (= ?duration 3600)
    :condition (at start (step40_pending))
    :effect (and (at start (not (step40_pending)))
                 (at end (step40_done))
                 (at end (step40_completed)))
  )

  (:durative-action do_step41
    :duration (= ?duration 3600)
    :condition (and (at start (step41_pending)) (at start (step14_completed)))
    :effect (and (at start (not (step41_pending)))
                 (at end (step41_done))
                 (at end (step41_completed)))
  )

  (:durative-action do_step42
    :duration (= ?duration 300)
    :condition (and (at start (step42_pending))
                    (at start (step7_completed)) (at start (step17_completed)) (at start (step24_completed)) (at start (step43_completed)) (at start (step78_completed)))
    :effect (and (at start (not (step42_pending)))
                 (at end (step42_done))
                 (at end (step42_completed)))
  )

  (:durative-action do_step43
    :duration (= ?duration 172800)
    :condition (and (at start (step43_pending)) (at start (step70_completed)))
    :effect (and (at start (not (step43_pending)))
                 (at end (step43_done))
                 (at end (step43_completed)))
  )

  (:durative-action do_step44
    :duration (= ?duration 1200)
    :condition (at start (step44_pending))
    :effect (and (at start (not (step44_pending)))
                 (at end (step44_done))
                 (at end (step44_completed)))
  )

  (:durative-action do_step45
    :duration (= ?duration 1800)
    :condition (and (at start (step45_pending)) (at start (step50_completed)) (at start (step78_completed)))
    :effect (and (at start (not (step45_pending)))
                 (at end (step45_done))
                 (at end (step45_completed)))
  )

  (:durative-action do_step46
    :duration (= ?duration 60)
    :condition (and (at start (step46_pending))
                    (at start (step8_completed)) (at start (step12_completed)) (at start (step18_completed)) (at start (step41_completed)) (at start (step64_completed)) (at start (step74_completed)))
    :effect (and (at start (not (step46_pending)))
                 (at end (step46_done))
                 (at end (step46_completed)))
  )

  (:durative-action do_step47
    :duration (= ?duration 10800)
    :condition (at start (step47_pending))
    :effect (and (at start (not (step47_pending)))
                 (at end (step47_done))
                 (at end (step47_completed)))
  )

  (:durative-action do_step48
    :duration (= ?duration 3600)
    :condition (and (at start (step48_pending)) (at start (step11_completed)))
    :effect (and (at start (not (step48_pending)))
                 (at end (step48_done))
                 (at end (step48_completed)))
  )

  (:durative-action do_step49
    :duration (= ?duration 7200)
    :condition (and (at start (step49_pending)) (at start (step19_completed)) (at start (step56_completed)) (at start (step61_completed)))
    :effect (and (at start (not (step49_pending)))
                 (at end (step49_done))
                 (at end (step49_completed)))
  )

  (:durative-action do_step50
    :duration (= ?duration 604800)
    :condition (and (at start (step50_pending)) (at start (step14_completed)) (at start (step37_completed)))
    :effect (and (at start (not (step50_pending)))
                 (at end (step50_done))
                 (at end (step50_completed)))
  )

  (:durative-action do_step51
    :duration (= ?duration 1800)
    :condition (and (at start (step51_pending))
                    (at start (step17_completed)) (at start (step24_completed)) (at start (step58_completed)) (at start (step62_completed)))
    :effect (and (at start (not (step51_pending)))
                 (at end (step51_done))
                 (at end (step51_completed)))
  )

  (:durative-action do_step52
    :duration (= ?duration 1200)
    :condition (and (at start (step52_pending)) (at start (step50_completed)) (at start (step58_completed)))
    :effect (and (at start (not (step52_pending)))
                 (at end (step52_done))
                 (at end (step52_completed)))
  )

  (:durative-action do_step53
    :duration (= ?duration 7200)
    :condition (and (at start (step53_pending)) (at start (step48_completed)) (at start (step65_completed)))
    :effect (and (at start (not (step53_pending)))
                 (at end (step53_done))
                 (at end (step53_completed)))
  )

  (:durative-action do_step54
    :duration (= ?duration 900)
    :condition (and (at start (step54_pending)) (at start (step73_completed)) (at start (step75_completed)))
    :effect (and (at start (not (step54_pending)))
                 (at end (step54_done))
                 (at end (step54_completed)))
  )

  (:durative-action do_step55
    :duration (= ?duration 1209600)
    :condition (and (at start (step55_pending)) (at start (step14_completed)))
    :effect (and (at start (not (step55_pending)))
                 (at end (step55_done))
                 (at end (step55_completed)))
  )

  (:durative-action do_step56
    :duration (= ?duration 14400)
    :condition (and (at start (step56_pending)) (at start (step37_completed)) (at start (step40_completed)))
    :effect (and (at start (not (step56_pending)))
                 (at end (step56_done))
                 (at end (step56_completed)))
  )

  (:durative-action do_step57
    :duration (= ?duration 300)
    :condition (and (at start (step57_pending))
                    (at start (step13_completed)) (at start (step43_completed)) (at start (step74_completed)) (at start (step79_completed)))
    :effect (and (at start (not (step57_pending)))
                 (at end (step57_done))
                 (at end (step57_completed)))
  )

  (:durative-action do_step58
    :duration (= ?duration 3600)
    :condition (and (at start (step58_pending)) (at start (step13_completed)) (at start (step31_completed)))
    :effect (and (at start (not (step58_pending)))
                 (at end (step58_done))
                 (at end (step58_completed)))
  )

  (:durative-action do_step59
    :duration (= ?duration 600)
    :condition (and (at start (step59_pending))
                    (at start (step8_completed)) (at start (step48_completed)) (at start (step72_completed)) (at start (step76_completed)))
    :effect (and (at start (not (step59_pending)))
                 (at end (step59_done))
                 (at end (step59_completed)))
  )

  (:durative-action do_step60
    :duration (= ?duration 300)
    :condition (and (at start (step60_pending))
                    (at start (step28_completed)) (at start (step36_completed)) (at start (step46_completed)) (at start (step55_completed)) (at start (step74_completed)))
    :effect (and (at start (not (step60_pending)))
                 (at end (step60_done))
                 (at end (step60_completed)))
  )

  (:durative-action do_step61
    :duration (= ?duration 7200)
    :condition (and (at start (step61_pending)) (at start (step12_completed)))
    :effect (and (at start (not (step61_pending)))
                 (at end (step61_done))
                 (at end (step61_completed)))
  )

  (:durative-action do_step62
    :duration (= ?duration 259200)
    :condition (and (at start (step62_pending)) (at start (step75_completed)))
    :effect (and (at start (not (step62_pending)))
                 (at end (step62_done))
                 (at end (step62_completed)))
  )

  (:durative-action do_step63
    :duration (= ?duration 1200)
    :condition (at start (step63_pending))
    :effect (and (at start (not (step63_pending)))
                 (at end (step63_done))
                 (at end (step63_completed)))
  )

  (:durative-action do_step64
    :duration (= ?duration 60)
    :condition (and (at start (step64_pending)) (at start (step11_completed)) (at start (step12_completed)) (at start (step40_completed)))
    :effect (and (at start (not (step64_pending)))
                 (at end (step64_done))
                 (at end (step64_completed)))
  )

  (:durative-action do_step65
    :duration (= ?duration 1800)
    :condition (at start (step65_pending))
    :effect (and (at start (not (step65_pending)))
                 (at end (step65_done))
                 (at end (step65_completed)))
  )

  (:durative-action do_step66
    :duration (= ?duration 3600)
    :condition (and (at start (step66_pending)) (at start (step41_completed)) (at start (step43_completed)))
    :effect (and (at start (not (step66_pending)))
                 (at end (step66_done))
                 (at end (step66_completed)))
  )

  (:durative-action do_step67
    :duration (= ?duration 3600)
    :condition (and (at start (step67_pending)) (at start (step31_completed)) (at start (step61_completed)) (at start (step69_completed)))
    :effect (and (at start (not (step67_pending)))
                 (at end (step67_done))
                 (at end (step67_completed)))
  )

  (:durative-action do_step68
    :duration (= ?duration 14400)
    :condition (and (at start (step68_pending)) (at start (step14_completed)) (at start (step41_completed)))
    :effect (and (at start (not (step68_pending)))
                 (at end (step68_done))
                 (at end (step68_completed)))
  )

  (:durative-action do_step69
    :duration (= ?duration 300)
    :condition (and (at start (step69_pending)) (at start (step11_completed)) (at start (step33_completed)) (at start (step36_completed)))
    :effect (and (at start (not (step69_pending)))
                 (at end (step69_done))
                 (at end (step69_completed)))
  )

  (:durative-action do_step70
    :duration (= ?duration 86400)
    :condition (and (at start (step70_pending)) (at start (step7_completed)) (at start (step29_completed)))
    :effect (and (at start (not (step70_pending)))
                 (at end (step70_done))
                 (at end (step70_completed)))
  )

  (:durative-action do_step71
    :duration (= ?duration 7200)
    :condition (and (at start (step71_pending)) (at start (step19_completed)) (at start (step40_completed)))
    :effect (and (at start (not (step71_pending)))
                 (at end (step71_done))
                 (at end (step71_completed)))
  )

  (:durative-action do_step72
    :duration (= ?duration 10800)
    :condition (and (at start (step72_pending))
                    (at start (step1_completed)) (at start (step9_completed)) (at start (step16_completed)) (at start (step20_completed)) (at start (step34_completed)) (at start (step40_completed)) (at start (step56_completed)) (at start (step74_completed)))
    :effect (and (at start (not (step72_pending)))
                 (at end (step72_done))
                 (at end (step72_completed)))
  )

  (:durative-action do_step73
    :duration (= ?duration 7200)
    :condition (and (at start (step73_pending)) (at start (step35_completed)) (at start (step65_completed)))
    :effect (and (at start (not (step73_pending)))
                 (at end (step73_done))
                 (at end (step73_completed)))
  )

  (:durative-action do_step74
    :duration (= ?duration 3600)
    :condition (and (at start (step74_pending))
                    (at start (step41_completed)) (at start (step49_completed)) (at start (step64_completed)) (at start (step66_completed)))
    :effect (and (at start (not (step74_pending)))
                 (at end (step74_done))
                 (at end (step74_completed)))
  )

  (:durative-action do_step75
    :duration (= ?duration 3600)
    :condition (and (at start (step75_pending)) (at start (step35_completed)) (at start (step71_completed)))
    :effect (and (at start (not (step75_pending)))
                 (at end (step75_done))
                 (at end (step75_completed)))
  )

  (:durative-action do_step76
    :duration (= ?duration 1200)
    :condition (at start (step76_pending))
    :effect (and (at start (not (step76_pending)))
                 (at end (step76_done))
                 (at end (step76_completed)))
  )

  (:durative-action do_step77
    :duration (= ?duration 14400)
    :condition (and (at start (step77_pending)) (at start (step1_completed)) (at start (step47_completed)) (at start (step76_completed)))
    :effect (and (at start (not (step77_pending)))
                 (at end (step77_done))
                 (at end (step77_completed)))
  )

  (:durative-action do_step78
    :duration (= ?duration 3600)
    :condition (and (at start (step78_pending)) (at start (step14_completed)))
    :effect (and (at start (not (step78_pending)))
                 (at end (step78_done))
                 (at end (step78_completed)))
  )

  (:durative-action do_step79
    :duration (= ?duration 1800)
    :condition (and (at start (step79_pending))
                    (at start (step16_completed)) (at start (step21_completed)) (at start (step47_completed)) (at start (step69_completed)))
    :effect (and (at start (not (step79_pending)))
                 (at end (step79_done))
                 (at end (step79_completed)))
  )

  (:durative-action do_step80
    :duration (= ?duration 3600)
    :condition (and (at start (step80_pending)) (at start (step16_completed)))
    :effect (and (at start (not (step80_pending)))
                 (at end (step80_done))
                 (at end (step80_completed)))
  )
)
