(define (domain powdered_peanut_butter)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
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
    (step56_done) (step57_done) (step58_done) (step59_done) (step60_done)
    (step61_done) (step62_done) (step63_done) (step64_done) (step65_done)
    (step66_done) (step67_done) (step68_done) (step69_done) (step70_done)
    (step71_done) (step72_done) (step73_done) (step74_done) (step75_done)
    (step76_done) (step77_done) (step78_done) (step79_done) (step80_done)
    (step81_done) (step82_done) (step83_done) (step84_done) (step85_done)
    (step86_done) (step87_done) (step88_done) (step89_done) (step90_done)
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
    (step61_pending) (step62_pending) (step63_pending) (step64_pending) (step65_pending)
    (step66_pending) (step67_pending) (step68_pending) (step69_pending) (step70_pending)
    (step71_pending) (step72_pending) (step73_pending) (step74_pending) (step75_pending)
    (step76_pending) (step77_pending) (step78_pending) (step79_pending) (step80_pending)
    (step81_pending) (step82_pending) (step83_pending) (step84_pending) (step85_pending)
    (step86_pending) (step87_pending) (step88_pending) (step89_pending) (step90_pending))
  (:durative-action do_step1 :duration 30
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step1_done))))
  (:durative-action do_step2 :duration 120
    :condition (at start (and (step2_pending) (step62_done) (step90_done)))
    :effect (and (at start (not (step2_pending))) (at end (step2_done))))
  (:durative-action do_step3 :duration 10
    :condition (at start (and (step3_pending) (step17_done) (step26_done) (step37_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done))))
  (:durative-action do_step4 :duration 60
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done))))
  (:durative-action do_step5 :duration 5
    :condition (at start (and (step5_pending) (step38_done) (step39_done) (step42_done) (step50_done) (step53_done) (step55_done) (step66_done) (step70_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done))))
  (:durative-action do_step6 :duration 5
    :condition (at start (step6_pending))
    :effect (and (at start (not (step6_pending))) (at end (step6_done))))
  (:durative-action do_step7 :duration 30
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step7_done))))
  (:durative-action do_step8 :duration 60
    :condition (at start (and (step8_pending) (step28_done)))
    :effect (and (at start (not (step8_pending))) (at end (step8_done))))
  (:durative-action do_step9 :duration 10
    :condition (at start (and (step9_pending) (step20_done)))
    :effect (and (at start (not (step9_pending))) (at end (step9_done))))
  (:durative-action do_step10 :duration 60
    :condition (at start (and (step10_pending) (step2_done) (step36_done)))
    :effect (and (at start (not (step10_pending))) (at end (step10_done))))
  (:durative-action do_step11 :duration 120
    :condition (at start (and (step11_pending) (step20_done) (step28_done) (step73_done) (step83_done)))
    :effect (and (at start (not (step11_pending))) (at end (step11_done))))
  (:durative-action do_step12 :duration 20
    :condition (at start (and (step12_pending) (step9_done) (step13_done) (step21_done) (step83_done)))
    :effect (and (at start (not (step12_pending))) (at end (step12_done))))
  (:durative-action do_step13 :duration 20
    :condition (at start (and (step13_pending) (step35_done) (step55_done) (step64_done)))
    :effect (and (at start (not (step13_pending))) (at end (step13_done))))
  (:durative-action do_step14 :duration 10
    :condition (at start (and (step14_pending) (step2_done) (step32_done) (step55_done) (step58_done) (step83_done)))
    :effect (and (at start (not (step14_pending))) (at end (step14_done))))
  (:durative-action do_step15 :duration 5
    :condition (at start (and (step15_pending) (step17_done) (step22_done) (step50_done) (step75_done) (step83_done) (step86_done)))
    :effect (and (at start (not (step15_pending))) (at end (step15_done))))
  (:durative-action do_step16 :duration 5
    :condition (at start (and (step16_pending) (step8_done)))
    :effect (and (at start (not (step16_pending))) (at end (step16_done))))
  (:durative-action do_step17 :duration 60
    :condition (at start (step17_pending))
    :effect (and (at start (not (step17_pending))) (at end (step17_done))))
  (:durative-action do_step18 :duration 5
    :condition (at start (and (step18_pending) (step8_done) (step17_done) (step47_done) (step67_done)))
    :effect (and (at start (not (step18_pending))) (at end (step18_done))))
  (:durative-action do_step19 :duration 10
    :condition (at start (and (step19_pending) (step15_done) (step31_done) (step50_done)))
    :effect (and (at start (not (step19_pending))) (at end (step19_done))))
  (:durative-action do_step20 :duration 180
    :condition (at start (step20_pending))
    :effect (and (at start (not (step20_pending))) (at end (step20_done))))
  (:durative-action do_step21 :duration 10
    :condition (at start (and (step21_pending) (step4_done) (step90_done)))
    :effect (and (at start (not (step21_pending))) (at end (step21_done))))
  (:durative-action do_step22 :duration 15
    :condition (at start (and (step22_pending) (step6_done) (step23_done) (step55_done)))
    :effect (and (at start (not (step22_pending))) (at end (step22_done))))
  (:durative-action do_step23 :duration 5
    :condition (at start (and (step23_pending) (step48_done)))
    :effect (and (at start (not (step23_pending))) (at end (step23_done))))
  (:durative-action do_step24 :duration 30
    :condition (at start (and (step24_pending) (step26_done) (step42_done) (step83_done)))
    :effect (and (at start (not (step24_pending))) (at end (step24_done))))
  (:durative-action do_step25 :duration 60
    :condition (at start (and (step25_pending) (step20_done) (step21_done) (step73_done)))
    :effect (and (at start (not (step25_pending))) (at end (step25_done))))
  (:durative-action do_step26 :duration 20
    :condition (at start (and (step26_pending) (step8_done) (step28_done)))
    :effect (and (at start (not (step26_pending))) (at end (step26_done))))
  (:durative-action do_step27 :duration 900
    :condition (at start (step27_pending))
    :effect (and (at start (not (step27_pending))) (at end (step27_done))))
  (:durative-action do_step28 :duration 10
    :condition (at start (and (step28_pending) (step20_done)))
    :effect (and (at start (not (step28_pending))) (at end (step28_done))))
  (:durative-action do_step29 :duration 60
    :condition (at start (and (step29_pending) (step47_done) (step75_done)))
    :effect (and (at start (not (step29_pending))) (at end (step29_done))))
  (:durative-action do_step30 :duration 45
    :condition (at start (and (step30_pending) (step2_done)))
    :effect (and (at start (not (step30_pending))) (at end (step30_done))))
  (:durative-action do_step31 :duration 5
    :condition (at start (and (step31_pending) (step28_done)))
    :effect (and (at start (not (step31_pending))) (at end (step31_done))))
  (:durative-action do_step32 :duration 20
    :condition (at start (and (step32_pending) (step4_done) (step56_done) (step90_done)))
    :effect (and (at start (not (step32_pending))) (at end (step32_done))))
  (:durative-action do_step33 :duration 20
    :condition (at start (and (step33_pending) (step24_done)))
    :effect (and (at start (not (step33_pending))) (at end (step33_done))))
  (:durative-action do_step34 :duration 30
    :condition (at start (and (step34_pending) (step14_done) (step23_done) (step53_done) (step72_done) (step74_done)))
    :effect (and (at start (not (step34_pending))) (at end (step34_done))))
  (:durative-action do_step35 :duration 45
    :condition (at start (and (step35_pending) (step7_done) (step58_done) (step75_done)))
    :effect (and (at start (not (step35_pending))) (at end (step35_done))))
  (:durative-action do_step36 :duration 60
    :condition (at start (and (step36_pending) (step52_done)))
    :effect (and (at start (not (step36_pending))) (at end (step36_done))))
  (:durative-action do_step37 :duration 10
    :condition (at start (and (step37_pending) (step23_done) (step67_done)))
    :effect (and (at start (not (step37_pending))) (at end (step37_done))))
  (:durative-action do_step38 :duration 5
    :condition (at start (and (step38_pending) (step20_done) (step56_done)))
    :effect (and (at start (not (step38_pending))) (at end (step38_done))))
  (:durative-action do_step39 :duration 5
    :condition (at start (and (step39_pending) (step28_done)))
    :effect (and (at start (not (step39_pending))) (at end (step39_done))))
  (:durative-action do_step40 :duration 10
    :condition (at start (and (step40_pending) (step9_done) (step44_done) (step65_done)))
    :effect (and (at start (not (step40_pending))) (at end (step40_done))))
  (:durative-action do_step41 :duration 15
    :condition (at start (step41_pending))
    :effect (and (at start (not (step41_pending))) (at end (step41_done))))
  (:durative-action do_step42 :duration 60
    :condition (at start (and (step42_pending) (step58_done)))
    :effect (and (at start (not (step42_pending))) (at end (step42_done))))
  (:durative-action do_step43 :duration 10
    :condition (at start (and (step43_pending) (step1_done) (step22_done) (step23_done) (step37_done) (step49_done) (step54_done) (step78_done) (step80_done)))
    :effect (and (at start (not (step43_pending))) (at end (step43_done))))
  (:durative-action do_step44 :duration 5
    :condition (at start (and (step44_pending) (step14_done)))
    :effect (and (at start (not (step44_pending))) (at end (step44_done))))
  (:durative-action do_step45 :duration 40
    :condition (at start (and (step45_pending) (step11_done) (step13_done) (step52_done)))
    :effect (and (at start (not (step45_pending))) (at end (step45_done))))
  (:durative-action do_step46 :duration 5
    :condition (at start (and (step46_pending) (step42_done) (step44_done) (step52_done)))
    :effect (and (at start (not (step46_pending))) (at end (step46_done))))
  (:durative-action do_step47 :duration 10
    :condition (at start (and (step47_pending) (step73_done) (step83_done)))
    :effect (and (at start (not (step47_pending))) (at end (step47_done))))
  (:durative-action do_step48 :duration 30
    :condition (at start (and (step48_pending) (step4_done)))
    :effect (and (at start (not (step48_pending))) (at end (step48_done))))
  (:durative-action do_step49 :duration 5
    :condition (at start (and (step49_pending) (step36_done) (step73_done) (step90_done)))
    :effect (and (at start (not (step49_pending))) (at end (step49_done))))
  (:durative-action do_step50 :duration 30
    :condition (at start (and (step50_pending) (step13_done) (step22_done) (step36_done) (step61_done)))
    :effect (and (at start (not (step50_pending))) (at end (step50_done))))
  (:durative-action do_step51 :duration 45
    :condition (at start (and (step51_pending) (step31_done) (step34_done)))
    :effect (and (at start (not (step51_pending))) (at end (step51_done))))
  (:durative-action do_step52 :duration 120
    :condition (at start (step52_pending))
    :effect (and (at start (not (step52_pending))) (at end (step52_done))))
  (:durative-action do_step53 :duration 5
    :condition (at start (step53_pending))
    :effect (and (at start (not (step53_pending))) (at end (step53_done))))
  (:durative-action do_step54 :duration 60
    :condition (at start (and (step54_pending) (step2_done) (step20_done) (step37_done) (step49_done) (step79_done) (step90_done)))
    :effect (and (at start (not (step54_pending))) (at end (step54_done))))
  (:durative-action do_step55 :duration 30
    :condition (at start (and (step55_pending) (step8_done) (step31_done)))
    :effect (and (at start (not (step55_pending))) (at end (step55_done))))
  (:durative-action do_step56 :duration 60
    :condition (at start (step56_pending))
    :effect (and (at start (not (step56_pending))) (at end (step56_done))))
  (:durative-action do_step57 :duration 10
    :condition (at start (and (step57_pending) (step7_done) (step13_done)))
    :effect (and (at start (not (step57_pending))) (at end (step57_done))))
  (:durative-action do_step58 :duration 5
    :condition (at start (and (step58_pending) (step28_done)))
    :effect (and (at start (not (step58_pending))) (at end (step58_done))))
  (:durative-action do_step59 :duration 20
    :condition (at start (and (step59_pending) (step14_done)))
    :effect (and (at start (not (step59_pending))) (at end (step59_done))))
  (:durative-action do_step60 :duration 10
    :condition (at start (and (step60_pending) (step33_done) (step63_done) (step72_done)))
    :effect (and (at start (not (step60_pending))) (at end (step60_done))))
  (:durative-action do_step61 :duration 10
    :condition (at start (step61_pending))
    :effect (and (at start (not (step61_pending))) (at end (step61_done))))
  (:durative-action do_step62 :duration 5
    :condition (at start (and (step62_pending) (step41_done) (step66_done)))
    :effect (and (at start (not (step62_pending))) (at end (step62_done))))
  (:durative-action do_step63 :duration 10
    :condition (at start (and (step63_pending) (step22_done)))
    :effect (and (at start (not (step63_pending))) (at end (step63_done))))
  (:durative-action do_step64 :duration 15
    :condition (at start (and (step64_pending) (step56_done)))
    :effect (and (at start (not (step64_pending))) (at end (step64_done))))
  (:durative-action do_step65 :duration 120
    :condition (at start (and (step65_pending) (step46_done) (step64_done) (step81_done) (step83_done)))
    :effect (and (at start (not (step65_pending))) (at end (step65_done))))
  (:durative-action do_step66 :duration 10
    :condition (at start (and (step66_pending) (step1_done) (step21_done)))
    :effect (and (at start (not (step66_pending))) (at end (step66_done))))
  (:durative-action do_step67 :duration 60
    :condition (at start (and (step67_pending) (step22_done) (step52_done)))
    :effect (and (at start (not (step67_pending))) (at end (step67_done))))
  (:durative-action do_step68 :duration 30
    :condition (at start (and (step68_pending) (step24_done) (step57_done) (step59_done) (step75_done) (step79_done)))
    :effect (and (at start (not (step68_pending))) (at end (step68_done))))
  (:durative-action do_step69 :duration 45
    :condition (at start (and (step69_pending) (step37_done) (step59_done)))
    :effect (and (at start (not (step69_pending))) (at end (step69_done))))
  (:durative-action do_step70 :duration 15
    :condition (at start (and (step70_pending) (step7_done) (step20_done) (step55_done) (step59_done) (step61_done) (step65_done)))
    :effect (and (at start (not (step70_pending))) (at end (step70_done))))
  (:durative-action do_step71 :duration 60
    :condition (at start (and (step71_pending) (step13_done) (step19_done) (step63_done) (step69_done) (step81_done) (step82_done)))
    :effect (and (at start (not (step71_pending))) (at end (step71_done))))
  (:durative-action do_step72 :duration 30
    :condition (at start (and (step72_pending) (step17_done)))
    :effect (and (at start (not (step72_pending))) (at end (step72_done))))
  (:durative-action do_step73 :duration 20
    :condition (at start (and (step73_pending) (step4_done) (step48_done)))
    :effect (and (at start (not (step73_pending))) (at end (step73_done))))
  (:durative-action do_step74 :duration 20
    :condition (at start (and (step74_pending) (step52_done)))
    :effect (and (at start (not (step74_pending))) (at end (step74_done))))
  (:durative-action do_step75 :duration 10
    :condition (at start (and (step75_pending) (step1_done) (step28_done)))
    :effect (and (at start (not (step75_pending))) (at end (step75_done))))
  (:durative-action do_step76 :duration 180
    :condition (at start (and (step76_pending) (step31_done) (step34_done) (step39_done)))
    :effect (and (at start (not (step76_pending))) (at end (step76_done))))
  (:durative-action do_step77 :duration 300
    :condition (at start (and (step77_pending) (step7_done) (step52_done) (step89_done)))
    :effect (and (at start (not (step77_pending))) (at end (step77_done))))
  (:durative-action do_step78 :duration 20
    :condition (at start (and (step78_pending) (step7_done) (step29_done) (step39_done) (step86_done)))
    :effect (and (at start (not (step78_pending))) (at end (step78_done))))
  (:durative-action do_step79 :duration 10
    :condition (at start (and (step79_pending) (step6_done) (step21_done) (step35_done) (step72_done)))
    :effect (and (at start (not (step79_pending))) (at end (step79_done))))
  (:durative-action do_step80 :duration 15
    :condition (at start (and (step80_pending) (step4_done) (step13_done) (step62_done) (step64_done)))
    :effect (and (at start (not (step80_pending))) (at end (step80_done))))
  (:durative-action do_step81 :duration 10
    :condition (at start (and (step81_pending) (step6_done) (step79_done)))
    :effect (and (at start (not (step81_pending))) (at end (step81_done))))
  (:durative-action do_step82 :duration 10
    :condition (at start (and (step82_pending) (step4_done) (step19_done) (step35_done) (step60_done) (step67_done)))
    :effect (and (at start (not (step82_pending))) (at end (step82_done))))
  (:durative-action do_step83 :duration 120
    :condition (at start (and (step83_pending) (step30_done) (step72_done)))
    :effect (and (at start (not (step83_pending))) (at end (step83_done))))
  (:durative-action do_step84 :duration 60
    :condition (at start (and (step84_pending) (step28_done) (step33_done) (step39_done) (step88_done)))
    :effect (and (at start (not (step84_pending))) (at end (step84_done))))
  (:durative-action do_step85 :duration 30
    :condition (at start (and (step85_pending) (step7_done) (step12_done)))
    :effect (and (at start (not (step85_pending))) (at end (step85_done))))
  (:durative-action do_step86 :duration 30
    :condition (at start (and (step86_pending) (step31_done)))
    :effect (and (at start (not (step86_pending))) (at end (step86_done))))
  (:durative-action do_step87 :duration 30
    :condition (at start (and (step87_pending) (step8_done) (step41_done) (step75_done)))
    :effect (and (at start (not (step87_pending))) (at end (step87_done))))
  (:durative-action do_step88 :duration 10
    :condition (at start (and (step88_pending) (step8_done) (step20_done) (step24_done) (step39_done) (step51_done) (step80_done)))
    :effect (and (at start (not (step88_pending))) (at end (step88_done))))
  (:durative-action do_step89 :duration 120
    :condition (at start (and (step89_pending) (step27_done) (step46_done) (step67_done) (step76_done)))
    :effect (and (at start (not (step89_pending))) (at end (step89_done))))
  (:durative-action do_step90 :duration 10
    :condition (at start (step90_pending))
    :effect (and (at start (not (step90_pending))) (at end (step90_done))))
)