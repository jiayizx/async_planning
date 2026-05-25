(define (domain dinner_prep)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (s5_done)
    (s6_done)
    (s7_done)
    (s8_done)
    (s9_done)
    (s10_done)
    (s11_done)
    (s12_done)
    (s13_done)
    (s14_done)
    (s15_done)
    (s16_done)
    (s17_done)
    (s18_done)
    (s19_done)
    (s20_done)
    (s21_done)
    (s22_done)
    (s23_done)
    (s24_done)
    (s25_done)
    (s26_done)
    (s27_done)
    (s28_done)
    (s29_done)
    (s30_done)
    (s31_done)
    (s32_done)
    (s33_done)
    (s34_done)
    (s35_done)
    (s36_done)
    (s37_done)
    (s38_done)
    (s39_done)
    (s40_done)
    (s41_done)
    (s42_done)
    (s43_done)
    (s44_done)
    (s45_done)
    (s46_done)
    (s47_done)
    (s48_done)
    (s49_done)
    (s50_done)
  )

  ;; Step 1
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done)))
  )

  ;; Step 2
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done)))
  )

  ;; Step 3
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s19_done)) (at start (s28_done)) (at start (s34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done)))
  )

  ;; Step 4
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done)))
  )

  ;; Step 5
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done)))
  )

  ;; Step 6
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s49_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done)))
  )

  ;; Step 7
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s33_done)) (at start (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done)))
  )

  ;; Step 8
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done)))
  )

  ;; Step 9
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (s46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done)))
  )

  ;; Step 10
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)) (at start (s27_done)) (at start (s29_done)) (at start (s33_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done)))
  )

  ;; Step 11
  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s25_done)) (at start (s35_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done)))
  )

  ;; Step 12
  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done)))
  )

  ;; Step 13
  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (s42_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done)))
  )

  ;; Step 14
  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done)))
  )

  ;; Step 15
  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done)))
  )

  ;; Step 16
  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (s39_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done)))
  )

  ;; Step 17
  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s21_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done)))
  )

  ;; Step 18
  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s20_done)) (at start (s21_done)) (at start (s35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done)))
  )

  ;; Step 19
  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s43_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done)))
  )

  ;; Step 20
  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done)))
  )

  ;; Step 21
  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done)))
  )

  ;; Step 22
  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done)))
  )

  ;; Step 23
  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 420)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done)))
  )

  ;; Step 24
  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done)))
  )

  ;; Step 25
  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s31_done)) (at start (s36_done)) (at start (s42_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done)))
  )

  ;; Step 26
  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done)))
  )

  ;; Step 27
  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done)))
  )

  ;; Step 28
  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done)))
  )

  ;; Step 29
  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)) (at start (s39_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done)))
  )

  ;; Step 30
  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s42_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done)))
  )

  ;; Step 31
  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s44_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_done)))
  )

  ;; Step 32
  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_done)))
  )

  ;; Step 33
  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_done)))
  )

  ;; Step 34
  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s13_done)) (at start (s19_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_done)))
  )

  ;; Step 35
  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_done)))
  )

  ;; Step 36
  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 360)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_done)))
  )

  ;; Step 37
  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_done)))
  )

  ;; Step 38
  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s16_done)) (at start (s25_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_done)))
  )

  ;; Step 39
  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_done)))
  )

  ;; Step 40
  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)) (at start (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_done)))
  )

  ;; Step 41
  (:durative-action do_step41
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s31_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_done)))
  )

  ;; Step 42
  (:durative-action do_step42
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_done)))
  )

  ;; Step 43
  (:durative-action do_step43
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_done)))
  )

  ;; Step 44
  (:durative-action do_step44
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)) (at start (s23_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_done)))
  )

  ;; Step 45
  (:durative-action do_step45
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_done)))
  )

  ;; Step 46
  (:durative-action do_step46
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s22_done)) (at start (s36_done)) (at start (s49_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_done)))
  )

  ;; Step 47
  (:durative-action do_step47
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s9_done)) (at start (s16_done)) (at start (s32_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_done)))
  )

  ;; Step 48
  (:durative-action do_step48
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s21_done)) (at start (s27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_done)))
  )

  ;; Step 49
  (:durative-action do_step49
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_done)))
  )

  ;; Step 50
  (:durative-action do_step50
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s8_done)) (at start (s20_done)) (at start (s22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_done)))
  )
)
