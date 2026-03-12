(define (domain walk_to_living_room)
  (:requirements :durative-actions)
  (:predicates
    (s1_pending) (s1_done)
    (s2_pending) (s2_done)
    (s3_pending) (s3_done)
    (s4_pending) (s4_done)
    (s5_pending) (s5_done)
    (s6_pending) (s6_done)
    (s7_pending) (s7_done)
    (s8_pending) (s8_done)
    (s9_pending) (s9_done)
    (s10_pending) (s10_done)
    (s11_pending) (s11_done)
    (s12_pending) (s12_done)
    (s13_pending) (s13_done)
    (s14_pending) (s14_done)
    (s15_pending) (s15_done)
    (s16_pending) (s16_done)
    (s17_pending) (s17_done)
    (s18_pending) (s18_done)
    (s19_pending) (s19_done)
    (s20_pending) (s20_done)
    (s21_pending) (s21_done)
    (s22_pending) (s22_done)
    (s23_pending) (s23_done)
    (s24_pending) (s24_done)
    (s25_pending) (s25_done)
    (s26_pending) (s26_done)
    (s27_pending) (s27_done)
    (s28_pending) (s28_done)
    (s29_pending) (s29_done)
    (s30_pending) (s30_done)
    (s31_pending) (s31_done)
    (s32_pending) (s32_done)
    (s33_pending) (s33_done)
    (s34_pending) (s34_done)
    (s35_pending) (s35_done)
    (s36_pending) (s36_done)
    (s37_pending) (s37_done)
    (s38_pending) (s38_done)
    (s39_pending) (s39_done)
    (s40_pending) (s40_done)
    (s41_pending) (s41_done)
    (s42_pending) (s42_done)
    (s43_pending) (s43_done)
    (s44_pending) (s44_done)
    (s45_pending) (s45_done)
    (s46_pending) (s46_done)
    (s47_pending) (s47_done)
    (s48_pending) (s48_done)
    (s49_pending) (s49_done)
    (s50_pending) (s50_done)
  )

  ;; Step 1
  (:durative-action step1
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (s1_pending))
    :effect (and (at start (not (s1_pending))) (at end (s1_done)))
  )

  ;; Step 2
  (:durative-action step2
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (s2_pending)) (at start (s10_done)) (at start (s35_done)))
    :effect (and (at start (not (s2_pending))) (at end (s2_done)))
  )

  ;; Step 3
  (:durative-action step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (s3_pending)) (at start (s4_done)))
    :effect (and (at start (not (s3_pending))) (at end (s3_done)))
  )

  ;; Step 4
  (:durative-action step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (s4_pending)) (at start (s28_done)) (at start (s49_done)))
    :effect (and (at start (not (s4_pending))) (at end (s4_done)))
  )

  ;; Step 5
  (:durative-action step5
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (s5_pending))
    :effect (and (at start (not (s5_pending))) (at end (s5_done)))
  )

  ;; Step 6
  (:durative-action step6
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (s6_pending)) (at start (s11_done)) (at start (s34_done)))
    :effect (and (at start (not (s6_pending))) (at end (s6_done)))
  )

  ;; Step 7
  (:durative-action step7
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (s7_pending)) (at start (s8_done)) (at start (s21_done)))
    :effect (and (at start (not (s7_pending))) (at end (s7_done)))
  )

  ;; Step 8
  (:durative-action step8
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s8_pending))
    :effect (and (at start (not (s8_pending))) (at end (s8_done)))
  )

  ;; Step 9
  (:durative-action step9
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (s9_pending)) (at start (s11_done)) (at start (s50_done)))
    :effect (and (at start (not (s9_pending))) (at end (s9_done)))
  )

  ;; Step 10
  (:durative-action step10
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (s10_pending))
    :effect (and (at start (not (s10_pending))) (at end (s10_done)))
  )

  ;; Step 11
  (:durative-action step11
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (s11_pending))
    :effect (and (at start (not (s11_pending))) (at end (s11_done)))
  )

  ;; Step 12
  (:durative-action step12
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (s12_pending)) (at start (s2_done)) (at start (s16_done)) (at start (s41_done)))
    :effect (and (at start (not (s12_pending))) (at end (s12_done)))
  )

  ;; Step 13
  (:durative-action step13
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (s13_pending)) (at start (s5_done)))
    :effect (and (at start (not (s13_pending))) (at end (s13_done)))
  )

  ;; Step 14
  (:durative-action step14
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (s14_pending)) (at start (s28_done)))
    :effect (and (at start (not (s14_pending))) (at end (s14_done)))
  )

  ;; Step 15
  (:durative-action step15
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (s15_pending)) (at start (s19_done)) (at start (s23_done)) (at start (s28_done)) (at start (s29_done)) (at start (s36_done)))
    :effect (and (at start (not (s15_pending))) (at end (s15_done)))
  )

  ;; Step 16
  (:durative-action step16
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (s16_pending)) (at start (s10_done)))
    :effect (and (at start (not (s16_pending))) (at end (s16_done)))
  )

  ;; Step 17
  (:durative-action step17
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (s17_pending))
    :effect (and (at start (not (s17_pending))) (at end (s17_done)))
  )

  ;; Step 18
  (:durative-action step18
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (s18_pending)) (at start (s26_done)))
    :effect (and (at start (not (s18_pending))) (at end (s18_done)))
  )

  ;; Step 19
  (:durative-action step19
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (s19_pending)) (at start (s16_done)) (at start (s21_done)))
    :effect (and (at start (not (s19_pending))) (at end (s19_done)))
  )

  ;; Step 20
  (:durative-action step20
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (s20_pending)) (at start (s8_done)) (at start (s18_done)))
    :effect (and (at start (not (s20_pending))) (at end (s20_done)))
  )

  ;; Step 21
  (:durative-action step21
    :parameters ()
    :duration (= ?duration 5)
    :condition (at start (s21_pending))
    :effect (and (at start (not (s21_pending))) (at end (s21_done)))
  )

  ;; Step 22
  (:durative-action step22
    :parameters ()
    :duration (= ?duration 4)
    :condition (and (at start (s22_pending)) (at start (s9_done)) (at start (s19_done)) (at start (s27_done)) (at start (s48_done)) (at start (s50_done)))
    :effect (and (at start (not (s22_pending))) (at end (s22_done)))
  )

  ;; Step 23
  (:durative-action step23
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (s23_pending)) (at start (s1_done)) (at start (s13_done)))
    :effect (and (at start (not (s23_pending))) (at end (s23_done)))
  )

  ;; Step 24
  (:durative-action step24
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (s24_pending)) (at start (s46_done)))
    :effect (and (at start (not (s24_pending))) (at end (s24_done)))
  )

  ;; Step 25
  (:durative-action step25
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (s25_pending))
    :effect (and (at start (not (s25_pending))) (at end (s25_done)))
  )

  ;; Step 26
  (:durative-action step26
    :parameters ()
    :duration (= ?duration 8)
    :condition (and (at start (s26_pending)) (at start (s6_done)) (at start (s9_done)) (at start (s14_done)))
    :effect (and (at start (not (s26_pending))) (at end (s26_done)))
  )

  ;; Step 27
  (:durative-action step27
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (s27_pending))
    :effect (and (at start (not (s27_pending))) (at end (s27_done)))
  )

  ;; Step 28
  (:durative-action step28
    :parameters ()
    :duration (= ?duration 2)
    :condition (at start (s28_pending))
    :effect (and (at start (not (s28_pending))) (at end (s28_done)))
  )

  ;; Step 29
  (:durative-action step29
    :parameters ()
    :duration (= ?duration 6)
    :condition (and (at start (s29_pending)) (at start (s21_done)) (at start (s35_done)) (at start (s37_done)) (at start (s43_done)))
    :effect (and (at start (not (s29_pending))) (at end (s29_done)))
  )

  ;; Step 30
  (:durative-action step30
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (s30_pending)) (at start (s17_done)) (at start (s44_done)))
    :effect (and (at start (not (s30_pending))) (at end (s30_done)))
  )

  ;; Step 31
  (:durative-action step31
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (s31_pending)) (at start (s2_done)) (at start (s29_done)) (at start (s41_done)) (at start (s47_done)))
    :effect (and (at start (not (s31_pending))) (at end (s31_done)))
  )

  ;; Step 32
  (:durative-action step32
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (s32_pending)) (at start (s40_done)))
    :effect (and (at start (not (s32_pending))) (at end (s32_done)))
  )

  ;; Step 33
  (:durative-action step33
    :parameters ()
    :duration (= ?duration 1)
    :condition (and (at start (s33_pending)) (at start (s6_done)) (at start (s30_done)) (at start (s31_done)))
    :effect (and (at start (not (s33_pending))) (at end (s33_done)))
  )

  ;; Step 34
  (:durative-action step34
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (s34_pending)) (at start (s50_done)))
    :effect (and (at start (not (s34_pending))) (at end (s34_done)))
  )

  ;; Step 35
  (:durative-action step35
    :parameters ()
    :duration (= ?duration 7)
    :condition (at start (s35_pending))
    :effect (and (at start (not (s35_pending))) (at end (s35_done)))
  )

  ;; Step 36
  (:durative-action step36
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (s36_pending)) (at start (s32_done)))
    :effect (and (at start (not (s36_pending))) (at end (s36_done)))
  )

  ;; Step 37
  (:durative-action step37
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (s37_pending)) (at start (s47_done)))
    :effect (and (at start (not (s37_pending))) (at end (s37_done)))
  )

  ;; Step 38
  (:durative-action step38
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (s38_pending)) (at start (s16_done)) (at start (s19_done)) (at start (s43_done)))
    :effect (and (at start (not (s38_pending))) (at end (s38_done)))
  )

  ;; Step 39
  (:durative-action step39
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (s39_pending)) (at start (s11_done)))
    :effect (and (at start (not (s39_pending))) (at end (s39_done)))
  )

  ;; Step 40
  (:durative-action step40
    :parameters ()
    :duration (= ?duration 4)
    :condition (and (at start (s40_pending)) (at start (s7_done)) (at start (s49_done)))
    :effect (and (at start (not (s40_pending))) (at end (s40_done)))
  )

  ;; Step 41
  (:durative-action step41
    :parameters ()
    :duration (= ?duration 4)
    :condition (and (at start (s41_pending)) (at start (s25_done)) (at start (s36_done)) (at start (s47_done)) (at start (s44_done)))
    :effect (and (at start (not (s41_pending))) (at end (s41_done)))
  )

  ;; Step 42
  (:durative-action step42
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (s42_pending)) (at start (s18_done)) (at start (s24_done)) (at start (s49_done)))
    :effect (and (at start (not (s42_pending))) (at end (s42_done)))
  )

  ;; Step 43
  (:durative-action step43
    :parameters ()
    :duration (= ?duration 15)
    :condition (at start (s43_pending))
    :effect (and (at start (not (s43_pending))) (at end (s43_done)))
  )

  ;; Step 44
  (:durative-action step44
    :parameters ()
    :duration (= ?duration 2)
    :condition (at start (s44_pending))
    :effect (and (at start (not (s44_pending))) (at end (s44_done)))
  )

  ;; Step 45
  (:durative-action step45
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (s45_pending)) (at start (s27_done)) (at start (s43_done)))
    :effect (and (at start (not (s45_pending))) (at end (s45_done)))
  )

  ;; Step 46
  (:durative-action step46
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (s46_pending)) (at start (s4_done)))
    :effect (and (at start (not (s46_pending))) (at end (s46_done)))
  )

  ;; Step 47
  (:durative-action step47
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (s47_pending)) (at start (s13_done)))
    :effect (and (at start (not (s47_pending))) (at end (s47_done)))
  )

  ;; Step 48
  (:durative-action step48
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (s48_pending)) (at start (s8_done)) (at start (s27_done)) (at start (s44_done)) (at start (s46_done)))
    :effect (and (at start (not (s48_pending))) (at end (s48_done)))
  )

  ;; Step 49
  (:durative-action step49
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (s49_pending))
    :effect (and (at start (not (s49_pending))) (at end (s49_done)))
  )

  ;; Step 50
  (:durative-action step50
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (s50_pending)) (at start (s5_done)) (at start (s17_done)))
    :effect (and (at start (not (s50_pending))) (at end (s50_done)))
  )
)
