(define (domain licorice_root)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending step)
    (step_done step)
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
    (s51_done)
    (s52_done)
    (s53_done)
    (s54_done)
    (s55_done)
    (s56_done)
    (s57_done)
    (s58_done)
    (s59_done)
    (s60_done)
    (s61_done)
    (s62_done)
    (s63_done)
    (s64_done)
    (s65_done)
    (s66_done)
    (s67_done)
    (s68_done)
    (s69_done)
    (s70_done))
  (:durative-action do_step1 (?s step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (s49_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))
  (:durative-action do_step2 (?s step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))
  (:durative-action do_step3 (?s step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s51_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))
  (:durative-action do_step4 (?s step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))
  (:durative-action do_step5 (?s step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (s43_done)) (at start (s49_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))
  (:durative-action do_step6 (?s step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (s62_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))
  (:durative-action do_step7 (?s step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))
  (:durative-action do_step8 (?s step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s18_done)) (at start (s22_done)) (at start (s54_done)) (at start (s59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))
  (:durative-action do_step9 (?s step)
    :duration 2700
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s29_done)) (at start (s56_done)) (at start (s58_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))
  (:durative-action do_step10 (?s step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (s49_done)) (at start (s53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))
  (:durative-action do_step11 (?s step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s18_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))
  (:durative-action do_step12 (?s step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))
  (:durative-action do_step13 (?s step)
    :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))
  (:durative-action do_step14 (?s step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s47_done)) (at start (s61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))
  (:durative-action do_step15 (?s step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))
  (:durative-action do_step16 (?s step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s10_done)) (at start (s13_done)) (at start (s52_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))
  (:durative-action do_step17 (?s step)
    :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (s35_done)) (at start (s47_done)) (at start (s53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))
  (:durative-action do_step18 (?s step)
    :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))
  (:durative-action do_step19 (?s step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s4_done)) (at start (s55_done)) (at start (s57_done)) (at start (s60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))
  (:durative-action do_step20 (?s step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s33_done)) (at start (s35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))
  (:durative-action do_step21 (?s step)
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (s8_done)) (at start (s40_done)) (at start (s69_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))
  (:durative-action do_step22 (?s step)
    :duration 40
    :condition (and (at start (step_pending ?s)) (at start (s36_done)) (at start (s53_done)) (at start (s68_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done))))
  (:durative-action do_step23 (?s step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))
  (:durative-action do_step24 (?s step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (s2_done)) (at start (s57_done)) (at start (s60_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))
  (:durative-action do_step25 (?s step)
    :duration 10
    :condition (and (at start (step_pending ?s)) (at start (s55_done)) (at start (s68_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))
  (:durative-action do_step26 (?s step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s4_done)) (at start (s17_done)) (at start (s23_done)) (at start (s36_done)) (at start (s43_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))
  (:durative-action do_step27 (?s step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s12_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))
  (:durative-action do_step28 (?s step)
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))
  (:durative-action do_step29 (?s step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (s15_done)) (at start (s42_done)) (at start (s55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))
  (:durative-action do_step30 (?s step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s7_done)) (at start (s9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done))))
  (:durative-action do_step31 (?s step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_done))))
  (:durative-action do_step32 (?s step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (s40_done)) (at start (s54_done)) (at start (s65_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_done))))
  (:durative-action do_step33 (?s step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_done))))
  (:durative-action do_step34 (?s step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_done))))
  (:durative-action do_step35 (?s step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_done))))
  (:durative-action do_step36 (?s step)
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (s33_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_done))))
  (:durative-action do_step37 (?s step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s15_done)) (at start (s69_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_done))))
  (:durative-action do_step38 (?s step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s42_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_done))))
  (:durative-action do_step39 (?s step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s45_done)) (at start (s55_done)) (at start (s59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_done))))
  (:durative-action do_step40 (?s step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (s7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_done))))
  (:durative-action do_step41 (?s step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (s15_done)) (at start (s28_done)) (at start (s42_done)) (at start (s55_done)) (at start (s65_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_done))))
  (:durative-action do_step42 (?s step)
    :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_done))))
  (:durative-action do_step43 (?s step)
    :duration 172800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_done))))
  (:durative-action do_step44 (?s step)
    :duration 30
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_done))))
  (:durative-action do_step45 (?s step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (s13_done)) (at start (s28_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_done))))
  (:durative-action do_step46 (?s step)
    :duration 30
    :condition (and (at start (step_pending ?s)) (at start (s29_done)) (at start (s66_done)) (at start (s68_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_done))))
  (:durative-action do_step47 (?s step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_done))))
  (:durative-action do_step48 (?s step)
    :duration 15
    :condition (and (at start (step_pending ?s)) (at start (s24_done)) (at start (s28_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_done))))
  (:durative-action do_step49 (?s step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (s23_done)) (at start (s59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_done))))
  (:durative-action do_step50 (?s step)
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s14_done)) (at start (s17_done)) (at start (s25_done)) (at start (s33_done)) (at start (s54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_done))))
  (:durative-action do_step51 (?s step)
    :duration 900
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s51_done))))
  (:durative-action do_step52 (?s step)
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s11_done)) (at start (s23_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s52_done))))
  (:durative-action do_step53 (?s step)
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (s47_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s53_done))))
  (:durative-action do_step54 (?s step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s54_done))))
  (:durative-action do_step55 (?s step)
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s55_done))))
  (:durative-action do_step56 (?s step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s47_done)) (at start (s53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s56_done))))
  (:durative-action do_step57 (?s step)
    :duration 15
    :condition (and (at start (step_pending ?s)) (at start (s18_done)) (at start (s50_done)) (at start (s65_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s57_done))))
  (:durative-action do_step58 (?s step)
    :duration 10
    :condition (and (at start (step_pending ?s)) (at start (s11_done)) (at start (s24_done)) (at start (s49_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s58_done))))
  (:durative-action do_step59 (?s step)
    :duration 120
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s59_done))))
  (:durative-action do_step60 (?s step)
    :duration 5
    :condition (and (at start (step_pending ?s)) (at start (s66_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s60_done))))
  (:durative-action do_step61 (?s step)
    :duration 60
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s61_done))))
  (:durative-action do_step62 (?s step)
    :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s62_done))))
  (:durative-action do_step63 (?s step)
    :duration 10
    :condition (and (at start (step_pending ?s)) (at start (s34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s63_done))))
  (:durative-action do_step64 (?s step)
    :duration 5
    :condition (and (at start (step_pending ?s)) (at start (s15_done)) (at start (s28_done)) (at start (s29_done)) (at start (s42_done)) (at start (s50_done)) (at start (s51_done)) (at start (s53_done)) (at start (s62_done)) (at start (s68_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s64_done))))
  (:durative-action do_step65 (?s step)
    :duration 5
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s5_done)) (at start (s18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s65_done))))
  (:durative-action do_step66 (?s step)
    :duration 5
    :condition (and (at start (step_pending ?s)) (at start (s29_done)) (at start (s35_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s66_done))))
  (:durative-action do_step67 (?s step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (s44_done)) (at start (s53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s67_done))))
  (:durative-action do_step68 (?s step)
    :duration 600
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s6_done)) (at start (s20_done)) (at start (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s68_done))))
  (:durative-action do_step69 (?s step)
    :duration 60
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s69_done))))
  (:durative-action do_step70 (?s step)
    :duration 60
    :condition (and (at start (step_pending ?s)) (at start (s8_done)) (at start (s11_done)) (at start (s43_done)) (at start (s49_done)) (at start (s66_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s70_done))))
)