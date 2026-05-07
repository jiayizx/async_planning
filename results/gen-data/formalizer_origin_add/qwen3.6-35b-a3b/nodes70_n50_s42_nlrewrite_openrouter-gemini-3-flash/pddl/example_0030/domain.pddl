(define (domain quality_of_life)
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
    (step66_done) (step67_done) (step68_done) (step69_done) (step70_done))
  (:durative-action step1
    (:parameters (?s - step))
    :duration 345600
    :condition (and (at start (step_pending ?s)) (at start (step15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_done))))
  (:durative-action step2
    (:parameters (?s - step))
    :duration 604800
    :condition (and (at start (step_pending ?s)) (at start (step64_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_done))))
  (:durative-action step3
    (:parameters (?s - step))
    :duration 259200
    :condition (and (at start (step_pending ?s)) (at start (step44_done)) (at start (step47_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_done))))
  (:durative-action step4
    (:parameters (?s - step))
    :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step20_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_done))))
  (:durative-action step5
    (:parameters (?s - step))
    :duration 432000
    :condition (and (at start (step_pending ?s)) (at start (step14_done)) (at start (step23_done)) (at start (step44_done)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_done))))
  (:durative-action step6
    (:parameters (?s - step))
    :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (step19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_done))))
  (:durative-action step7
    (:parameters (?s - step))
    :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (step35_done)) (at start (step53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_done))))
  (:durative-action step8
    (:parameters (?s - step))
    :duration 2592000
    :condition (and (at start (step_pending ?s)) (at start (step68_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_done))))
  (:durative-action step9
    (:parameters (?s - step))
    :duration 1209600
    :condition (and (at start (step_pending ?s)) (at start (step13_done)) (at start (step27_done)) (at start (step33_done)) (at start (step52_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_done))))
  (:durative-action step10
    (:parameters (?s - step))
    :duration 604800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_done))))
  (:durative-action step11
    (:parameters (?s - step))
    :duration 345600
    :condition (and (at start (step_pending ?s)) (at start (step40_done)) (at start (step46_done)) (at start (step59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_done))))
  (:durative-action step12
    (:parameters (?s - step))
    :duration 604800
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step3_done)) (at start (step5_done)) (at start (step8_done)) (at start (step19_done)) (at start (step21_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_done))))
  (:durative-action step13
    (:parameters (?s - step))
    :duration 5184000
    :condition (and (at start (step_pending ?s)) (at start (step17_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_done))))
  (:durative-action step14
    (:parameters (?s - step))
    :duration 864000
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step17_done)) (at start (step29_done)) (at start (step46_done)) (at start (step65_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_done))))
  (:durative-action step15
    (:parameters (?s - step))
    :duration 1209600
    :condition (and (at start (step_pending ?s)) (at start (step68_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_done))))
  (:durative-action step16
    (:parameters (?s - step))
    :duration 432000
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step28_done)) (at start (step61_done)) (at start (step69_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_done))))
  (:durative-action step17
    (:parameters (?s - step))
    :duration 604800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_done))))
  (:durative-action step18
    (:parameters (?s - step))
    :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (step25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_done))))
  (:durative-action step19
    (:parameters (?s - step))
    :duration 259200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_done))))
  (:durative-action step20
    (:parameters (?s - step))
    :duration 345600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_done))))
  (:durative-action step21
    (:parameters (?s - step))
    :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (step6_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_done))))
  (:durative-action step22
    (:parameters (?s - step))
    :duration 1814400
    :condition (and (at start (step_pending ?s)) (at start (step6_done)) (at start (step14_done)) (at start (step34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_done))))
  (:durative-action step23
    (:parameters (?s - step))
    :duration 604800
    :condition (and (at start (step_pending ?s)) (at start (step13_done)) (at start (step24_done)) (at start (step51_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_done))))
  (:durative-action step24
    (:parameters (?s - step))
    :duration 432000
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_done))))
  (:durative-action step25
    (:parameters (?s - step))
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step67_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_done))))
  (:durative-action step26
    (:parameters (?s - step))
    :duration 345600
    :condition (and (at start (step_pending ?s)) (at start (step35_done)) (at start (step43_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_done))))
  (:durative-action step27
    (:parameters (?s - step))
    :duration 5184000
    :condition (and (at start (step_pending ?s)) (at start (step3_done)) (at start (step47_done)) (at start (step70_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_done))))
  (:durative-action step28
    (:parameters (?s - step))
    :duration 259200
    :condition (and (at start (step_pending ?s)) (at start (step8_done)) (at start (step36_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_done))))
  (:durative-action step29
    (:parameters (?s - step))
    :duration 604800
    :condition (and (at start (step_pending ?s)) (at start (step40_done)) (at start (step44_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_done))))
  (:durative-action step30
    (:parameters (?s - step))
    :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (step3_done)) (at start (step60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_done))))
  (:durative-action step31
    (:parameters (?s - step))
    :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (step40_done)) (at start (step41_done)) (at start (step68_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step31_done))))
  (:durative-action step32
    (:parameters (?s - step))
    :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step4_done)) (at start (step11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step32_done))))
  (:durative-action step33
    (:parameters (?s - step))
    :duration 345600
    :condition (and (at start (step_pending ?s)) (at start (step56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step33_done))))
  (:durative-action step34
    (:parameters (?s - step))
    :duration 259200
    :condition (and (at start (step_pending ?s)) (at start (step11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step34_done))))
  (:durative-action step35
    (:parameters (?s - step))
    :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (step8_done)) (at start (step46_done)) (at start (step59_done)) (at start (step70_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step35_done))))
  (:durative-action step36
    (:parameters (?s - step))
    :duration 604800
    :condition (and (at start (step_pending ?s)) (at start (step64_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step36_done))))
  (:durative-action step37
    (:parameters (?s - step))
    :duration 172800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step37_done))))
  (:durative-action step38
    (:parameters (?s - step))
    :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step36_done)) (at start (step61_done)) (at start (step64_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step38_done))))
  (:durative-action step39
    (:parameters (?s - step))
    :duration 432000
    :condition (and (at start (step_pending ?s)) (at start (step43_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step39_done))))
  (:durative-action step40
    (:parameters (?s - step))
    :duration 604800
    :condition (and (at start (step_pending ?s)) (at start (step67_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step40_done))))
  (:durative-action step41
    (:parameters (?s - step))
    :duration 1814400
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step41_done))))
  (:durative-action step42
    (:parameters (?s - step))
    :duration 345600
    :condition (and (at start (step_pending ?s)) (at start (step60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step42_done))))
  (:durative-action step43
    (:parameters (?s - step))
    :duration 604800
    :condition (and (at start (step_pending ?s)) (at start (step13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step43_done))))
  (:durative-action step44
    (:parameters (?s - step))
    :duration 259200
    :condition (and (at start (step_pending ?s)) (at start (step4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step44_done))))
  (:durative-action step45
    (:parameters (?s - step))
    :duration 172800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step45_done))))
  (:durative-action step46
    (:parameters (?s - step))
    :duration 345600
    :condition (and (at start (step_pending ?s)) (at start (step40_done)) (at start (step43_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step46_done))))
  (:durative-action step47
    (:parameters (?s - step))
    :duration 432000
    :condition (and (at start (step_pending ?s)) (at start (step13_done)) (at start (step25_done)) (at start (step26_done)) (at start (step36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step47_done))))
  (:durative-action step48
    (:parameters (?s - step))
    :duration 259200
    :condition (and (at start (step_pending ?s)) (at start (step4_done)) (at start (step9_done)) (at start (step16_done)) (at start (step17_done)) (at start (step45_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step48_done))))
  (:durative-action step49
    (:parameters (?s - step))
    :duration 345600
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step27_done)) (at start (step63_done)) (at start (step69_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step49_done))))
  (:durative-action step50
    (:parameters (?s - step))
    :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (step34_done)) (at start (step45_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step50_done))))
  (:durative-action step51
    (:parameters (?s - step))
    :duration 604800
    :condition (and (at start (step_pending ?s)) (at start (step70_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step51_done))))
  (:durative-action step52
    (:parameters (?s - step))
    :duration 259200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step52_done))))
  (:durative-action step53
    (:parameters (?s - step))
    :duration 172800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step53_done))))
  (:durative-action step54
    (:parameters (?s - step))
    :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step45_done)) (at start (step59_done)) (at start (step67_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step54_done))))
  (:durative-action step55
    (:parameters (?s - step))
    :duration 259200
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step42_done)) (at start (step43_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step55_done))))
  (:durative-action step56
    (:parameters (?s - step))
    :duration 1209600
    :condition (and (at start (step_pending ?s)) (at start (step60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step56_done))))
  (:durative-action step57
    (:parameters (?s - step))
    :duration 432000
    :condition (and (at start (step_pending ?s)) (at start (step27_done)) (at start (step29_done)) (at start (step46_done)) (at start (step59_done)) (at start (step62_done)) (at start (step67_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step57_done))))
  (:durative-action step58
    (:parameters (?s - step))
    :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (step5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step58_done))))
  (:durative-action step59
    (:parameters (?s - step))
    :duration 172800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step59_done))))
  (:durative-action step60
    (:parameters (?s - step))
    :duration 259200
    :condition (and (at start (step_pending ?s)) (at start (step28_done)) (at start (step34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step60_done))))
  (:durative-action step61
    (:parameters (?s - step))
    :duration 604800
    :condition (and (at start (step_pending ?s)) (at start (step6_done)) (at start (step46_done)) (at start (step64_done)) (at start (step69_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step61_done))))
  (:durative-action step62
    (:parameters (?s - step))
    :duration 259200
    :condition (and (at start (step_pending ?s)) (at start (step8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step62_done))))
  (:durative-action step63
    (:parameters (?s - step))
    :duration 345600
    :condition (and (at start (step_pending ?s)) (at start (step6_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step63_done))))
  (:durative-action step64
    (:parameters (?s - step))
    :duration 604800
    :condition (and (at start (step_pending ?s)) (at start (step39_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step64_done))))
  (:durative-action step65
    (:parameters (?s - step))
    :duration 432000
    :condition (and (at start (step_pending ?s)) (at start (step64_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step65_done))))
  (:durative-action step66
    (:parameters (?s - step))
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step29_done)) (at start (step49_done)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step66_done))))
  (:durative-action step67
    (:parameters (?s - step))
    :duration 604800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step67_done))))
  (:durative-action step68
    (:parameters (?s - step))
    :duration 259200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step68_done))))
  (:durative-action step69
    (:parameters (?s - step))
    :duration 345600
    :condition (and (at start (step_pending ?s)) (at start (step37_done)) (at start (step46_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step69_done))))
  (:durative-action step70
    (:parameters (?s - step))
    :duration 172800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step70_done)))))
