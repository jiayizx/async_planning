(define (domain milk_tea_preparation)
  (:requirements :durative-actions :typing)
  (:types step_id)
  (:predicates
    (step_pending ?s - step_id)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
    (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done)
    (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (s31_done) (s32_done) (s33_done) (s34_done) (s35_done)
    (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
    (s41_done) (s42_done) (s43_done) (s44_done) (s45_done)
    (s46_done) (s47_done) (s48_done) (s49_done) (s50_done)
  )

  (:durative-action step1
    :parameters (?s - step_id)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s1_done)))
  )

  (:durative-action step2
    :parameters (?s - step_id)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s2_done)))
  )

  (:durative-action step3
    :parameters (?s - step_id)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s3_done)))
  )

  (:durative-action step4
    :parameters (?s - step_id)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s4_done)))
  )

  (:durative-action step5
    :parameters (?s - step_id)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s5_done)))
  )

  (:durative-action step6
    :parameters (?s - step_id)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s31_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s6_done)))
  )

  (:durative-action step7
    :parameters (?s - step_id)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s11_done)) (at start (s39_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s7_done)))
  )

  (:durative-action step8
    :parameters (?s - step_id)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s8_done)))
  )

  (:durative-action step9
    :parameters (?s - step_id)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s9_done)))
  )

  (:durative-action step10
    :parameters (?s - step_id)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s16_done)) (at start (s47_done)) (at start (s49_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s10_done)))
  )

  (:durative-action step11
    :parameters (?s - step_id)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s17_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s11_done)))
  )

  (:durative-action step12
    :parameters (?s - step_id)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s23_done)) (at start (s33_done)) (at start (s44_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s12_done)))
  )

  (:durative-action step13
    :parameters (?s - step_id)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s13_done)))
  )

  (:durative-action step14
    :parameters (?s - step_id)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s14_done)))
  )

  (:durative-action step15
    :parameters (?s - step_id)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s15_done)))
  )

  (:durative-action step16
    :parameters (?s - step_id)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s33_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s16_done)))
  )

  (:durative-action step17
    :parameters (?s - step_id)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s17_done)))
  )

  (:durative-action step18
    :parameters (?s - step_id)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s32_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s18_done)))
  )

  (:durative-action step19
    :parameters (?s - step_id)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s43_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s19_done)))
  )

  (:durative-action step20
    :parameters (?s - step_id)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s26_done)) (at start (s32_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s20_done)))
  )

  (:durative-action step21
    :parameters (?s - step_id)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s3_done)) (at start (s7_done)) (at start (s47_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s21_done)))
  )

  (:durative-action step22
    :parameters (?s - step_id)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s31_done)) (at start (s41_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s22_done)))
  )

  (:durative-action step23
    :parameters (?s - step_id)
    :duration (= ?duration 240)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s23_done)))
  )

  (:durative-action step24
    :parameters (?s - step_id)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s24_done)))
  )

  (:durative-action step25
    :parameters (?s - step_id)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s25_done)))
  )

  (:durative-action step26
    :parameters (?s - step_id)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s26_done)))
  )

  (:durative-action step27
    :parameters (?s - step_id)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s27_done)))
  )

  (:durative-action step28
    :parameters (?s - step_id)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s9_done)) (at start (s26_done)) (at start (s33_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s28_done)))
  )

  (:durative-action step29
    :parameters (?s - step_id)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s29_done)))
  )

  (:durative-action step30
    :parameters (?s - step_id)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s30_done)))
  )

  (:durative-action step31
    :parameters (?s - step_id)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s31_done)))
  )

  (:durative-action step32
    :parameters (?s - step_id)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s29_done)) (at start (s43_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s32_done)))
  )

  (:durative-action step33
    :parameters (?s - step_id)
    :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s33_done)))
  )

  (:durative-action step34
    :parameters (?s - step_id)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s18_done)) (at start (s32_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s34_done)))
  )

  (:durative-action step35
    :parameters (?s - step_id)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)) (at start (s33_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s35_done)))
  )

  (:durative-action step36
    :parameters (?s - step_id)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s36_done)))
  )

  (:durative-action step37
    :parameters (?s - step_id)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s47_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s37_done)))
  )

  (:durative-action step38
    :parameters (?s - step_id)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)) (at start (s30_done)) (at start (s44_done)) (at start (s47_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s38_done)))
  )

  (:durative-action step39
    :parameters (?s - step_id)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)) (at start (s34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s39_done)))
  )

  (:durative-action step40
    :parameters (?s - step_id)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s40_done)))
  )

  (:durative-action step41
    :parameters (?s - step_id)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s41_done)))
  )

  (:durative-action step42
    :parameters (?s - step_id)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s14_done)) (at start (s28_done)) (at start (s36_done)) (at start (s40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s42_done)))
  )

  (:durative-action step43
    :parameters (?s - step_id)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s43_done)))
  )

  (:durative-action step44
    :parameters (?s - step_id)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s44_done)))
  )

  (:durative-action step45
    :parameters (?s - step_id)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s16_done)) (at start (s38_done)) (at start (s41_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s45_done)))
  )

  (:durative-action step46
    :parameters (?s - step_id)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s46_done)))
  )

  (:durative-action step47
    :parameters (?s - step_id)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s47_done)))
  )

  (:durative-action step48
    :parameters (?s - step_id)
    :duration (= ?duration 15)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (s48_done)))
  )

  (:durative-action step49
    :parameters (?s - step_id)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s9_done)) (at start (s14_done)) (at start (s25_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s49_done)))
  )

  (:durative-action step50
    :parameters (?s - step_id)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (s50_done)))
  )
)