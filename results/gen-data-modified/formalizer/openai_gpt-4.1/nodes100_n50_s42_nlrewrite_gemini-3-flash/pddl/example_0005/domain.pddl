(define (domain send_letter)
  (:requirements :durative-actions)
  (:predicates
    (step1_pending) (step1_done)
    (step2_pending) (step2_done)
    (step3_pending) (step3_done)
    (step4_pending) (step4_done)
    (step5_pending) (step5_done)
    (step6_pending) (step6_done)
    (step7_pending) (step7_done)
    (step8_pending) (step8_done)
    (step9_pending) (step9_done)
    (step10_pending) (step10_done)
    (step11_pending) (step11_done)
    (step12_pending) (step12_done)
    (step13_pending) (step13_done)
    (step14_pending) (step14_done)
    (step15_pending) (step15_done)
    (step16_pending) (step16_done)
    (step17_pending) (step17_done)
    (step18_pending) (step18_done)
    (step19_pending) (step19_done)
    (step20_pending) (step20_done)
    (step21_pending) (step21_done)
    (step22_pending) (step22_done)
    (step23_pending) (step23_done)
    (step24_pending) (step24_done)
    (step25_pending) (step25_done)
    (step26_pending) (step26_done)
    (step27_pending) (step27_done)
    (step28_pending) (step28_done)
    (step29_pending) (step29_done)
    (step30_pending) (step30_done)
    (step31_pending) (step31_done)
    (step32_pending) (step32_done)
    (step33_pending) (step33_done)
    (step34_pending) (step34_done)
    (step35_pending) (step35_done)
    (step36_pending) (step36_done)
    (step37_pending) (step37_done)
    (step38_pending) (step38_done)
    (step39_pending) (step39_done)
    (step40_pending) (step40_done)
    (step41_pending) (step41_done)
    (step42_pending) (step42_done)
    (step43_pending) (step43_done)
    (step44_pending) (step44_done)
    (step45_pending) (step45_done)
    (step46_pending) (step46_done)
    (step47_pending) (step47_done)
    (step48_pending) (step48_done)
    (step49_pending) (step49_done)
    (step50_pending) (step50_done)
    (step51_pending) (step51_done)
    (step52_pending) (step52_done)
    (step53_pending) (step53_done)
    (step54_pending) (step54_done)
    (step55_pending) (step55_done)
    (step56_pending) (step56_done)
    (step57_pending) (step57_done)
    (step58_pending) (step58_done)
    (step59_pending) (step59_done)
    (step60_pending) (step60_done)
    (step61_pending) (step61_done)
    (step62_pending) (step62_done)
    (step63_pending) (step63_done)
    (step64_pending) (step64_done)
    (step65_pending) (step65_done)
    (step66_pending) (step66_done)
    (step67_pending) (step67_done)
    (step68_pending) (step68_done)
    (step69_pending) (step69_done)
    (step70_pending) (step70_done)
    (step71_pending) (step71_done)
    (step72_pending) (step72_done)
    (step73_pending) (step73_done)
    (step74_pending) (step74_done)
    (step75_pending) (step75_done)
    (step76_pending) (step76_done)
    (step77_pending) (step77_done)
    (step78_pending) (step78_done)
    (step79_pending) (step79_done)
    (step80_pending) (step80_done)
    (step81_pending) (step81_done)
    (step82_pending) (step82_done)
    (step83_pending) (step83_done)
    (step84_pending) (step84_done)
    (step85_pending) (step85_done)
    (step86_pending) (step86_done)
    (step87_pending) (step87_done)
    (step88_pending) (step88_done)
    (step89_pending) (step89_done)
    (step90_pending) (step90_done)
    (step91_pending) (step91_done)
    (step92_pending) (step92_done)
    (step93_pending) (step93_done)
    (step94_pending) (step94_done)
    (step95_pending) (step95_done)
    (step96_pending) (step96_done)
    (step97_pending) (step97_done)
    (step98_pending) (step98_done)
    (step99_pending) (step99_done)
    (step100_pending) (step100_done)
  )

  ;; Step 1
  (:durative-action do_step1
    :duration (= ?duration 30)
    :condition (and (at start (step1_pending)) (at start (step11_done)) (at start (step18_done)) (at start (step66_done)) (at start (step83_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)))
  )
  ;; Step 2
  (:durative-action do_step2
    :duration (= ?duration 45)
    :condition (and (at start (step2_pending)) (at start (step19_done)) (at start (step83_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)))
  )
  ;; Step 3
  (:durative-action do_step3
    :duration (= ?duration 60)
    :condition (and (at start (step3_pending)) (at start (step75_done)) (at start (step83_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)))
  )
  ;; Step 4
  (:durative-action do_step4
    :duration (= ?duration 10)
    :condition (and (at start (step4_pending)) (at start (step15_done)) (at start (step52_done)) (at start (step86_done)))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)))
  )
  ;; Step 5
  (:durative-action do_step5
    :duration (= ?duration 60)
    :condition (and (at start (step5_pending)) (at start (step13_done)) (at start (step18_done)) (at start (step37_done)) (at start (step49_done)) (at start (step66_done)) (at start (step68_done)) (at start (step73_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)))
  )
  ;; Step 6
  (:durative-action do_step6
    :duration (= ?duration 600)
    :condition (and (at start (step6_pending)) (at start (step32_done)) (at start (step33_done)) (at start (step79_done)))
    :effect (and (at start (not (step6_pending))) (at end (step6_done)))
  )
  ;; Step 7
  (:durative-action do_step7
    :duration (= ?duration 20)
    :condition (and (at start (step7_pending)) (at start (step15_done)) (at start (step17_done)))
    :effect (and (at start (not (step7_pending))) (at end (step7_done)))
  )
  ;; Step 8
  (:durative-action do_step8
    :duration (= ?duration 15)
    :condition (and (at start (step8_pending)) (at start (step20_done)) (at start (step45_done)) (at start (step47_done)) (at start (step49_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done)))
  )
  ;; Step 9
  (:durative-action do_step9
    :duration (= ?duration 10)
    :condition (and (at start (step9_pending)) (at start (step47_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done)))
  )
  ;; Step 10
  (:durative-action do_step10
    :duration (= ?duration 300)
    :condition (and (at start (step10_pending)) (at start (step38_done)) (at start (step46_done)) (at start (step47_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done)))
  )
  ;; Step 11
  (:durative-action do_step11
    :duration (= ?duration 180)
    :condition (and (at start (step11_pending)) (at start (step29_done)) (at start (step37_done)) (at start (step57_done)) (at start (step61_done)) (at start (step63_done)) (at start (step67_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done)))
  )
  ;; Step 12
  (:durative-action do_step12
    :duration (= ?duration 600)
    :condition (and (at start (step12_pending)) (at start (step48_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done)))
  )
  ;; Step 13
  (:durative-action do_step13
    :duration (= ?duration 900)
    :condition (and (at start (step13_pending)) (at start (step12_done)) (at start (step15_done)) (at start (step92_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done)))
  )
  ;; Step 14
  (:durative-action do_step14
    :duration (= ?duration 60)
    :condition (and (at start (step14_pending)) (at start (step25_done)) (at start (step73_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done)))
  )
  ;; Step 15
  (:durative-action do_step15
    :duration (= ?duration 120)
    :condition (at start (step15_pending))
    :effect (and (at start (not (step15_pending))) (at end (step15_done)))
  )
  ;; Step 16
  (:durative-action do_step16
    :duration (= ?duration 20)
    :condition (and (at start (step16_pending)) (at start (step10_done)) (at start (step22_done)) (at start (step26_done)) (at start (step85_done)))
    :effect (and (at start (not (step16_pending))) (at end (step16_done)))
  )
  ;; Step 17
  (:durative-action do_step17
    :duration (= ?duration 300)
    :condition (at start (step17_pending))
    :effect (and (at start (not (step17_pending))) (at end (step17_done)))
  )
  ;; Step 18
  (:durative-action do_step18
    :duration (= ?duration 15)
    :condition (and (at start (step18_pending)) (at start (step13_done)) (at start (step21_done)) (at start (step57_done)))
    :effect (and (at start (not (step18_pending))) (at end (step18_done)))
  )
  ;; Step 19
  (:durative-action do_step19
    :duration (= ?duration 120)
    :condition (and (at start (step19_pending)) (at start (step40_done)) (at start (step49_done)) (at start (step73_done)))
    :effect (and (at start (not (step19_pending))) (at end (step19_done)))
  )
  ;; Step 20
  (:durative-action do_step20
    :duration (= ?duration 15)
    :condition (and (at start (step20_pending)) (at start (step65_done)) (at start (step75_done)) (at start (step87_done)) (at start (step92_done)))
    :effect (and (at start (not (step20_pending))) (at end (step20_done)))
  )
  ;; Step 21
  (:durative-action do_step21
    :duration (= ?duration 240)
    :condition (and (at start (step21_pending)) (at start (step13_done)) (at start (step37_done)) (at start (step92_done)))
    :effect (and (at start (not (step21_pending))) (at end (step21_done)))
  )
  ;; Step 22
  (:durative-action do_step22
    :duration (= ?duration 30)
    :condition (and (at start (step22_pending)) (at start (step49_done)))
    :effect (and (at start (not (step22_pending))) (at end (step22_done)))
  )
  ;; Step 23
  (:durative-action do_step23
    :duration (= ?duration 600)
    :condition (and (at start (step23_pending)) (at start (step7_done)) (at start (step13_done)) (at start (step25_done)) (at start (step46_done)) (at start (step57_done)))
    :effect (and (at start (not (step23_pending))) (at end (step23_done)))
  )
  ;; Step 24
  (:durative-action do_step24
    :duration (= ?duration 300)
    :condition (and (at start (step24_pending)) (at start (step23_done)) (at start (step25_done)) (at start (step49_done)) (at start (step84_done)) (at start (step97_done)))
    :effect (and (at start (not (step24_pending))) (at end (step24_done)))
  )
  ;; Step 25
  (:durative-action do_step25
    :duration (= ?duration 60)
    :condition (and (at start (step25_pending)) (at start (step19_done)) (at start (step69_done)))
    :effect (and (at start (not (step25_pending))) (at end (step25_done)))
  )
  ;; Step 26
  (:durative-action do_step26
    :duration (= ?duration 45)
    :condition (and (at start (step26_pending)) (at start (step31_done)) (at start (step83_done)))
    :effect (and (at start (not (step26_pending))) (at end (step26_done)))
  )
  ;; Step 27
  (:durative-action do_step27
    :duration (= ?duration 120)
    :condition (at start (step27_pending))
    :effect (and (at start (not (step27_pending))) (at end (step27_done)))
  )
  ;; Step 28
  (:durative-action do_step28
    :duration (= ?duration 5)
    :condition (and (at start (step28_pending)) (at start (step6_done)) (at start (step14_done)) (at start (step27_done)) (at start (step62_done)) (at start (step76_done)) (at start (step85_done)))
    :effect (and (at start (not (step28_pending))) (at end (step28_done)))
  )
  ;; Step 29
  (:durative-action do_step29
    :duration (= ?duration 180)
    :condition (and (at start (step29_pending)) (at start (step61_done)))
    :effect (and (at start (not (step29_pending))) (at end (step29_done)))
  )
  ;; Step 30
  (:durative-action do_step30
    :duration (= ?duration 30)
    :condition (and (at start (step30_pending)) (at start (step18_done)) (at start (step26_done)))
    :effect (and (at start (not (step30_pending))) (at end (step30_done)))
  )
  ;; Step 31
  (:durative-action do_step31
    :duration (= ?duration 3600)
    :condition (at start (step31_pending))
    :effect (and (at start (not (step31_pending))) (at end (step31_done)))
  )
  ;; Step 32
  (:durative-action do_step32
    :duration (= ?duration 120)
    :condition (and (at start (step32_pending)) (at start (step66_done)) (at start (step85_done)))
    :effect (and (at start (not (step32_pending))) (at end (step32_done)))
  )
  ;; Step 33
  (:durative-action do_step33
    :duration (= ?duration 30)
    :condition (and (at start (step33_pending)) (at start (step3_done)) (at start (step93_done)))
    :effect (and (at start (not (step33_pending))) (at end (step33_done)))
  )
  ;; Step 34
  (:durative-action do_step34
    :duration (= ?duration 5)
    :condition (and (at start (step34_pending)) (at start (step2_done)) (at start (step4_done)) (at start (step6_done)) (at start (step7_done)) (at start (step11_done)) (at start (step32_done)) (at start (step50_done)) (at start (step65_done)) (at start (step74_done)) (at start (step93_done)) (at start (step94_done)))
    :effect (and (at start (not (step34_pending))) (at end (step34_done)))
  )
  ;; Step 35
  (:durative-action do_step35
    :duration (= ?duration 30)
    :condition (and (at start (step35_pending)) (at start (step2_done)) (at start (step25_done)) (at start (step40_done)) (at start (step45_done)) (at start (step65_done)) (at start (step69_done)) (at start (step77_done)) (at start (step78_done)))
    :effect (and (at start (not (step35_pending))) (at end (step35_done)))
  )
  ;; Step 36
  (:durative-action do_step36
    :duration (= ?duration 10)
    :condition (and (at start (step36_pending)) (at start (step2_done)) (at start (step13_done)) (at start (step22_done)) (at start (step31_done)) (at start (step49_done)) (at start (step54_done)) (at start (step68_done)) (at start (step76_done)) (at start (step96_done)))
    :effect (and (at start (not (step36_pending))) (at end (step36_done)))
  )
  ;; Step 37
  (:durative-action do_step37
    :duration (= ?duration 600)
    :condition (and (at start (step37_pending)) (at start (step78_done)))
    :effect (and (at start (not (step37_pending))) (at end (step37_done)))
  )
  ;; Step 38
  (:durative-action do_step38
    :duration (= ?duration 300)
    :condition (and (at start (step38_pending)) (at start (step78_done)))
    :effect (and (at start (not (step38_pending))) (at end (step38_done)))
  )
  ;; Step 39
  (:durative-action do_step39
    :duration (= ?duration 15)
    :condition (and (at start (step39_pending)) (at start (step18_done)) (at start (step45_done)) (at start (step68_done)) (at start (step75_done)) (at start (step77_done)))
    :effect (and (at start (not (step39_pending))) (at end (step39_done)))
  )
  ;; Step 40
  (:durative-action do_step40
    :duration (= ?duration 240)
    :condition (and (at start (step40_pending)) (at start (step27_done)) (at start (step46_done)) (at start (step61_done)))
    :effect (and (at start (not (step40_pending))) (at end (step40_done)))
  )
  ;; Step 41
  (:durative-action do_step41
    :duration (= ?duration 180)
    :condition (and (at start (step41_pending)) (at start (step53_done)) (at start (step91_done)))
    :effect (and (at start (not (step41_pending))) (at end (step41_done)))
  )
  ;; Step 42
  (:durative-action do_step42
    :duration (= ?duration 5)
    :condition (and (at start (step42_pending)) (at start (step2_done)) (at start (step8_done)) (at start (step29_done)) (at start (step54_done)) (at start (step97_done)))
    :effect (and (at start (not (step42_pending))) (at end (step42_done)))
  )
  ;; Step 43
  (:durative-action do_step43
    :duration (= ?duration 10)
    :condition (and (at start (step43_pending)) (at start (step25_done)) (at start (step36_done)) (at start (step58_done)) (at start (step70_done)) (at start (step76_done)))
    :effect (and (at start (not (step43_pending))) (at end (step43_done)))
  )
  ;; Step 44
  (:durative-action do_step44
    :duration (= ?duration 5)
    :condition (and (at start (step44_pending)) (at start (step62_done)) (at start (step91_done)))
    :effect (and (at start (not (step44_pending))) (at end (step44_done)))
  )
  ;; Step 45
  (:durative-action do_step45
    :duration (= ?duration 60)
    :condition (and (at start (step45_pending)) (at start (step25_done)) (at start (step52_done)))
    :effect (and (at start (not (step45_pending))) (at end (step45_done)))
  )
  ;; Step 46
  (:durative-action do_step46
    :duration (= ?duration 480)
    :condition (at start (step46_pending))
    :effect (and (at start (not (step46_pending))) (at end (step46_done)))
  )
  ;; Step 47
  (:durative-action do_step47
    :duration (= ?duration 720)
    :condition (and (at start (step47_pending)) (at start (step12_done)) (at start (step78_done)))
    :effect (and (at start (not (step47_pending))) (at end (step47_done)))
  )
  ;; Step 48
  (:durative-action do_step48
    :duration (= ?duration 120)
    :condition (and (at start (step48_pending)) (at start (step78_done)))
    :effect (and (at start (not (step48_pending))) (at end (step48_done)))
  )
  ;; Step 49
  (:durative-action do_step49
    :duration (= ?duration 60)
    :condition (and (at start (step49_pending)) (at start (step31_done)) (at start (step67_done)))
    :effect (and (at start (not (step49_pending))) (at end (step49_done)))
  )
  ;; Step 50
  (:durative-action do_step50
    :duration (= ?duration 120)
    :condition (and (at start (step50_pending)) (at start (step38_done)) (at start (step47_done)) (at start (step84_done)) (at start (step93_done)))
    :effect (and (at start (not (step50_pending))) (at end (step50_done)))
  )
  ;; Step 51
  (:durative-action do_step51
    :duration (= ?duration 240)
    :condition (and (at start (step51_pending)) (at start (step15_done)))
    :effect (and (at start (not (step51_pending))) (at end (step51_done)))
  )
  ;; Step 52
  (:durative-action do_step52
    :duration (= ?duration 30)
    :condition (at start (step52_pending))
    :effect (and (at start (not (step52_pending))) (at end (step52_done)))
  )
  ;; Step 53
  (:durative-action do_step53
    :duration (= ?duration 300)
    :condition (and (at start (step53_pending)) (at start (step21_done)) (at start (step82_done)))
    :effect (and (at start (not (step53_pending))) (at end (step53_done)))
  )
  ;; Step 54
  (:durative-action do_step54
    :duration (= ?duration 5)
    :condition (and (at start (step54_pending)) (at start (step74_done)))
    :effect (and (at start (not (step54_pending))) (at end (step54_done)))
  )
  ;; Step 55
  (:durative-action do_step55
    :duration (= ?duration 15)
    :condition (and (at start (step55_pending)) (at start (step30_done)) (at start (step31_done)))
    :effect (and (at start (not (step55_pending))) (at end (step55_done)))
  )
  ;; Step 56
  (:durative-action do_step56
    :duration (= ?duration 10)
    :condition (and (at start (step56_pending)) (at start (step13_done)) (at start (step24_done)) (at start (step42_done)) (at start (step52_done)) (at start (step63_done)) (at start (step85_done)) (at start (step98_done)))
    :effect (and (at start (not (step56_pending))) (at end (step56_done)))
  )
  ;; Step 57
  (:durative-action do_step57
    :duration (= ?duration 30)
    :condition (and (at start (step57_pending)) (at start (step15_done)))
    :effect (and (at start (not (step57_pending))) (at end (step57_done)))
  )
  ;; Step 58
  (:durative-action do_step58
    :duration (= ?duration 600)
    :condition (and (at start (step58_pending)) (at start (step6_done)) (at start (step20_done)) (at start (step24_done)) (at start (step62_done)) (at start (step73_done)) (at start (step78_done)))
    :effect (and (at start (not (step58_pending))) (at end (step58_done)))
  )
  ;; Step 59
  (:durative-action do_step59
    :duration (= ?duration 5)
    :condition (and (at start (step59_pending)) (at start (step17_done)) (at start (step57_done)) (at start (step69_done)))
    :effect (and (at start (not (step59_pending))) (at end (step59_done)))
  )
  ;; Step 60
  (:durative-action do_step60
    :duration (= ?duration 120)
    :condition (and (at start (step60_pending)) (at start (step13_done)))
    :effect (and (at start (not (step60_pending))) (at end (step60_done)))
  )
  ;; Step 61
  (:durative-action do_step61
    :duration (= ?duration 360)
    :condition (at start (step61_pending))
    :effect (and (at start (not (step61_pending))) (at end (step61_done)))
  )
  ;; Step 62
  (:durative-action do_step62
    :duration (= ?duration 180)
    :condition (and (at start (step62_pending)) (at start (step10_done)) (at start (step19_done)) (at start (step32_done)) (at start (step77_done)) (at start (step78_done)) (at start (step92_done)))
    :effect (and (at start (not (step62_pending))) (at end (step62_done)))
  )
  ;; Step 63
  (:durative-action do_step63
    :duration (= ?duration 300)
    :condition (at start (step63_pending))
    :effect (and (at start (not (step63_pending))) (at end (step63_done)))
  )
  ;; Step 64
  (:durative-action do_step64
    :duration (= ?duration 120)
    :condition (and (at start (step64_pending)) (at start (step80_done)) (at start (step83_done)))
    :effect (and (at start (not (step64_pending))) (at end (step64_done)))
  )
  ;; Step 65
  (:durative-action do_step65
    :duration (= ?duration 60)
    :condition (and (at start (step65_pending)) (at start (step19_done)) (at start (step37_done)) (at start (step31_done)) (at start (step52_done)))
    :effect (and (at start (not (step65_pending))) (at end (step65_done)))
  )
  ;; Step 66
  (:durative-action do_step66
    :duration (= ?duration 10)
    :condition (and (at start (step66_pending)) (at start (step12_done)) (at start (step63_done)))
    :effect (and (at start (not (step66_pending))) (at end (step66_done)))
  )
  ;; Step 67
  (:durative-action do_step67
    :duration (= ?duration 180)
    :condition (at start (step67_pending))
    :effect (and (at start (not (step67_pending))) (at end (step67_done)))
  )
  ;; Step 68
  (:durative-action do_step68
    :duration (= ?duration 60)
    :condition (and (at start (step68_pending)) (at start (step10_done)) (at start (step14_done)) (at start (step22_done)))
    :effect (and (at start (not (step68_pending))) (at end (step68_done)))
  )
  ;; Step 69
  (:durative-action do_step69
    :duration (= ?duration 60)
    :condition (and (at start (step69_pending)) (at start (step7_done)))
    :effect (and (at start (not (step69_pending))) (at end (step69_done)))
  )
  ;; Step 70
  (:durative-action do_step70
    :duration (= ?duration 120)
    :condition (and (at start (step70_pending)) (at start (step9_done)))
    :effect (and (at start (not (step70_pending))) (at end (step70_done)))
  )
  ;; Step 71
  (:durative-action do_step71
    :duration (= ?duration 30)
    :condition (and (at start (step71_pending)) (at start (step26_done)) (at start (step29_done)) (at start (step73_done)) (at start (step83_done)) (at start (step89_done)) (at start (step42_done)))
    :effect (and (at start (not (step71_pending))) (at end (step71_done)))
  )
  ;; Step 72
  (:durative-action do_step72
    :duration (= ?duration 10)
    :condition (and (at start (step72_pending)) (at start (step8_done)) (at start (step27_done)) (at start (step29_done)) (at start (step78_done)))
    :effect (and (at start (not (step72_pending))) (at end (step72_done)))
  )
  ;; Step 73
  (:durative-action do_step73
    :duration (= ?duration 120)
    :condition (and (at start (step73_pending)) (at start (step29_done)))
    :effect (and (at start (not (step73_pending))) (at end (step73_done)))
  )
  ;; Step 74
  (:durative-action do_step74
    :duration (= ?duration 30)
    :condition (and (at start (step74_pending)) (at start (step26_done)) (at start (step51_done)))
    :effect (and (at start (not (step74_pending))) (at end (step74_done)))
  )
  ;; Step 75
  (:durative-action do_step75
    :duration (= ?duration 15)
    :condition (and (at start (step75_pending)) (at start (step63_done)) (at start (step85_done)))
    :effect (and (at start (not (step75_pending))) (at end (step75_done)))
  )
  ;; Step 76
  (:durative-action do_step76
    :duration (= ?duration 10)
    :condition (and (at start (step76_pending)) (at start (step22_done)) (at start (step26_done)) (at start (step96_done)))
    :effect (and (at start (not (step76_pending))) (at end (step76_done)))
  )
  ;; Step 77
  (:durative-action do_step77
    :duration (= ?duration 30)
    :condition (and (at start (step77_pending)) (at start (step11_done)))
    :effect (and (at start (not (step77_pending))) (at end (step77_done)))
  )
  ;; Step 78
  (:durative-action do_step78
    :duration (= ?duration 1200)
    :condition (at start (step78_pending))
    :effect (and (at start (not (step78_pending))) (at end (step78_done)))
  )
  ;; Step 79
  (:durative-action do_step79
    :duration (= ?duration 120)
    :condition (and (at start (step79_pending)) (at start (step9_done)) (at start (step10_done)) (at start (step12_done)) (at start (step30_done)) (at start (step31_done)) (at start (step35_done)) (at start (step75_done)) (at start (step77_done)) (at start (step78_done)) (at start (step88_done)))
    :effect (and (at start (not (step79_pending))) (at end (step79_done)))
  )
  ;; Step 80
  (:durative-action do_step80
    :duration (= ?duration 60)
    :condition (and (at start (step80_pending)) (at start (step33_done)) (at start (step61_done)) (at start (step74_done)))
    :effect (and (at start (not (step80_pending))) (at end (step80_done)))
  )
  ;; Step 81
  (:durative-action do_step81
    :duration (= ?duration 60)
    :condition (and (at start (step81_pending)) (at start (step29_done)) (at start (step37_done)) (at start (step61_done)) (at start (step70_done)) (at start (step95_done)) (at start (step97_done)))
    :effect (and (at start (not (step81_pending))) (at end (step81_done)))
  )
  ;; Step 82
  (:durative-action do_step82
    :duration (= ?duration 30)
    :condition (and (at start (step82_pending)) (at start (step2_done)) (at start (step15_done)) (at start (step17_done)) (at start (step73_done)) (at start (step98_done)))
    :effect (and (at start (not (step82_pending))) (at end (step82_done)))
  )
  ;; Step 83
  (:durative-action do_step83
    :duration (= ?duration 60)
    :condition (at start (step83_pending))
    :effect (and (at start (not (step83_pending))) (at end (step83_done)))
  )
  ;; Step 84
  (:durative-action do_step84
    :duration (= ?duration 180)
    :condition (and (at start (step84_pending)) (at start (step9_done)) (at start (step12_done)) (at start (step63_done)) (at start (step47_done)))
    :effect (and (at start (not (step84_pending))) (at end (step84_done)))
  )
  ;; Step 85
  (:durative-action do_step85
    :duration (= ?duration 15)
    :condition (and (at start (step85_pending)) (at start (step84_done)) (at start (step92_done)))
    :effect (and (at start (not (step85_pending))) (at end (step85_done)))
  )
  ;; Step 86
  (:durative-action do_step86
    :duration (= ?duration 20)
    :condition (and (at start (step86_pending)) (at start (step5_done)) (at start (step15_done)) (at start (step18_done)) (at start (step30_done)) (at start (step45_done)) (at start (step65_done)))
    :effect (and (at start (not (step86_pending))) (at end (step86_done)))
  )
  ;; Step 87
  (:durative-action do_step87
    :duration (= ?duration 300)
    :condition (and (at start (step87_pending)) (at start (step73_done)) (at start (step96_done)))
    :effect (and (at start (not (step87_pending))) (at end (step87_done)))
  )
  ;; Step 88
  (:durative-action do_step88
    :duration (= ?duration 10)
    :condition (and (at start (step88_pending)) (at start (step72_done)) (at start (step95_done)))
    :effect (and (at start (not (step88_pending))) (at end (step88_done)))
  )
  ;; Step 89
  (:durative-action do_step89
    :duration (= ?duration 10)
    :condition (and (at start (step89_pending)) (at start (step47_done)) (at start (step51_done)))
    :effect (and (at start (not (step89_pending))) (at end (step89_done)))
  )
  ;; Step 90
  (:durative-action do_step90
    :duration (= ?duration 300)
    :condition (and (at start (step90_pending)) (at start (step69_done)) (at start (step73_done)) (at start (step77_done)))
    :effect (and (at start (not (step90_pending))) (at end (step90_done)))
  )
  ;; Step 91
  (:durative-action do_step91
    :duration (= ?duration 2)
    :condition (and (at start (step91_pending)) (at start (step5_done)) (at start (step14_done)) (at start (step19_done)) (at start (step70_done)) (at start (step84_done)) (at start (step89_done)) (at start (step94_done)))
    :effect (and (at start (not (step91_pending))) (at end (step91_done)))
  )
  ;; Step 92
  (:durative-action do_step92
    :duration (= ?duration 240)
    :condition (at start (step92_pending))
    :effect (and (at start (not (step92_pending))) (at end (step92_done)))
  )
  ;; Step 93
  (:durative-action do_step93
    :duration (= ?duration 60)
    :condition (and (at start (step93_pending)) (at start (step51_done)))
    :effect (and (at start (not (step93_pending))) (at end (step93_done)))
  )
  ;; Step 94
  (:durative-action do_step94
    :duration (= ?duration 30)
    :condition (and (at start (step94_pending)) (at start (step13_done)) (at start (step27_done)) (at start (step53_done)) (at start (step85_done)) (at start (step90_done)) (at start (step74_done)))
    :effect (and (at start (not (step94_pending))) (at end (step94_done)))
  )
  ;; Step 95
  (:durative-action do_step95
    :duration (= ?duration 120)
    :condition (and (at start (step95_pending)) (at start (step15_done)) (at start (step25_done)) (at start (step38_done)) (at start (step61_done)) (at start (step90_done)))
    :effect (and (at start (not (step95_pending))) (at end (step95_done)))
  )
  ;; Step 96
  (:durative-action do_step96
    :duration (= ?duration 20)
    :condition (and (at start (step96_pending)) (at start (step12_done)) (at start (step40_done)))
    :effect (and (at start (not (step96_pending))) (at end (step96_done)))
  )
  ;; Step 97
  (:durative-action do_step97
    :duration (= ?duration 30)
    :condition (and (at start (step97_pending)) (at start (step75_done)) (at start (step89_done)))
    :effect (and (at start (not (step97_pending))) (at end (step97_done)))
  )
  ;; Step 98
  (:durative-action do_step98
    :duration (= ?duration 5)
    :condition (and (at start (step98_pending)) (at start (step9_done)) (at start (step66_done)))
    :effect (and (at start (not (step98_pending))) (at end (step98_done)))
  )
  ;; Step 99
  (:durative-action do_step99
    :duration (= ?duration 15)
    :condition (and (at start (step99_pending)) (at start (step53_done)) (at start (step79_done)) (at start (step89_done)))
    :effect (and (at start (not (step99_pending))) (at end (step99_done)))
  )
  ;; Step 100
  (:durative-action do_step100
    :duration (= ?duration 60)
    :condition (and (at start (step100_pending)) (at start (step12_done)) (at start (step82_done)) (at start (step96_done)))
    :effect (and (at start (not (step100_pending))) (at end (step100_done)))
  )
)
