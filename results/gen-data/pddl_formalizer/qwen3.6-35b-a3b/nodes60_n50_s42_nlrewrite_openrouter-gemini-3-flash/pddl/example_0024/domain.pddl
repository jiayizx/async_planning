(define (domain library_card_domain)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step ?s - step)
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done) (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done) (step16_done) (step17_done) (step18_done) (step19_done) (step20_done)
    (step21_done) (step22_done) (step23_done) (step24_done) (step25_done) (step26_done) (step27_done) (step28_done) (step29_done) (step30_done)
    (step31_done) (step32_done) (step33_done) (step34_done) (step35_done) (step36_done) (step37_done) (step38_done) (step39_done) (step40_done)
    (step41_done) (step42_done) (step43_done) (step44_done) (step45_done) (step46_done) (step47_done) (step48_done) (step49_done) (step50_done)
    (step51_done) (step52_done) (step53_done) (step54_done) (step55_done) (step56_done) (step57_done) (step58_done) (step59_done) (step60_done))

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_done))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_done))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_done))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_done))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (step18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_done))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (step42_done)) (at start (step46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_done))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_done))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step52_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_done))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step20_done)) (at start (step43_done)) (at start (step50_done)) (at start (step55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_done))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step49_done)) (at start (step51_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_done))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_done))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step5_done)) (at start (step10_done)) (at start (step15_done)) (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_done))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step15_done)) (at start (step16_done)) (at start (step27_done)) (at start (step31_done)) (at start (step32_done)) (at start (step33_done)) (at start (step39_done)) (at start (step60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_done))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_done))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (step14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_done))))

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step8_done)) (at start (step10_done)) (at start (step19_done)) (at start (step51_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_done))))

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (step50_done)) (at start (step52_done)) (at start (step57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_done))))

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_done))))

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_done))))

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (step29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_done))))

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step29_done)) (at start (step34_done)) (at start (step37_done)) (at start (step45_done)) (at start (step50_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_done))))

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_done))))

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step18_done)) (at start (step24_done)) (at start (step28_done)) (at start (step38_done)) (at start (step42_done)) (at start (step48_done)) (at start (step58_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_done))))

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step26_done)) (at start (step50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_done))))

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step42_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_done))))

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_done))))

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_done))))

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (step29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_done))))

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_done))))

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (step20_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_done))))

  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step58_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step31_done))))

  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step33_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step32_done))))

  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step33_done))))

  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step34_done))))

  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step35_done))))

  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (step18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step36_done))))

  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (step34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step37_done))))

  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step38_done))))

  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step27_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step39_done))))

  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step41_done)) (at start (step42_done)) (at start (step60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step40_done))))

  (:durative-action do_step41
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step41_done))))

  (:durative-action do_step42
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step45_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step42_done))))

  (:durative-action do_step43
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (step4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step43_done))))

  (:durative-action do_step44
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step17_done)) (at start (step42_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step44_done))))

  (:durative-action do_step45
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step45_done))))

  (:durative-action do_step46
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step45_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step46_done))))

  (:durative-action do_step47
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (step9_done)) (at start (step25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step47_done))))

  (:durative-action do_step48
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step48_done))))

  (:durative-action do_step49
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step58_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step49_done))))

  (:durative-action do_step50
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step50_done))))

  (:durative-action do_step51
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (step29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step51_done))))

  (:durative-action do_step52
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step52_done))))

  (:durative-action do_step53
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step21_done)) (at start (step29_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step53_done))))

  (:durative-action do_step54
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (step6_done)) (at start (step12_done)) (at start (step17_done)) (at start (step53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step54_done))))

  (:durative-action do_step55
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step52_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step55_done))))

  (:durative-action do_step56
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step56_done))))

  (:durative-action do_step57
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step57_done))))

  (:durative-action do_step58
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step58_done))))

  (:durative-action do_step59
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (step54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step59_done))))

  (:durative-action do_step60
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (step31_done)) (at start (step57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step60_done)))))