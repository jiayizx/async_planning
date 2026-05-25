(define (domain backyard_cleanup)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
               (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
               (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
               (s31_done) (s32_done) (s33_done) (s34_done) (s35_done) (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
               (s41_done) (s42_done) (s43_done) (s44_done) (s45_done) (s46_done) (s47_done) (s48_done) (s49_done) (s50_done))
  (:durative-action step1
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))
  (:durative-action step2
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))
  (:durative-action step3
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (s21_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))
  (:durative-action step4
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s26_done)) (at start (s35_done)) (at start (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))
  (:durative-action step5
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))
  (:durative-action step6
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s30_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))
  (:durative-action step7
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))
  (:durative-action step8
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s10_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))
  (:durative-action step9
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))
  (:durative-action step10
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))
  (:durative-action step11
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))
  (:durative-action step12
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s13_done)) (at start (s31_done)) (at start (s33_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))
  (:durative-action step13
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))
  (:durative-action step14
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))
  (:durative-action step15
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))
  (:durative-action step16
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))
  (:durative-action step17
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s29_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))
  (:durative-action step18
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))
  (:durative-action step19
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))
  (:durative-action step20
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s49_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))
  (:durative-action step21
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s32_done)) (at start (s46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))
  (:durative-action step22
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (s18_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done))))
  (:durative-action step23
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (s18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))
  (:durative-action step24
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))
  (:durative-action step25
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))
  (:durative-action step26
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))
  (:durative-action step27
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))
  (:durative-action step28
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s42_done)) (at start (s18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))
  (:durative-action step29
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s27_done)) (at start (s28_done)) (at start (s40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))
  (:durative-action step30
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s49_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done))))
  (:durative-action step31
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (s20_done)) (at start (s35_done)) (at start (s39_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_done))))
  (:durative-action step32
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s27_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_done))))
  (:durative-action step33
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_done))))
  (:durative-action step34
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s19_done)) (at start (s25_done)) (at start (s35_done)) (at start (s38_done)) (at start (s43_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_done))))
  (:durative-action step35
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_done))))
  (:durative-action step36
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_done))))
  (:durative-action step37
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)) (at start (s19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_done))))
  (:durative-action step38
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (s20_done)) (at start (s21_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_done))))
  (:durative-action step39
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (s32_done)) (at start (s43_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_done))))
  (:durative-action step40
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)) (at start (s49_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_done))))
  (:durative-action step41
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_done))))
  (:durative-action step42
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_done))))
  (:durative-action step43
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s2_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_done))))
  (:durative-action step44
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)) (at start (s15_done)) (at start (s42_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_done))))
  (:durative-action step45
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_done))))
  (:durative-action step46
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s42_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_done))))
  (:durative-action step47
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s25_done)) (at start (s39_done)) (at start (s42_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_done))))
  (:durative-action step48
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)) (at start (s21_done)) (at start (s24_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_done))))
  (:durative-action step49
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_done))))
  (:durative-action step50
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_done)))))