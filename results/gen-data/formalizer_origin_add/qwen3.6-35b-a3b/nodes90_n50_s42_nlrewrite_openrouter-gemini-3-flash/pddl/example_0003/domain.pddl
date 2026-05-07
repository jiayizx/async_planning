(define (domain pcc_application)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
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
    (step56_done) (step57_done) (step58_done) (step59_done) (step60_done)
    (step61_done) (step62_done) (step63_done) (step64_done) (step65_done)
    (step66_done) (step67_done) (step68_done) (step69_done) (step70_done)
    (step71_done) (step72_done) (step73_done) (step74_done) (step75_done)
    (step76_done) (step77_done) (step78_done) (step79_done) (step80_done)
    (step81_done) (step82_done) (step83_done) (step84_done) (step85_done)
    (step86_done) (step87_done) (step88_done) (step89_done) (step90_done))
  (:durative-action step1
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step13_done)) (at start (step32_done)) (at start (step38_done)) (at start (step90_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_done))))
  (:durative-action step2
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step41_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_done))))
  (:durative-action step3
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step19_done)) (at start (step32_done)) (at start (step83_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_done))))
  (:durative-action step4
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step27_done)) (at start (step32_done)) (at start (step47_done)) (at start (step71_done)) (at start (step72_done)) (at start (step90_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_done))))
  (:durative-action step5
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step28_done)) (at start (step44_done)) (at start (step72_done)) (at start (step77_done)) (at start (step80_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_done))))
  (:durative-action step6
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step3_done)) (at start (step18_done)) (at start (step26_done)) (at start (step70_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_done))))
  (:durative-action step7
    :duration 900
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_done))))
  (:durative-action step8
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step5_done)) (at start (step32_done)) (at start (step53_done)) (at start (step58_done)) (at start (step65_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_done))))
  (:durative-action step9
    :duration 3600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step35_done)) (at start (step89_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_done))))
  (:durative-action step10
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step29_done)) (at start (step41_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_done))))
  (:durative-action step11
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step78_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_done))))
  (:durative-action step12
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step87_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_done))))
  (:durative-action step13
    :duration 1800
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_done))))
  (:durative-action step14
    :duration 3600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step31_done)) (at start (step54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_done))))
  (:durative-action step15
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step20_done)) (at start (step29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_done))))
  (:durative-action step16
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_done))))
  (:durative-action step17
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step38_done)) (at start (step80_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_done))))
  (:durative-action step18
    :duration 1800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step12_done)) (at start (step21_done)) (at start (step33_done)) (at start (step54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_done))))
  (:durative-action step19
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_done))))
  (:durative-action step20
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step43_done)) (at start (step77_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_done))))
  (:durative-action step21
    :duration 1500
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step79_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_done))))
  (:durative-action step22
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_done))))
  (:durative-action step23
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step63_done)) (at start (step77_done)) (at start (step84_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_done))))
  (:durative-action step24
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step62_done)) (at start (step73_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_done))))
  (:durative-action step25
    :duration 7200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step87_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_done))))
  (:durative-action step26
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step16_done)) (at start (step28_done)) (at start (step52_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_done))))
  (:durative-action step27
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_done))))
  (:durative-action step28
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step41_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_done))))
  (:durative-action step29
    :duration 120
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_done))))
  (:durative-action step30
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step31_done)) (at start (step36_done)) (at start (step45_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_done))))
  (:durative-action step31
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step89_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step31_done))))
  (:durative-action step32
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step12_done)) (at start (step25_done)) (at start (step41_done)) (at start (step53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step32_done))))
  (:durative-action step33
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step33_done))))
  (:durative-action step34
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step29_done)) (at start (step59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step34_done))))
  (:durative-action step35
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step35_done))))
  (:durative-action step36
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step36_done))))
  (:durative-action step37
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step37_done))))
  (:durative-action step38
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step62_done)) (at start (step66_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step38_done))))
  (:durative-action step39
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step21_done)) (at start (step51_done)) (at start (step58_done)) (at start (step62_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step39_done))))
  (:durative-action step40
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step40_done))))
  (:durative-action step41
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step41_done))))
  (:durative-action step42
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step20_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step42_done))))
  (:durative-action step43
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step56_done)) (at start (step88_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step43_done))))
  (:durative-action step44
    :duration 1800
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step44_done))))
  (:durative-action step45
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step9_done)) (at start (step25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step45_done))))
  (:durative-action step46
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step29_done)) (at start (step34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step46_done))))
  (:durative-action step47
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step35_done)) (at start (step45_done)) (at start (step57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step47_done))))
  (:durative-action step48
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step16_done)) (at start (step39_done)) (at start (step44_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step48_done))))
  (:durative-action step49
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step34_done)) (at start (step66_done)) (at start (step87_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step49_done))))
  (:durative-action step50
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step68_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step50_done))))
  (:durative-action step51
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step29_done)) (at start (step50_done)) (at start (step73_done)) (at start (step87_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step51_done))))
  (:durative-action step52
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step72_done)) (at start (step80_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step52_done))))
  (:durative-action step53
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step53_done))))
  (:durative-action step54
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step28_done)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step54_done))))
  (:durative-action step55
    :duration 3600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step55_done))))
  (:durative-action step56
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step36_done)) (at start (step46_done)) (at start (step64_done)) (at start (step73_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step56_done))))
  (:durative-action step57
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step25_done)) (at start (step33_done)) (at start (step35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step57_done))))
  (:durative-action step58
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step13_done)) (at start (step16_done)) (at start (step64_done)) (at start (step80_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step58_done))))
  (:durative-action step59
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step41_done)) (at start (step72_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step59_done))))
  (:durative-action step60
    :duration 3600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step3_done)) (at start (step13_done)) (at start (step15_done)) (at start (step17_done)) (at start (step43_done)) (at start (step50_done)) (at start (step59_done)) (at start (step81_done)) (at start (step83_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step60_done))))
  (:durative-action step61
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step5_done)) (at start (step69_done)) (at start (step89_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step61_done))))
  (:durative-action step62
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step29_done)) (at start (step36_done)) (at start (step37_done)) (at start (step54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step62_done))))
  (:durative-action step63
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step29_done)) (at start (step33_done)) (at start (step35_done)) (at start (step41_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step63_done))))
  (:durative-action step64
    :duration 900
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step64_done))))
  (:durative-action step65
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step66_done)) (at start (step68_done)) (at start (step79_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step65_done))))
  (:durative-action step66
    :duration 120
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step66_done))))
  (:durative-action step67
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step14_done)) (at start (step18_done)) (at start (step20_done)) (at start (step21_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step67_done))))
  (:durative-action step68
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step68_done))))
  (:durative-action step69
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step30_done)) (at start (step31_done)) (at start (step34_done)) (at start (step49_done)) (at start (step73_done)) (at start (step77_done)) (at start (step78_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step69_done))))
  (:durative-action step70
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step22_done)) (at start (step33_done)) (at start (step34_done)) (at start (step41_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step70_done))))
  (:durative-action step71
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step35_done)) (at start (step50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step71_done))))
  (:durative-action step72
    :duration 3600
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step72_done))))
  (:durative-action step73
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step73_done))))
  (:durative-action step74
    :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step35_done)) (at start (step44_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step74_done))))
  (:durative-action step75
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step12_done)) (at start (step16_done)) (at start (step21_done)) (at start (step52_done)) (at start (step62_done)) (at start (step87_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step75_done))))
  (:durative-action step76
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step27_done)) (at start (step51_done)) (at start (step55_done)) (at start (step62_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step76_done))))
  (:durative-action step77
    :duration 172800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step77_done))))
  (:durative-action step78
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step78_done))))
  (:durative-action step79
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step33_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step79_done))))
  (:durative-action step80
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step25_done)) (at start (step66_done)) (at start (step79_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step80_done))))
  (:durative-action step81
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step37_done)) (at start (step44_done)) (at start (step65_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step81_done))))
  (:durative-action step82
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step6_done)) (at start (step8_done)) (at start (step56_done)) (at start (step89_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step82_done))))
  (:durative-action step83
    :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step46_done)) (at start (step50_done)) (at start (step51_done)) (at start (step87_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step83_done))))
  (:durative-action step84
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step84_done))))
  (:durative-action step85
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step22_done)) (at start (step31_done)) (at start (step36_done)) (at start (step69_done)) (at start (step75_done)) (at start (step83_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step85_done))))
  (:durative-action step86
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step22_done)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step86_done))))
  (:durative-action step87
    :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step78_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step87_done))))
  (:durative-action step88
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step29_done)) (at start (step37_done)) (at start (step59_done)) (at start (step64_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step88_done))))
  (:durative-action step89
    :duration 1800
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step89_done))))
  (:durative-action step90
    :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step51_done)) (at start (step77_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step90_done)))))
