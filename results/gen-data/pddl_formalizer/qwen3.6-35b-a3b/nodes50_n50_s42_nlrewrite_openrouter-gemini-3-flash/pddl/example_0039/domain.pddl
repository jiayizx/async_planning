(define (domain shower)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending - step)
    (step_done - step)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done)
    (step16_done) (step17_done) (step18_done) (step19_done) (step20_done)
    (step21_done) (step22_done) (step23_done) (step24_done) (step25_done)
    (step26_done) (step27_done) (step28_done) (step29_done) (step30_done)
    (step31_done) (step32_done) (step33_done) (step34_done) (step35_done)
    (step36_done) (step37_done) (step38_done) (step39_done) (step40_done)
    (step41_done) (step42_done) (step43_done) (step44_done) (step45_done)
    (step46_done) (step47_done) (step48_done) (step49_done) (step50_done))
  (:durative-action do_step1
    :duration 10
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step1_done))))
  (:durative-action do_step2
    :duration 5
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step16_done))
                    (at start (step25_done))
                    (at start (step39_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step2_done))))
  (:durative-action do_step3
    :duration 15
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step3_done))))
  (:durative-action do_step4
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step2_done))
                    (at start (step27_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step4_done))))
  (:durative-action do_step5
    :duration 5
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step5_done))))
  (:durative-action do_step6
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step49_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step6_done))))
  (:durative-action do_step7
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step18_done))
                    (at start (step36_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step7_done))))
  (:durative-action do_step8
    :duration 5
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step20_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step8_done))))
  (:durative-action do_step9
    :duration 45
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step10_done))
                    (at start (step38_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step9_done))))
  (:durative-action do_step10
    :duration 5
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step38_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step10_done))))
  (:durative-action do_step11
    :duration 5
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step11_done))))
  (:durative-action do_step12
    :duration 40
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step6_done))
                    (at start (step19_done))
                    (at start (step21_done))
                    (at start (step44_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step12_done))))
  (:durative-action do_step13
    :duration 15
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step13_done))))
  (:durative-action do_step14
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step29_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step14_done))))
  (:durative-action do_step15
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step10_done))
                    (at start (step20_done))
                    (at start (step42_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step15_done))))
  (:durative-action do_step16
    :duration 30
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step16_done))))
  (:durative-action do_step17
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step31_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step17_done))))
  (:durative-action do_step18
    :duration 5
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step38_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step18_done))))
  (:durative-action do_step19
    :duration 20
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step8_done))
                    (at start (step23_done))
                    (at start (step25_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step19_done))))
  (:durative-action do_step20
    :duration 10
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step20_done))))
  (:durative-action do_step21
    :duration 5
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step21_done))))
  (:durative-action do_step22
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step5_done))
                    (at start (step48_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step22_done))))
  (:durative-action do_step23
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step43_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step23_done))))
  (:durative-action do_step24
    :duration 5
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step24_done))))
  (:durative-action do_step25
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step1_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step25_done))))
  (:durative-action do_step26
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step17_done))
                    (at start (step21_done))
                    (at start (step31_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step26_done))))
  (:durative-action do_step27
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step5_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step27_done))))
  (:durative-action do_step28
    :duration 45
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step8_done))
                    (at start (step40_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step28_done))))
  (:durative-action do_step29
    :duration 20
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step10_done))
                    (at start (step25_done))
                    (at start (step30_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step29_done))))
  (:durative-action do_step30
    :duration 15
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step30_done))))
  (:durative-action do_step31
    :duration 5
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step10_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step31_done))))
  (:durative-action do_step32
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step1_done))
                    (at start (step40_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step32_done))))
  (:durative-action do_step33
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step6_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step33_done))))
  (:durative-action do_step34
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step24_done))
                    (at start (step36_done))
                    (at start (step37_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step34_done))))
  (:durative-action do_step35
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step11_done))
                    (at start (step24_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step35_done))))
  (:durative-action do_step36
    :duration 40
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step13_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step36_done))))
  (:durative-action do_step37
    :duration 50
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step18_done))
                    (at start (step33_done))
                    (at start (step42_done))
                    (at start (step47_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step37_done))))
  (:durative-action do_step38
    :duration 20
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step38_done))))
  (:durative-action do_step39
    :duration 5
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step15_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step39_done))))
  (:durative-action do_step40
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step20_done))
                    (at start (step39_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step40_done))))
  (:durative-action do_step41
    :duration 20
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step5_done))
                    (at start (step8_done))
                    (at start (step15_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step41_done))))
  (:durative-action do_step42
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step3_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step42_done))))
  (:durative-action do_step43
    :duration 5
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step25_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step43_done))))
  (:durative-action do_step44
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step24_done))
                    (at start (step39_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step44_done))))
  (:durative-action do_step45
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step38_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step45_done))))
  (:durative-action do_step46
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step28_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step46_done))))
  (:durative-action do_step47
    :duration 45
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step1_done))
                    (at start (step20_done))
                    (at start (step45_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step47_done))))
  (:durative-action do_step48
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step20_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step48_done))))
  (:durative-action do_step49
    :duration 5
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step49_done))))
  (:durative-action do_step50
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s))
                    (at start (step9_done))
                    (at start (step35_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (step50_done)))))