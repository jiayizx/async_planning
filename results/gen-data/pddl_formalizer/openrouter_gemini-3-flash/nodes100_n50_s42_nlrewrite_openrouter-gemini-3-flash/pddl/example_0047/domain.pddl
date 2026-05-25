(define (domain macadamia_roasting)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step) (step_done ?s - step)
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
    (is_s51 ?s - step) (is_s52 ?s - step) (is_s53 ?s - step) (is_s54 ?s - step) (is_s55 ?s - step)
    (is_s56 ?s - step) (is_s57 ?s - step) (is_s58 ?s - step) (is_s59 ?s - step) (is_s60 ?s - step)
    (is_s61 ?s - step) (is_s62 ?s - step) (is_s63 ?s - step) (is_s64 ?s - step) (is_s65 ?s - step)
    (is_s66 ?s - step) (is_s67 ?s - step) (is_s68 ?s - step) (is_s69 ?s - step) (is_s70 ?s - step)
    (is_s71 ?s - step) (is_s72 ?s - step) (is_s73 ?s - step) (is_s74 ?s - step) (is_s75 ?s - step)
    (is_s76 ?s - step) (is_s77 ?s - step) (is_s78 ?s - step) (is_s79 ?s - step) (is_s80 ?s - step)
    (is_s81 ?s - step) (is_s82 ?s - step) (is_s83 ?s - step) (is_s84 ?s - step) (is_s85 ?s - step)
    (is_s86 ?s - step) (is_s87 ?s - step) (is_s88 ?s - step) (is_s89 ?s - step) (is_s90 ?s - step)
    (is_s91 ?s - step) (is_s92 ?s - step) (is_s93 ?s - step) (is_s94 ?s - step) (is_s95 ?s - step)
    (is_s96 ?s - step) (is_s97 ?s - step) (is_s98 ?s - step) (is_s99 ?s - step) (is_s100 ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (s31_done) (s32_done) (s33_done) (s34_done) (s35_done) (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
    (s41_done) (s42_done) (s43_done) (s44_done) (s45_done) (s46_done) (s47_done) (s48_done) (s49_done) (s50_done)
    (s51_done) (s52_done) (s53_done) (s54_done) (s55_done) (s56_done) (s57_done) (s58_done) (s59_done) (s60_done)
    (s61_done) (s62_done) (s63_done) (s64_done) (s65_done) (s66_done) (s67_done) (s68_done) (s69_done) (s70_done)
    (s71_done) (s72_done) (s73_done) (s74_done) (s75_done) (s76_done) (s77_done) (s78_done) (s79_done) (s80_done)
    (s81_done) (s82_done) (s83_done) (s84_done) (s85_done) (s86_done) (s87_done) (s88_done) (s89_done) (s90_done)
    (s91_done) (s92_done) (s93_done) (s94_done) (s95_done) (s96_done) (s97_done) (s98_done) (s99_done) (s100_done)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s1 ?s)) (at start (step_pending ?s)) (at start (s9_done)) (at start (s48_done)) (at start (s98_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s2 ?s)) (at start (step_pending ?s)) (at start (s35_done)) (at start (s48_done)) (at start (s73_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_s3 ?s)) (at start (step_pending ?s)) (at start (s35_done)) (at start (s45_done)) (at start (s66_done)) (at start (s85_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s4 ?s)) (at start (step_pending ?s)) (at start (s3_done)) (at start (s27_done)) (at start (s36_done)) (at start (s45_done)) (at start (s72_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (is_s5 ?s)) (at start (step_pending ?s)) (at start (s55_done)) (at start (s86_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s6 ?s)) (at start (step_pending ?s)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s7 ?s)) (at start (step_pending ?s)) (at start (s11_done)) (at start (s17_done)) (at start (s21_done)) (at start (s86_done)) (at start (s96_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s8 ?s)) (at start (step_pending ?s)) (at start (s3_done)) (at start (s75_done)) (at start (s79_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s9 ?s)) (at start (step_pending ?s)) (at start (s20_done)) (at start (s71_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s10 ?s)) (at start (step_pending ?s)) (at start (s36_done)) (at start (s86_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_s11 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_s12 ?s)) (at start (step_pending ?s)) (at start (s35_done)) (at start (s45_done)) (at start (s56_done)) (at start (s63_done)) (at start (s82_done)) (at start (s93_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (is_s13 ?s)) (at start (step_pending ?s)) (at start (s88_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_s14 ?s)) (at start (step_pending ?s)) (at start (s63_done)) (at start (s96_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s15 ?s)) (at start (step_pending ?s)) (at start (s53_done)) (at start (s56_done)) (at start (s58_done)) (at start (s62_done)) (at start (s73_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s16 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_s17 ?s)) (at start (step_pending ?s)) (at start (s72_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s18 ?s)) (at start (step_pending ?s)) (at start (s5_done)) (at start (s76_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s19 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_s20 ?s)) (at start (step_pending ?s)) (at start (s61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_s21 ?s)) (at start (step_pending ?s)) (at start (s35_done)) (at start (s48_done)) (at start (s71_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s22 ?s)) (at start (step_pending ?s)) (at start (s27_done)) (at start (s41_done)) (at start (s53_done)) (at start (s84_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done))))

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_s23 ?s)) (at start (step_pending ?s)) (at start (s13_done)) (at start (s75_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (is_s24 ?s)) (at start (step_pending ?s)) (at start (s8_done)) (at start (s44_done)) (at start (s80_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s25 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s26 ?s)) (at start (step_pending ?s)) (at start (s46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s27 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s28 ?s)) (at start (step_pending ?s)) (at start (s1_done)) (at start (s17_done)) (at start (s21_done)) (at start (s42_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_s29 ?s)) (at start (step_pending ?s)) (at start (s12_done)) (at start (s58_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s30 ?s)) (at start (step_pending ?s)) (at start (s15_done)) (at start (s31_done)) (at start (s53_done)) (at start (s61_done)) (at start (s68_done)) (at start (s80_done)) (at start (s84_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done))))

  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s31 ?s)) (at start (step_pending ?s)) (at start (s11_done)) (at start (s24_done)) (at start (s42_done)) (at start (s57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_done))))

  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_s32 ?s)) (at start (step_pending ?s)) (at start (s25_done)) (at start (s55_done)) (at start (s92_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_done))))

  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s33 ?s)) (at start (step_pending ?s)) (at start (s8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_done))))

  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s34 ?s)) (at start (step_pending ?s)) (at start (s23_done)) (at start (s32_done)) (at start (s39_done)) (at start (s46_done)) (at start (s78_done)) (at start (s94_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_done))))

  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s35 ?s)) (at start (step_pending ?s)) (at start (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_done))))

  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_s36 ?s)) (at start (step_pending ?s)) (at start (s12_done)) (at start (s41_done)) (at start (s56_done)) (at start (s61_done)) (at start (s94_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_done))))

  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s37 ?s)) (at start (step_pending ?s)) (at start (s18_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_done))))

  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s38 ?s)) (at start (step_pending ?s)) (at start (s9_done)) (at start (s71_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_done))))

  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_s39 ?s)) (at start (step_pending ?s)) (at start (s79_done)) (at start (s88_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_done))))

  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s40 ?s)) (at start (step_pending ?s)) (at start (s7_done)) (at start (s17_done)) (at start (s56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_done))))

  (:durative-action do_step41
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s41 ?s)) (at start (step_pending ?s)) (at start (s54_done)) (at start (s96_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_done))))

  (:durative-action do_step42
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s42 ?s)) (at start (step_pending ?s)) (at start (s45_done)) (at start (s49_done)) (at start (s85_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_done))))

  (:durative-action do_step43
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (is_s43 ?s)) (at start (step_pending ?s)) (at start (s76_done)) (at start (s83_done)) (at start (s92_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_done))))

  (:durative-action do_step44
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s44 ?s)) (at start (step_pending ?s)) (at start (s14_done)) (at start (s63_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_done))))

  (:durative-action do_step45
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s45 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_done))))

  (:durative-action do_step46
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s46 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_done))))

  (:durative-action do_step47
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s47 ?s)) (at start (step_pending ?s)) (at start (s55_done)) (at start (s84_done)) (at start (s93_done)) (at start (s94_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_done))))

  (:durative-action do_step48
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s48 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_done))))

  (:durative-action do_step49
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s49 ?s)) (at start (step_pending ?s)) (at start (s38_done)) (at start (s45_done)) (at start (s51_done)) (at start (s52_done)) (at start (s54_done)) (at start (s62_done)) (at start (s86_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_done))))

  (:durative-action do_step50
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (is_s50 ?s)) (at start (step_pending ?s)) (at start (s16_done)) (at start (s32_done)) (at start (s41_done)) (at start (s74_done)) (at start (s85_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_done))))

  (:durative-action do_step51
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (is_s51 ?s)) (at start (step_pending ?s)) (at start (s19_done)) (at start (s38_done)) (at start (s39_done)) (at start (s57_done)) (at start (s94_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s51_done))))

  (:durative-action do_step52
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s52 ?s)) (at start (step_pending ?s)) (at start (s2_done)) (at start (s4_done)) (at start (s23_done)) (at start (s75_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s52_done))))

  (:durative-action do_step53
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s53 ?s)) (at start (step_pending ?s)) (at start (s41_done)) (at start (s71_done)) (at start (s90_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s53_done))))

  (:durative-action do_step54
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s54 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s54_done))))

  (:durative-action do_step55
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s55 ?s)) (at start (step_pending ?s)) (at start (s11_done)) (at start (s63_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s55_done))))

  (:durative-action do_step56
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_s56 ?s)) (at start (step_pending ?s)) (at start (s17_done)) (at start (s83_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s56_done))))

  (:durative-action do_step57
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_s57 ?s)) (at start (step_pending ?s)) (at start (s58_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s57_done))))

  (:durative-action do_step58
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s58 ?s)) (at start (step_pending ?s)) (at start (s83_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s58_done))))

  (:durative-action do_step59
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s59 ?s)) (at start (step_pending ?s)) (at start (s17_done)) (at start (s41_done)) (at start (s90_done)) (at start (s92_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s59_done))))

  (:durative-action do_step60
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s60 ?s)) (at start (step_pending ?s)) (at start (s39_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s60_done))))

  (:durative-action do_step61
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s61 ?s)) (at start (step_pending ?s)) (at start (s5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s61_done))))

  (:durative-action do_step62
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (is_s62 ?s)) (at start (step_pending ?s)) (at start (s13_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s62_done))))

  (:durative-action do_step63
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (is_s63 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s63_done))))

  (:durative-action do_step64
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s64 ?s)) (at start (step_pending ?s)) (at start (s85_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s64_done))))

  (:durative-action do_step65
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s65 ?s)) (at start (step_pending ?s)) (at start (s35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s65_done))))

  (:durative-action do_step66
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s66 ?s)) (at start (step_pending ?s)) (at start (s39_done)) (at start (s62_done)) (at start (s72_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s66_done))))

  (:durative-action do_step67
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (is_s67 ?s)) (at start (step_pending ?s)) (at start (s62_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s67_done))))

  (:durative-action do_step68
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s68 ?s)) (at start (step_pending ?s)) (at start (s49_done)) (at start (s53_done)) (at start (s60_done)) (at start (s63_done)) (at start (s71_done)) (at start (s75_done)) (at start (s87_done)) (at start (s91_done)) (at start (s92_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s68_done))))

  (:durative-action do_step69
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s69 ?s)) (at start (step_pending ?s)) (at start (s43_done)) (at start (s45_done)) (at start (s96_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s69_done))))

  (:durative-action do_step70
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s70 ?s)) (at start (step_pending ?s)) (at start (s79_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s70_done))))

  (:durative-action do_step71
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s71 ?s)) (at start (step_pending ?s)) (at start (s5_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s71_done))))

  (:durative-action do_step72
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s72 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s72_done))))

  (:durative-action do_step73
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s73 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s73_done))))

  (:durative-action do_step74
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s74 ?s)) (at start (step_pending ?s)) (at start (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s74_done))))

  (:durative-action do_step75
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s75 ?s)) (at start (step_pending ?s)) (at start (s86_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s75_done))))

  (:durative-action do_step76
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s76 ?s)) (at start (step_pending ?s)) (at start (s74_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s76_done))))

  (:durative-action do_step77
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s77 ?s)) (at start (step_pending ?s)) (at start (s3_done)) (at start (s57_done)) (at start (s66_done)) (at start (s68_done)) (at start (s88_done)) (at start (s91_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s77_done))))

  (:durative-action do_step78
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s78 ?s)) (at start (step_pending ?s)) (at start (s5_done)) (at start (s33_done)) (at start (s56_done)) (at start (s82_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s78_done))))

  (:durative-action do_step79
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (is_s79 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s79_done))))

  (:durative-action do_step80
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (is_s80 ?s)) (at start (step_pending ?s)) (at start (s8_done)) (at start (s92_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s80_done))))

  (:durative-action do_step81
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s81 ?s)) (at start (step_pending ?s)) (at start (s34_done)) (at start (s36_done)) (at start (s38_done)) (at start (s77_done)) (at start (s94_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s81_done))))

  (:durative-action do_step82
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s82 ?s)) (at start (step_pending ?s)) (at start (s48_done)) (at start (s98_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s82_done))))

  (:durative-action do_step83
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_s83 ?s)) (at start (step_pending ?s)) (at start (s3_done)) (at start (s25_done)) (at start (s93_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s83_done))))

  (:durative-action do_step84
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s84 ?s)) (at start (step_pending ?s)) (at start (s6_done)) (at start (s11_done)) (at start (s63_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s84_done))))

  (:durative-action do_step85
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s85 ?s)) (at start (step_pending ?s)) (at start (s60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s85_done))))

  (:durative-action do_step86
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_s86 ?s)) (at start (step_pending ?s)) (at start (s26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s86_done))))

  (:durative-action do_step87
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s87 ?s)) (at start (step_pending ?s)) (at start (s14_done)) (at start (s62_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s87_done))))

  (:durative-action do_step88
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s88 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s88_done))))

  (:durative-action do_step89
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s89 ?s)) (at start (step_pending ?s)) (at start (s25_done)) (at start (s51_done)) (at start (s63_done)) (at start (s86_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s89_done))))

  (:durative-action do_step90
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s90 ?s)) (at start (step_pending ?s)) (at start (s51_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s90_done))))

  (:durative-action do_step91
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_s91 ?s)) (at start (step_pending ?s)) (at start (s5_done)) (at start (s33_done)) (at start (s89_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s91_done))))

  (:durative-action do_step92
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s92 ?s)) (at start (step_pending ?s)) (at start (s13_done)) (at start (s75_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s92_done))))

  (:durative-action do_step93
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (is_s93 ?s)) (at start (step_pending ?s)) (at start (s66_done)) (at start (s79_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s93_done))))

  (:durative-action do_step94
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s94 ?s)) (at start (step_pending ?s)) (at start (s12_done)) (at start (s45_done)) (at start (s60_done)) (at start (s83_done)) (at start (s86_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s94_done))))

  (:durative-action do_step95
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s95 ?s)) (at start (step_pending ?s)) (at start (s37_done)) (at start (s44_done)) (at start (s46_done)) (at start (s57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s95_done))))

  (:durative-action do_step96
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s96 ?s)) (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s96_done))))

  (:durative-action do_step97
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (is_s97 ?s)) (at start (step_pending ?s)) (at start (s2_done)) (at start (s5_done)) (at start (s9_done)) (at start (s42_done)) (at start (s65_done)) (at start (s78_done)) (at start (s83_done)) (at start (s100_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s97_done))))

  (:durative-action do_step98
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (is_s98 ?s)) (at start (step_pending ?s)) (at start (s41_done)) (at start (s83_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s98_done))))

  (:durative-action do_step99
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (is_s99 ?s)) (at start (step_pending ?s)) (at start (s18_done)) (at start (s22_done)) (at start (s25_done)) (at start (s26_done)) (at start (s33_done)) (at start (s34_done)) (at start (s37_done)) (at start (s41_done)) (at start (s49_done)) (at start (s53_done)) (at start (s63_done)) (at start (s65_done)) (at start (s89_done)) (at start (s90_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s99_done))))

  (:durative-action do_step100
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (is_s100 ?s)) (at start (step_pending ?s)) (at start (s39_done)) (at start (s40_done)) (at start (s45_done)) (at start (s66_done)) (at start (s76_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s100_done))))
)