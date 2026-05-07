(define (domain clean_grease)
  (:requirements :typing :durative-actions)
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

  (:durative-action do_step1
    :duration (= ?duration 600)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step64_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_done))))

  (:durative-action do_step2
    :duration (= ?duration 900)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step25_done)) (at start (step63_done)) (at start (step66_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_done))))

  (:durative-action do_step3
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step7_done)) (at start (step15_done)) (at start (step18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_done))))

  (:durative-action do_step4
    :duration (= ?duration 180)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step18_done)) (at start (step31_done)) (at start (step65_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_done))))

  (:durative-action do_step5
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_done))))

  (:durative-action do_step6
    :duration (= ?duration 60)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_done))))

  (:durative-action do_step7
    :duration (= ?duration 600)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_done))))

  (:durative-action do_step8
    :duration (= ?duration 1200)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step49_done)) (at start (step61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_done))))

  (:durative-action do_step9
    :duration (= ?duration 480)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_done))))

  (:durative-action do_step10
    :duration (= ?duration 720)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step3_done)) (at start (step47_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_done))))

  (:durative-action do_step11
    :duration (= ?duration 360)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step6_done)) (at start (step27_done)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_done))))

  (:durative-action do_step12
    :duration (= ?duration 900)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step58_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_done))))

  (:durative-action do_step13
    :duration (= ?duration 600)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step20_done)) (at start (step66_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_done))))

  (:durative-action do_step14
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step42_done)) (at start (step61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_done))))

  (:durative-action do_step15
    :duration (= ?duration 420)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_done))))

  (:durative-action do_step16
    :duration (= ?duration 600)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step30_done)) (at start (step46_done)) (at start (step52_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_done))))

  (:durative-action do_step17
    :duration (= ?duration 1200)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step16_done)) (at start (step27_done)) (at start (step29_done)) (at start (step40_done)) (at start (step53_done)) (at start (step54_done)) (at start (step58_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_done))))

  (:durative-action do_step18
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step29_done)) (at start (step61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_done))))

  (:durative-action do_step19
    :duration (= ?duration 900)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step25_done)) (at start (step28_done)) (at start (step29_done)) (at start (step52_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_done))))

  (:durative-action do_step20
    :duration (= ?duration 240)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_done))))

  (:durative-action do_step21
    :duration (= ?duration 1800)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step66_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_done))))

  (:durative-action do_step22
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_done))))

  (:durative-action do_step23
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_done))))

  (:durative-action do_step24
    :duration (= ?duration 1500)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step65_done)) (at start (step70_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_done))))

  (:durative-action do_step25
    :duration (= ?duration 720)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step21_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_done))))

  (:durative-action do_step26
    :duration (= ?duration 120)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_done))))

  (:durative-action do_step27
    :duration (= ?duration 600)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_done))))

  (:durative-action do_step28
    :duration (= ?duration 120)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step4_done)) (at start (step55_done)) (at start (step57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_done))))

  (:durative-action do_step29
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step22_done)) (at start (step63_done)) (at start (step67_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_done))))

  (:durative-action do_step30
    :duration (= ?duration 180)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_done))))

  (:durative-action do_step31
    :duration (= ?duration 120)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step31_done))))

  (:durative-action do_step32
    :duration (= ?duration 240)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step27_done)) (at start (step38_done)) (at start (step61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step32_done))))

  (:durative-action do_step33
    :duration (= ?duration 180)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step47_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step33_done))))

  (:durative-action do_step34
    :duration (= ?duration 900)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step15_done)) (at start (step36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step34_done))))

  (:durative-action do_step35
    :duration (= ?duration 480)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step8_done)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step35_done))))

  (:durative-action do_step36
    :duration (= ?duration 120)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step50_done)) (at start (step55_done)) (at start (step59_done)) (at start (step61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step36_done))))

  (:durative-action do_step37
    :duration (= ?duration 180)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step39_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step37_done))))

  (:durative-action do_step38
    :duration (= ?duration 1200)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step12_done)) (at start (step24_done)) (at start (step25_done)) (at start (step44_done)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step38_done))))

  (:durative-action do_step39
    :duration (= ?duration 360)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step31_done)) (at start (step61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step39_done))))

  (:durative-action do_step40
    :duration (= ?duration 240)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step5_done)) (at start (step9_done)) (at start (step25_done)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step40_done))))

  (:durative-action do_step41
    :duration (= ?duration 60)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step41_done))))

  (:durative-action do_step42
    :duration (= ?duration 120)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step20_done)) (at start (step63_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step42_done))))

  (:durative-action do_step43
    :duration (= ?duration 120)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step43_done))))

  (:durative-action do_step44
    :duration (= ?duration 900)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step44_done))))

  (:durative-action do_step45
    :duration (= ?duration 600)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step13_done)) (at start (step15_done)) (at start (step19_done)) (at start (step24_done)) (at start (step25_done)) (at start (step35_done)) (at start (step37_done)) (at start (step38_done)) (at start (step59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step45_done))))

  (:durative-action do_step46
    :duration (= ?duration 120)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step46_done))))

  (:durative-action do_step47
    :duration (= ?duration 60)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step47_done))))

  (:durative-action do_step48
    :duration (= ?duration 180)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step6_done)) (at start (step60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step48_done))))

  (:durative-action do_step49
    :duration (= ?duration 240)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step49_done))))

  (:durative-action do_step50
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step50_done))))

  (:durative-action do_step51
    :duration (= ?duration 900)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step20_done)) (at start (step31_done)) (at start (step33_done)) (at start (step48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step51_done))))

  (:durative-action do_step52
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step52_done))))

  (:durative-action do_step53
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step53_done))))

  (:durative-action do_step54
    :duration (= ?duration 600)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step54_done))))

  (:durative-action do_step55
    :duration (= ?duration 600)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step67_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step55_done))))

  (:durative-action do_step56
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step20_done)) (at start (step57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step56_done))))

  (:durative-action do_step57
    :duration (= ?duration 480)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step39_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step57_done))))

  (:durative-action do_step58
    :duration (= ?duration 600)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step58_done))))

  (:durative-action do_step59
    :duration (= ?duration 1800)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step6_done)) (at start (step24_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step59_done))))

  (:durative-action do_step60
    :duration (= ?duration 240)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step43_done)) (at start (step46_done)) (at start (step63_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step60_done))))

  (:durative-action do_step61
    :duration (= ?duration 900)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step61_done))))

  (:durative-action do_step62
    :duration (= ?duration 1200)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step21_done)) (at start (step44_done)) (at start (step70_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step62_done))))

  (:durative-action do_step63
    :duration (= ?duration 60)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step63_done))))

  (:durative-action do_step64
    :duration (= ?duration 120)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step64_done))))

  (:durative-action do_step65
    :duration (= ?duration 720)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step33_done)) (at start (step61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step65_done))))

  (:durative-action do_step66
    :duration (= ?duration 300)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step5_done)) (at start (step29_done)) (at start (step54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step66_done))))

  (:durative-action do_step67
    :duration (= ?duration 60)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step67_done))))

  (:durative-action do_step68
    :duration (= ?duration 600)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step44_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step68_done))))

  (:durative-action do_step69
    :duration (= ?duration 60)
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step24_done)) (at start (step29_done)) (at start (step62_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step69_done))))

  (:durative-action do_step70
    :duration (= ?duration 900)
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step70_done)))))