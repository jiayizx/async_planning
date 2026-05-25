(define (domain toad_pet)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending - step)
    (step_done - step)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done) (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done) (step16_done) (step17_done) (step18_done) (step19_done) (step20_done)
    (step21_done) (step22_done) (step23_done) (step24_done) (step25_done) (step26_done) (step27_done) (step28_done) (step29_done) (step30_done)
    (step31_done) (step32_done) (step33_done) (step34_done) (step35_done) (step36_done) (step37_done) (step38_done) (step39_done) (step40_done)
    (step41_done) (step42_done) (step43_done) (step44_done) (step45_done) (step46_done) (step47_done) (step48_done) (step49_done) (step50_done)
    (step51_done) (step52_done) (step53_done) (step54_done) (step55_done) (step56_done) (step57_done) (step58_done) (step59_done) (step60_done)
    (step61_done) (step62_done) (step63_done) (step64_done) (step65_done) (step66_done) (step67_done) (step68_done) (step69_done) (step70_done)
    (step71_done) (step72_done) (step73_done) (step74_done) (step75_done) (step76_done) (step77_done) (step78_done) (step79_done) (step80_done)
    (toad_kept))
  (:durative-action step1 (?s - step) :duration 2700
    :condition (and (at start (step_pending ?s)) (at start (step25_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_done))))
  (:durative-action step2 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step17_done)) (at start (step25_done)) (at start (step41_done)) (at start (step43_done)) (at start (step51_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_done))))
  (:durative-action step3 (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_done))))
  (:durative-action step4 (?s - step) :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step80_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_done))))
  (:durative-action step5 (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step35_done)) (at start (step62_done)) (at start (step80_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_done))))
  (:durative-action step6 (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_done))))
  (:durative-action step7 (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_done))))
  (:durative-action step8 (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step13_done)) (at start (step45_done)) (at start (step55_done)) (at start (step69_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_done))))
  (:durative-action step9 (?s - step) :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_done))))
  (:durative-action step10 (?s - step) :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_done))))
  (:durative-action step11 (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step35_done)) (at start (step52_done)) (at start (step64_done)) (at start (step71_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_done))))
  (:durative-action step12 (?s - step) :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step30_done)) (at start (step31_done)) (at start (step68_done)) (at start (step73_done)) (at start (step77_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_done))))
  (:durative-action step13 (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step45_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_done))))
  (:durative-action step14 (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_done))))
  (:durative-action step15 (?s - step) :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (step9_done)) (at start (step58_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_done))))
  (:durative-action step16 (?s - step) :duration 10800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_done))))
  (:durative-action step17 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step32_done)) (at start (step62_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_done))))
  (:durative-action step18 (?s - step) :duration 2400
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step12_done)) (at start (step22_done)) (at start (step26_done)) (at start (step27_done)) (at start (step33_done)) (at start (step69_done)) (at start (step72_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_done))))
  (:durative-action step19 (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step25_done)) (at start (step48_done)) (at start (step49_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_done))))
  (:durative-action step20 (?s - step) :duration 259200
    :condition (and (at start (step_pending ?s)) (at start (step16_done)) (at start (step31_done)) (at start (step70_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_done)) (at end (toad_kept))))
  (:durative-action step21 (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step23_done)) (at start (step24_done)) (at start (step33_done)) (at start (step52_done)) (at start (step53_done)) (at start (step64_done)) (at start (step71_done)) (at start (step79_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_done))))
  (:durative-action step22 (?s - step) :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (step36_done)) (at start (step42_done)) (at start (step45_done)) (at start (step59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_done))))
  (:durative-action step23 (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step45_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_done))))
  (:durative-action step24 (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step26_done)) (at start (step44_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_done))))
  (:durative-action step25 (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_done))))
  (:durative-action step26 (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_done))))
  (:durative-action step27 (?s - step) :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_done))))
  (:durative-action step28 (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step22_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_done))))
  (:durative-action step29 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step24_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_done))))
  (:durative-action step30 (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_done))))
  (:durative-action step31 (?s - step) :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (step59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step31_done))))
  (:durative-action step32 (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step32_done))))
  (:durative-action step33 (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step33_done))))
  (:durative-action step34 (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step13_done)) (at start (step42_done)) (at start (step49_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step34_done))))
  (:durative-action step35 (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step35_done))))
  (:durative-action step36 (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step44_done)) (at start (step78_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step36_done))))
  (:durative-action step37 (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step6_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step37_done))))
  (:durative-action step38 (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step79_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step38_done))))
  (:durative-action step39 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step39_done))))
  (:durative-action step40 (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step45_done)) (at start (step76_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step40_done))))
  (:durative-action step41 (?s - step) :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step41_done))))
  (:durative-action step42 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step42_done))))
  (:durative-action step43 (?s - step) :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step43_done))))
  (:durative-action step44 (?s - step) :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step44_done))))
  (:durative-action step45 (?s - step) :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step45_done))))
  (:durative-action step46 (?s - step) :duration 2700
    :condition (and (at start (step_pending ?s)) (at start (step57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step46_done))))
  (:durative-action step47 (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step12_done)) (at start (step34_done)) (at start (step44_done)) (at start (step65_done)) (at start (step78_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step47_done))))
  (:durative-action step48 (?s - step) :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step48_done))))
  (:durative-action step49 (?s - step) :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step49_done))))
  (:durative-action step50 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step50_done))))
  (:durative-action step51 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step6_done)) (at start (step12_done)) (at start (step54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step51_done))))
  (:durative-action step52 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step23_done)) (at start (step42_done)) (at start (step79_done)) (at start (step80_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step52_done))))
  (:durative-action step53 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step49_done)) (at start (step62_done)) (at start (step76_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step53_done))))
  (:durative-action step54 (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step22_done)) (at start (step26_done)) (at start (step31_done)) (at start (step32_done)) (at start (step38_done)) (at start (step65_done)) (at start (step76_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step54_done))))
  (:durative-action step55 (?s - step) :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step55_done))))
  (:durative-action step56 (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step56_done))))
  (:durative-action step57 (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step57_done))))
  (:durative-action step58 (?s - step) :duration 120
    :condition (and (at start (step_pending ?s)) (at start (step26_done)) (at start (step43_done)) (at start (step53_done)) (at start (step61_done)) (at start (step72_done)) (at start (step77_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step58_done))))
  (:durative-action step59 (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step3_done)) (at start (step13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step59_done))))
  (:durative-action step60 (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step22_done)) (at start (step45_done)) (at start (step52_done)) (at start (step66_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step60_done))))
  (:durative-action step61 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step61_done))))
  (:durative-action step62 (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step62_done))))
  (:durative-action step63 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step22_done)) (at start (step23_done)) (at start (step46_done)) (at start (step50_done)) (at start (step61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step63_done))))
  (:durative-action step64 (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step26_done)) (at start (step39_done)) (at start (step59_done)) (at start (step69_done)) (at start (step72_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step64_done))))
  (:durative-action step65 (?s - step) :duration 1500
    :condition (and (at start (step_pending ?s)) (at start (step9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step65_done))))
  (:durative-action step66 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step24_done)) (at start (step27_done)) (at start (step29_done)) (at start (step45_done)) (at start (step76_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step66_done))))
  (:durative-action step67 (?s - step) :duration 43200
    :condition (and (at start (step_pending ?s)) (at start (step37_done)) (at start (step55_done)) (at start (step79_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step67_done))))
  (:durative-action step68 (?s - step) :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (step13_done)) (at start (step56_done)) (at start (step69_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step68_done))))
  (:durative-action step69 (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step13_done)) (at start (step41_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step69_done))))
  (:durative-action step70 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step70_done))))
  (:durative-action step71 (?s - step) :duration 120
    :condition (and (at start (step_pending ?s)) (at start (step22_done)) (at start (step41_done)) (at start (step52_done)) (at start (step61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step71_done))))
  (:durative-action step72 (?s - step) :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step72_done))))
  (:durative-action step73 (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step45_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step73_done))))
  (:durative-action step74 (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step14_done)) (at start (step23_done)) (at start (step24_done)) (at start (step29_done)) (at start (step51_done)) (at start (step71_done)) (at start (step80_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step74_done))))
  (:durative-action step75 (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step13_done)) (at start (step25_done)) (at start (step37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step75_done))))
  (:durative-action step76 (?s - step) :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step76_done))))
  (:durative-action step77 (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step31_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step77_done))))
  (:durative-action step78 (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step65_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step78_done))))
  (:durative-action step79 (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step79_done))))
  (:durative-action step80 (?s - step) :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step80_done))))
)
