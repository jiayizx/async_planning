(define (domain rat_care)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (is_s1 ?s - step) (is_s2 ?s - step) (is_s3 ?s - step) (is_s4 ?s - step) (is_s5 ?s - step)
    (is_s6 ?s - step) (is_s7 ?s - step) (is_s8 ?s - step) (is_s9 ?s - step) (is_s10 ?s - step)
    (is_s11 ?s - step) (is_s12 ?s - step) (is_s13 ?s - step) (is_s14 ?s - step) (is_s15 ?s - step)
    (is_s16 ?s - step) (is_s17 ?s - step) (is_s18 ?s - step) (is_s19 ?s - step) (is_s20 ?s - step)
    (is_s21 ?s - step) (is_s22 ?s - step) (is_s23 ?s - step) (is_s24 ?s - step) (is_s25 ?s - step)
    (is_s26 ?s - step) (is_s27 ?s - step) (is_s28 ?s - step) (is_s29 ?s - step) (is_s30 ?s - step)
    (is_s31 ?s - step) (is_s32 ?s - step) (is_s33 ?s - step) (is_s34 ?s - step) (is_s35 ?s - step)
    (is_s36 ?s - step) (is_s37 ?s - step) (is_s38 ?s - step) (is_s39 ?s - step) (is_s40 ?s - step)
    (is_s41 ?s - step) (is_s42 ?s - step) (is_s43 ?s - step) (is_s44 ?s - step) (is_s45 ?s - step)
    (is_s46 ?s - step) (is_s47 ?s - step) (is_s48 ?s - step) (is_s49 ?s - step) (is_s50 ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (s31_done) (s32_done) (s33_done) (s34_done) (s35_done) (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
    (s41_done) (s42_done) (s43_done) (s44_done) (s45_done) (s46_done) (s47_done) (s48_done) (s49_done) (s50_done)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (is_s1 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_s2 ?s)) (at start (s22_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_s3 ?s)) (at start (s10_done)) (at start (s12_done)) (at start (s19_done)) (at start (s28_done)) (at start (s47_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_s4 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_s5 ?s)) (at start (s4_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_s6 ?s)) (at start (s28_done)) (at start (s40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_s7 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_s8 ?s)) (at start (s28_done)) (at start (s40_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_s9 ?s)) (at start (s7_done)) (at start (s33_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_s10 ?s)) (at start (s24_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_s11 ?s)) (at start (s22_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_s12 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_s13 ?s)) (at start (s18_done)) (at start (s25_done)) (at start (s44_done)) (at start (s46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (is_s14 ?s)) (at start (s23_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_s15 ?s)) (at start (s1_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done)))
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_s16 ?s)) (at start (s28_done)) (at start (s32_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done)))
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_s17 ?s)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done)))
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_s18 ?s)) (at start (s14_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done)))
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_s19 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done)))
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_s20 ?s)) (at start (s30_done)) (at start (s40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done)))
  )

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_s21 ?s)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done)))
  )

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_s22 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done)))
  )

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_s23 ?s)) (at start (s5_done)) (at start (s12_done)) (at start (s16_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done)))
  )

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (is_s24 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done)))
  )

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_s25 ?s)) (at start (s29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done)))
  )

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_s26 ?s)) (at start (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done)))
  )

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_s27 ?s)) (at start (s30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done)))
  )

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (is_s28 ?s)) (at start (s4_done)) (at start (s21_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done)))
  )

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (is_s29 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done)))
  )

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_s30 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done)))
  )

  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (is_s31 ?s)) (at start (s39_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_done)))
  )

  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_s32 ?s)) (at start (s29_done)) (at start (s49_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_done)))
  )

  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_s33 ?s)) (at start (s31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_done)))
  )

  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_s34 ?s)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_done)))
  )

  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_s35 ?s)) (at start (s32_done)) (at start (s34_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_done)))
  )

  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (is_s36 ?s)) (at start (s34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_done)))
  )

  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_s37 ?s)) (at start (s1_done)) (at start (s29_done)) (at start (s45_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_done)))
  )

  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (is_s38 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_done)))
  )

  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (is_s39 ?s)) (at start (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_done)))
  )

  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (is_s40 ?s)) (at start (s22_done)) (at start (s30_done)) (at start (s32_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_done)))
  )

  (:durative-action do_step41
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (is_s41 ?s)) (at start (s13_done)) (at start (s25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_done)))
  )

  (:durative-action do_step42
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_s42 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_done)))
  )

  (:durative-action do_step43
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_s43 ?s)) (at start (s5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_done)))
  )

  (:durative-action do_step44
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_s44 ?s)) (at start (s5_done)) (at start (s47_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_done)))
  )

  (:durative-action do_step45
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (is_s45 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_done)))
  )

  (:durative-action do_step46
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_s46 ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_done)))
  )

  (:durative-action do_step47
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (is_s47 ?s)) (at start (s2_done)) (at start (s37_done)) (at start (s43_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_done)))
  )

  (:durative-action do_step48
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_s48 ?s)) (at start (s21_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_done)))
  )

  (:durative-action do_step49
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (is_s49 ?s)) (at start (s12_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_done)))
  )

  (:durative-action do_step50
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (is_s50 ?s)) (at start (s2_done)) (at start (s7_done)) (at start (s38_done)) (at start (s42_done)) (at start (s45_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_done)))
  )
)