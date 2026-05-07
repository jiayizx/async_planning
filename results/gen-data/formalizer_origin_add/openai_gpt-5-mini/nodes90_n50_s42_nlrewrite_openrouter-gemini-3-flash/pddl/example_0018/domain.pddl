(define (domain buttercream-fondant)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_finished) (s2_finished) (s3_finished) (s4_finished) (s5_finished)
    (s6_finished) (s7_finished) (s8_finished) (s9_finished) (s10_finished)
    (s11_finished) (s12_finished) (s13_finished) (s14_finished) (s15_finished)
    (s16_finished) (s17_finished) (s18_finished) (s19_finished) (s20_finished)
    (s21_finished) (s22_finished) (s23_finished) (s24_finished) (s25_finished)
    (s26_finished) (s27_finished) (s28_finished) (s29_finished) (s30_finished)
    (s31_finished) (s32_finished) (s33_finished) (s34_finished) (s35_finished)
    (s36_finished) (s37_finished) (s38_finished) (s39_finished) (s40_finished)
    (s41_finished) (s42_finished) (s43_finished) (s44_finished) (s45_finished)
    (s46_finished) (s47_finished) (s48_finished) (s49_finished) (s50_finished)
    (s51_finished) (s52_finished) (s53_finished) (s54_finished) (s55_finished)
    (s56_finished) (s57_finished) (s58_finished) (s59_finished) (s60_finished)
    (s61_finished) (s62_finished) (s63_finished) (s64_finished) (s65_finished)
    (s66_finished) (s67_finished) (s68_finished) (s69_finished) (s70_finished)
    (s71_finished) (s72_finished) (s73_finished) (s74_finished) (s75_finished)
    (s76_finished) (s77_finished) (s78_finished) (s79_finished) (s80_finished)
    (s81_finished) (s82_finished) (s83_finished) (s84_finished) (s85_finished)
    (s86_finished) (s87_finished) (s88_finished) (s89_finished) (s90_finished)
  )

  ; Each durative-action matches exactly one step and has the exact duration given in the problem statement.
  ; Conditions: at start (step_pending ?s) plus at start (sX_finished) for every direct predecessor X -> this step.
  ; Effects: at start (not (step_pending ?s)), at end (step_done ?s) and a unique semantic predicate (sN_finished).

  (:durative-action do-step1 :parameters (?s - step) :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_finished))))

  (:durative-action do-step2 :parameters (?s - step) :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_finished))))

  (:durative-action do-step3 :parameters (?s - step) :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_finished))))

  (:durative-action do-step4 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s3_finished)) (at start (s17_finished)) (at start (s24_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_finished))))

  (:durative-action do-step5 :parameters (?s - step) :duration (= ?duration 30)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_finished))))

  (:durative-action do-step6 :parameters (?s - step) :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (s3_finished)) (at start (s75_finished)) (at start (s77_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_finished))))

  (:durative-action do-step7 :parameters (?s - step) :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_finished))))

  (:durative-action do-step8 :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (s39_finished)) (at start (s82_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_finished))))

  (:durative-action do-step9 :parameters (?s - step) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (s17_finished)) (at start (s43_finished)) (at start (s87_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_finished))))

  (:durative-action do-step10 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s3_finished)) (at start (s33_finished)) (at start (s44_finished)) (at start (s54_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_finished))))

  (:durative-action do-step11 :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s9_finished)) (at start (s12_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_finished))))

  (:durative-action do-step12 :parameters (?s - step) :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_finished))))

  (:durative-action do-step13 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s17_finished)) (at start (s33_finished)) (at start (s44_finished)) (at start (s65_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_finished))))

  (:durative-action do-step14 :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s22_finished)) (at start (s55_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_finished))))

  (:durative-action do-step15 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s7_finished)) (at start (s14_finished)) (at start (s31_finished)) (at start (s67_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_finished))))

  (:durative-action do-step16 :parameters (?s - step) :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s2_finished)) (at start (s73_finished)) (at start (s73_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_finished))))

  (:durative-action do-step17 :parameters (?s - step) :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_finished))))

  (:durative-action do-step18 :parameters (?s - step) :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s)) (at start (s2_finished)) (at start (s20_finished)) (at start (s23_finished)) (at start (s33_finished)) (at start (s55_finished)) (at start (s54_finished)) (at start (s85_finished)) (at start (s85_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_finished))))

  (:durative-action do-step19 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s81_finished)) (at start (s54_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_finished))))

  (:durative-action do-step20 :parameters (?s - step) :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_finished))))

  (:durative-action do-step21 :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s19_finished)) (at start (s63_finished)) (at start (s50_finished)) (at start (s77_finished)) (at start (s89_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_finished))))

  (:durative-action do-step22 :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s2_finished)) (at start (s7_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_finished))))

  (:durative-action do-step23 :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s17_finished)) (at start (s44_finished)) (at start (s58_finished)) (at start (s61_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_finished))))

  (:durative-action do-step24 :parameters (?s - step) :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (s30_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_finished))))

  (:durative-action do-step25 :parameters (?s - step) :duration (= ?duration 420)
    :condition (and (at start (step_pending ?s)) (at start (s20_finished)) (at start (s61_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_finished))))

  (:durative-action do-step26 :parameters (?s - step) :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_finished))))

  (:durative-action do-step27 :parameters (?s - step) :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (s47_finished)) (at start (s30_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_finished))))

  (:durative-action do-step28 :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s13_finished)) (at start (s33_finished)) (at start (s63_finished)) (at start (s89_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_finished))))

  (:durative-action do-step29 :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s54_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_finished))))

  (:durative-action do-step30 :parameters (?s - step) :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_finished))))

  (:durative-action do-step31 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s66_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_finished))))

  (:durative-action do-step32 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s24_finished)) (at start (s26_finished)) (at start (s38_finished)) (at start (s53_finished)) (at start (s54_finished)) (at start (s72_finished)) (at start (s90_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_finished))))

  (:durative-action do-step33 :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s5_finished)) (at start (s13_finished)) (at start (s24_finished)) (at start (s81_finished)) (at start (s90_finished)) (at start (s29_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_finished))))

  (:durative-action do-step34 :parameters (?s - step) :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (s18_finished)) (at start (s20_finished)) (at start (s43_finished)) (at start (s68_finished)) (at start (s70_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_finished))))

  (:durative-action do-step35 :parameters (?s - step) :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s5_finished)) (at start (s71_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_finished))))

  (:durative-action do-step36 :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s35_finished)) (at start (s56_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_finished))))

  (:durative-action do-step37 :parameters (?s - step) :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_finished))))

  (:durative-action do-step38 :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s13_finished)) (at start (s57_finished)) (at start (s75_finished)) (at start (s80_finished)) (at start (s65_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_finished))))

  (:durative-action do-step39 :parameters (?s - step) :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_finished))))

  (:durative-action do-step40 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s5_finished)) (at start (s8_finished)) (at start (s36_finished)) (at start (s70_finished)) (at start (s82_finished)) (at start (s90_finished)) (at start (s35_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_finished))))

  (:durative-action do-step41 :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s8_finished)) (at start (s36_finished)) (at start (s38_finished)) (at start (s70_finished)) (at start (s71_finished)) (at start (s82_finished)) (at start (s16_finished)) (at start (s80_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_finished))))

  (:durative-action do-step42 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s36_finished)) (at start (s50_finished)) (at start (s54_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_finished))))

  (:durative-action do-step43 :parameters (?s - step) :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_finished))))

  (:durative-action do-step44 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s8_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_finished))))

  (:durative-action do-step45 :parameters (?s - step) :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_finished))))

  (:durative-action do-step46 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s8_finished)) (at start (s53_finished)) (at start (s61_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_finished))))

  (:durative-action do-step47 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s43_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_finished))))

  (:durative-action do-step48 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s3_finished)) (at start (s8_finished)) (at start (s25_finished)) (at start (s26_finished)) (at start (s35_finished)) (at start (s56_finished)) (at start (s87_finished)) (at start (s89_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_finished))))

  (:durative-action do-step49 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s31_finished)) (at start (s37_finished)) (at start (s39_finished)) (at start (s56_finished)) (at start (s59_finished)) (at start (s77_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_finished))))

  (:durative-action do-step50 :parameters (?s - step) :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_finished))))

  (:durative-action do-step51 :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s82_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s51_finished))))

  (:durative-action do-step52 :parameters (?s - step) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (s35_finished)) (at start (s57_finished)) (at start (s58_finished)) (at start (s74_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s52_finished))))

  (:durative-action do-step53 :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s51_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s53_finished))))

  (:durative-action do-step54 :parameters (?s - step) :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s54_finished))))

  (:durative-action do-step55 :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s12_finished)) (at start (s27_finished)) (at start (s44_finished)) (at start (s77_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s55_finished))))

  (:durative-action do-step56 :parameters (?s - step) :duration (= ?duration 180)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s56_finished))))

  (:durative-action do-step57 :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s17_finished)) (at start (s58_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s57_finished))))

  (:durative-action do-step58 :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s5_finished)) (at start (s89_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s58_finished))))

  (:durative-action do-step59 :parameters (?s - step) :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s59_finished))))

  (:durative-action do-step60 :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s76_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s60_finished))))

  (:durative-action do-step61 :parameters (?s - step) :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s44_finished)) (at start (s89_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s61_finished))))

  (:durative-action do-step62 :parameters (?s - step) :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (s1_finished)) (at start (s12_finished)) (at start (s29_finished)) (at start (s38_finished)) (at start (s58_finished)) (at start (s3_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s62_finished))))

  (:durative-action do-step63 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s7_finished)) (at start (s43_finished)) (at start (s54_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s63_finished))))

  (:durative-action do-step64 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s78_finished)) (at start (s79_finished)) (at start (s86_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s64_finished))))

  (:durative-action do-step65 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s31_finished)) (at start (s56_finished)) (at start (s47_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s65_finished))))

  (:durative-action do-step66 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s51_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s66_finished))))

  (:durative-action do-step67 :parameters (?s - step) :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s67_finished))))

  (:durative-action do-step68 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s27_finished)) (at start (s63_finished)) (at start (s73_finished)) (at start (s33_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s68_finished))))

  (:durative-action do-step69 :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s66_finished)) (at start (s89_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s69_finished))))

  (:durative-action do-step70 :parameters (?s - step) :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s70_finished))))

  (:durative-action do-step71 :parameters (?s - step) :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s)) (at start (s82_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s71_finished))))

  (:durative-action do-step72 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s61_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s72_finished))))

  (:durative-action do-step73 :parameters (?s - step) :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s54_finished)) (at start (s85_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s73_finished))))

  (:durative-action do-step74 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s87_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s74_finished))))

  (:durative-action do-step75 :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s23_finished)) (at start (s35_finished)) (at start (s37_finished)) (at start (s42_finished)) (at start (s56_finished)) (at start (s63_finished)) (at start (s66_finished)) (at start (s77_finished)) (at start (s81_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s75_finished))))

  (:durative-action do-step76 :parameters (?s - step) :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s76_finished))))

  (:durative-action do-step77 :parameters (?s - step) :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s77_finished))))

  (:durative-action do-step78 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s22_finished)) (at start (s25_finished)) (at start (s33_finished)) (at start (s73_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s78_finished))))

  (:durative-action do-step79 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s33_finished)) (at start (s75_finished)) (at start (s81_finished)) (at start (s82_finished)) (at start (s90_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s79_finished))))

  (:durative-action do-step80 :parameters (?s - step) :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s80_finished))))

  (:durative-action do-step81 :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s7_finished)) (at start (s54_finished)) (at start (s59_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s81_finished))))

  (:durative-action do-step82 :parameters (?s - step) :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s82_finished))))

  (:durative-action do-step83 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s12_finished)) (at start (s56_finished)) (at start (s75_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s83_finished))))

  (:durative-action do-step84 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s39_finished)) (at start (s70_finished)) (at start (s89_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s84_finished))))

  (:durative-action do-step85 :parameters (?s - step) :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s85_finished))))

  (:durative-action do-step86 :parameters (?s - step) :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s59_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s86_finished))))

  (:durative-action do-step87 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s54_finished)) (at start (s56_finished)) (at start (s82_finished)) (at start (s89_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s87_finished))))

  (:durative-action do-step88 :parameters (?s - step) :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (s7_finished)) (at start (s42_finished)) (at start (s64_finished)) (at start (s36_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s88_finished))))

  (:durative-action do-step89 :parameters (?s - step) :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (s24_finished)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s89_finished))))

  (:durative-action do-step90 :parameters (?s - step) :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s90_finished))))
)
