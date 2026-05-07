(define (domain plant_enrichment)
  (:requirements :durative-actions :typing)
  (:predicates
    (step1_pending) (step2_pending) (step3_pending) (step4_pending) (step5_pending)
    (step6_pending) (step7_pending) (step8_pending) (step9_pending) (step10_pending)
    (step11_pending) (step12_pending) (step13_pending) (step14_pending) (step15_pending)
    (step16_pending) (step17_pending) (step18_pending) (step19_pending) (step20_pending)
    (step21_pending) (step22_pending) (step23_pending) (step24_pending) (step25_pending)
    (step26_pending) (step27_pending) (step28_pending) (step29_pending) (step30_pending)
    (step31_pending) (step32_pending) (step33_pending) (step34_pending) (step35_pending)
    (step36_pending) (step37_pending) (step38_pending) (step39_pending) (step40_pending)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
    (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done)
    (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (s31_done) (s32_done) (s33_done) (s34_done) (s35_done)
    (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
  )

  (:durative-action step1
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (s1_done)))
  )

  (:durative-action step2
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step2_pending)) (at start (s3_done)) (at start (s22_done)))
    :effect (and (at start (not (step2_pending))) (at end (s2_done)))
  )

  (:durative-action step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step3_pending))
    :effect (and (at start (not (step3_pending))) (at end (s3_done)))
  )

  (:durative-action step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (s4_done)))
  )

  (:durative-action step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step5_pending)) (at start (s27_done)))
    :effect (and (at start (not (step5_pending))) (at end (s5_done)))
  )

  (:durative-action step6
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step6_pending)) (at start (s18_done)))
    :effect (and (at start (not (step6_pending))) (at end (s6_done)))
  )

  (:durative-action step7
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step7_pending)) (at start (s1_done)))
    :effect (and (at start (not (step7_pending))) (at end (s7_done)))
  )

  (:durative-action step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step8_pending)) (at start (s9_done)))
    :effect (and (at start (not (step8_pending))) (at end (s8_done)))
  )

  (:durative-action step9
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step9_pending)) (at start (s39_done)))
    :effect (and (at start (not (step9_pending))) (at end (s9_done)))
  )

  (:durative-action step10
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step10_pending)) (at start (s16_done)) (at start (s32_done)))
    :effect (and (at start (not (step10_pending))) (at end (s10_done)))
  )

  (:durative-action step11
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step11_pending)) (at start (s25_done)))
    :effect (and (at start (not (step11_pending))) (at end (s11_done)))
  )

  (:durative-action step12
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step12_pending)) (at start (s9_done)))
    :effect (and (at start (not (step12_pending))) (at end (s12_done)))
  )

  (:durative-action step13
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step13_pending)) (at start (s2_done)) (at start (s8_done)))
    :effect (and (at start (not (step13_pending))) (at end (s13_done)))
  )

  (:durative-action step14
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step14_pending)) (at start (s17_done)) (at start (s18_done)) (at start (s24_done)))
    :effect (and (at start (not (step14_pending))) (at end (s14_done)))
  )

  (:durative-action step15
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step15_pending)) (at start (s9_done)))
    :effect (and (at start (not (step15_pending))) (at end (s15_done)))
  )

  (:durative-action step16
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step16_pending)) (at start (s6_done)) (at start (s11_done)) (at start (s25_done)) (at start (s32_done)))
    :effect (and (at start (not (step16_pending))) (at end (s16_done)))
  )

  (:durative-action step17
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step17_pending)) (at start (s4_done)))
    :effect (and (at start (not (step17_pending))) (at end (s17_done)))
  )

  (:durative-action step18
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step18_pending)) (at start (s1_done)) (at start (s23_done)))
    :effect (and (at start (not (step18_pending))) (at end (s18_done)))
  )

  (:durative-action step19
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step19_pending)) (at start (s24_done)))
    :effect (and (at start (not (step19_pending))) (at end (s19_done)))
  )

  (:durative-action step20
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step20_pending)) (at start (s6_done)) (at start (s30_done)))
    :effect (and (at start (not (step20_pending))) (at end (s20_done)))
  )

  (:durative-action step21
    :parameters ()
    :duration (= ?duration 43200)
    :condition (and (at start (step21_pending)) (at start (s1_done)))
    :effect (and (at start (not (step21_pending))) (at end (s21_done)))
  )

  (:durative-action step22
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step22_pending)) (at start (s32_done)))
    :effect (and (at start (not (step22_pending))) (at end (s22_done)))
  )

  (:durative-action step23
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step23_pending)) (at start (s8_done)) (at start (s40_done)))
    :effect (and (at start (not (step23_pending))) (at end (s23_done)))
  )

  (:durative-action step24
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step24_pending))
    :effect (and (at start (not (step24_pending))) (at end (s24_done)))
  )

  (:durative-action step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step25_pending))
    :effect (and (at start (not (step25_pending))) (at end (s25_done)))
  )

  (:durative-action step26
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step26_pending)) (at start (s3_done)) (at start (s12_done)) (at start (s28_done)))
    :effect (and (at start (not (step26_pending))) (at end (s26_done)))
  )

  (:durative-action step27
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step27_pending))
    :effect (and (at start (not (step27_pending))) (at end (s27_done)))
  )

  (:durative-action step28
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step28_pending))
    :effect (and (at start (not (step28_pending))) (at end (s28_done)))
  )

  (:durative-action step29
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step29_pending)) (at start (s7_done)))
    :effect (and (at start (not (step29_pending))) (at end (s29_done)))
  )

  (:durative-action step30
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step30_pending)) (at start (s2_done)) (at start (s14_done)))
    :effect (and (at start (not (step30_pending))) (at end (s30_done)))
  )

  (:durative-action step31
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step31_pending)) (at start (s1_done)) (at start (s30_done)) (at start (s38_done)))
    :effect (and (at start (not (step31_pending))) (at end (s31_done)))
  )

  (:durative-action step32
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step32_pending))
    :effect (and (at start (not (step32_pending))) (at end (s32_done)))
  )

  (:durative-action step33
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step33_pending)) (at start (s23_done)) (at start (s35_done)) (at start (s36_done)))
    :effect (and (at start (not (step33_pending))) (at end (s33_done)))
  )

  (:durative-action step34
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step34_pending)) (at start (s21_done)) (at start (s25_done)))
    :effect (and (at start (not (step34_pending))) (at end (s34_done)))
  )

  (:durative-action step35
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step35_pending)) (at start (s36_done)))
    :effect (and (at start (not (step35_pending))) (at end (s35_done)))
  )

  (:durative-action step36
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step36_pending)) (at start (s34_done)))
    :effect (and (at start (not (step36_pending))) (at end (s36_done)))
  )

  (:durative-action step37
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step37_pending)) (at start (s14_done)) (at start (s39_done)))
    :effect (and (at start (not (step37_pending))) (at end (s37_done)))
  )

  (:durative-action step38
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step38_pending)) (at start (s22_done)) (at start (s32_done)))
    :effect (and (at start (not (step38_pending))) (at end (s38_done)))
  )

  (:durative-action step39
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step39_pending))
    :effect (and (at start (not (step39_pending))) (at end (s39_done)))
  )

  (:durative-action step40
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step40_pending))
    :effect (and (at start (not (step40_pending))) (at end (s40_done)))
  )
)