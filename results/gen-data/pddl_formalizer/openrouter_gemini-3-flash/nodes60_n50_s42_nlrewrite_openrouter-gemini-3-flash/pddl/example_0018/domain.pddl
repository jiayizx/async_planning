(define (domain squirt_gun_painting)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (s31_done) (s32_done) (s33_done) (s34_done) (s35_done) (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
    (s41_done) (s42_done) (s43_done) (s44_done) (s45_done) (s46_done) (s47_done) (s48_done) (s49_done) (s50_done)
    (s51_done) (s52_done) (s53_done) (s54_done) (s55_done) (s56_done) (s57_done) (s58_done) (s59_done) (s60_done)
    (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step) (is_step4 ?s - step) (is_step5 ?s - step)
    (is_step6 ?s - step) (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step) (is_step10 ?s - step)
    (is_step11 ?s - step) (is_step12 ?s - step) (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
    (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step) (is_step19 ?s - step) (is_step20 ?s - step)
    (is_step21 ?s - step) (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step) (is_step25 ?s - step)
    (is_step26 ?s - step) (is_step27 ?s - step) (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
    (is_step31 ?s - step) (is_step32 ?s - step) (is_step33 ?s - step) (is_step34 ?s - step) (is_step35 ?s - step)
    (is_step36 ?s - step) (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step) (is_step40 ?s - step)
    (is_step41 ?s - step) (is_step42 ?s - step) (is_step43 ?s - step) (is_step44 ?s - step) (is_step45 ?s - step)
    (is_step46 ?s - step) (is_step47 ?s - step) (is_step48 ?s - step) (is_step49 ?s - step) (is_step50 ?s - step)
    (is_step51 ?s - step) (is_step52 ?s - step) (is_step53 ?s - step) (is_step54 ?s - step) (is_step55 ?s - step)
    (is_step56 ?s - step) (is_step57 ?s - step) (is_step58 ?s - step) (is_step59 ?s - step) (is_step60 ?s - step)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step1 ?s)) (at start (step_pending ?s)) (at start (s11_done)) (at start (s25_done)) (at start (s38_done)) (at start (s60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step2 ?s)) (at start (step_pending ?s)) (at start (s9_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step3 ?s)) (at start (step_pending ?s)) (at start (s39_done)) (at start (s54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step4 ?s)) (at start (step_pending ?s)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step5 ?s)) (at start (step_pending ?s)) (at start (s55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step6 ?s)) (at start (step_pending ?s)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step7 ?s)) (at start (step_pending ?s)) (at start (s5_done)) (at start (s60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step8 ?s)) (at start (step_pending ?s)) (at start (s30_done)) (at start (s52_done)) (at start (s56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step9 ?s)) (at start (step_pending ?s)) (at start (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step10 ?s)) (at start (step_pending ?s)) (at start (s14_done)) (at start (s29_done)) (at start (s32_done)) (at start (s35_done)) (at start (s60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step11 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step12 ?s)) (at start (step_pending ?s)) (at start (s35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step13 ?s)) (at start (step_pending ?s)) (at start (s30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step14 ?s)) (at start (step_pending ?s)) (at start (s31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step15 ?s)) (at start (step_pending ?s)) (at start (s11_done)) (at start (s12_done)) (at start (s40_done)) (at start (s48_done)) (at start (s56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done)))
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step16 ?s)) (at start (step_pending ?s)) (at start (s27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done)))
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step17 ?s)) (at start (step_pending ?s)) (at start (s38_done)) (at start (s53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done)))
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step18 ?s)) (at start (step_pending ?s)) (at start (s36_done)) (at start (s38_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done)))
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step19 ?s)) (at start (step_pending ?s)) (at start (s4_done)) (at start (s51_done)) (at start (s56_done)) (at start (s58_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done)))
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step20 ?s)) (at start (step_pending ?s)) (at start (s35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done)))
  )

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step21 ?s)) (at start (step_pending ?s)) (at start (s31_done)) (at start (s47_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done)))
  )

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step22 ?s)) (at start (step_pending ?s)) (at start (s55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done)))
  )

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step23 ?s)) (at start (step_pending ?s)) (at start (s56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done)))
  )

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step24 ?s)) (at start (step_pending ?s)) (at start (s28_done)) (at start (s40_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done)))
  )

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step25 ?s)) (at start (step_pending ?s)) (at start (s29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done)))
  )

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step26 ?s)) (at start (step_pending ?s)) (at start (s25_done)) (at start (s42_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done)))
  )

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step27 ?s)) (at start (step_pending ?s)) (at start (s44_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done)))
  )

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (is_step28 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done)))
  )

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (is_step29 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done)))
  )

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step30 ?s)) (at start (step_pending ?s)) (at start (s32_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done)))
  )

  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (is_step31 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_done)))
  )

  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step32 ?s)) (at start (step_pending ?s)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_done)))
  )

  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step33 ?s)) (at start (step_pending ?s)) (at start (s47_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_done)))
  )

  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step34 ?s)) (at start (step_pending ?s)) (at start (s6_done)) (at start (s19_done)) (at start (s32_done)) (at start (s42_done)) (at start (s59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_done)))
  )

  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step35 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_done)))
  )

  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step36 ?s)) (at start (step_pending ?s)) (at start (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_done)))
  )

  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step37 ?s)) (at start (step_pending ?s)) (at start (s6_done)) (at start (s30_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_done)))
  )

  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (is_step38 ?s)) (at start (step_pending ?s)) (at start (s20_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_done)))
  )

  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_step39 ?s)) (at start (step_pending ?s)) (at start (s50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_done)))
  )

  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step40 ?s)) (at start (step_pending ?s)) (at start (s31_done)) (at start (s51_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_done)))
  )

  (:durative-action do_step41
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step41 ?s)) (at start (step_pending ?s)) (at start (s35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_done)))
  )

  (:durative-action do_step42
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_step42 ?s)) (at start (step_pending ?s)) (at start (s21_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_done)))
  )

  (:durative-action do_step43
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step43 ?s)) (at start (step_pending ?s)) (at start (s50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_done)))
  )

  (:durative-action do_step44
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step44 ?s)) (at start (step_pending ?s)) (at start (s47_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_done)))
  )

  (:durative-action do_step45
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step45 ?s)) (at start (step_pending ?s)) (at start (s4_done)) (at start (s60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_done)))
  )

  (:durative-action do_step46
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step46 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_done)))
  )

  (:durative-action do_step47
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step47 ?s)) (at start (step_pending ?s)) (at start (s31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_done)))
  )

  (:durative-action do_step48
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_step48 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_done)))
  )

  (:durative-action do_step49
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (is_step49 ?s)) (at start (step_pending ?s)) (at start (s3_done)) (at start (s16_done)) (at start (s31_done)) (at start (s39_done)) (at start (s41_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_done)))
  )

  (:durative-action do_step50
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step50 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_done)))
  )

  (:durative-action do_step51
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step51 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s51_done)))
  )

  (:durative-action do_step52
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step52 ?s)) (at start (step_pending ?s)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s52_done)))
  )

  (:durative-action do_step53
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step53 ?s)) (at start (step_pending ?s)) (at start (s4_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s53_done)))
  )

  (:durative-action do_step54
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step54 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s54_done)))
  )

  (:durative-action do_step55
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step55 ?s)) (at start (step_pending ?s)) (at start (s24_done)) (at start (s32_done)) (at start (s47_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s55_done)))
  )

  (:durative-action do_step56
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step56 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s56_done)))
  )

  (:durative-action do_step57
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_step57 ?s)) (at start (step_pending ?s)) (at start (s8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s57_done)))
  )

  (:durative-action do_step58
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_step58 ?s)) (at start (step_pending ?s)) (at start (s12_done)) (at start (s16_done)) (at start (s46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s58_done)))
  )

  (:durative-action do_step59
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_step59 ?s)) (at start (step_pending ?s)) (at start (s50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s59_done)))
  )

  (:durative-action do_step60
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_step60 ?s)) (at start (step_pending ?s)) (at start (s51_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s60_done)))
  )
)