(define (domain stir_fry_sauce)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (s1_done) (s2_done) (s3_done) (s4_done) (s5_done) (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
               (s11_done) (s12_done) (s13_done) (s14_done) (s15_done) (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
               (s21_done) (s22_done) (s23_done) (s24_done) (s25_done) (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
               (s31_done) (s32_done) (s33_done) (s34_done) (s35_done) (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
               (s41_done) (s42_done) (s43_done) (s44_done) (s45_done) (s46_done) (s47_done) (s48_done) (s49_done) (s50_done)
               (s51_done) (s52_done) (s53_done) (s54_done) (s55_done) (s56_done) (s57_done) (s58_done) (s59_done) (s60_done)
               (s61_done) (s62_done) (s63_done) (s64_done) (s65_done) (s66_done) (s67_done) (s68_done) (s69_done) (s70_done))
  (:durative-action do_step1
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s13_done)) (at start (s33_done)) (at start (s34_done)) (at start (s44_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))
  (:durative-action do_step2
    :duration 60
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))
  (:durative-action do_step3
    :duration 15
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))
  (:durative-action do_step4
    :duration 20
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s8_done)) (at start (s11_done)) (at start (s15_done)) (at start (s55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))
  (:durative-action do_step5
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s17_done)) (at start (s55_done)) (at start (s60_done)) (at start (s69_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))
  (:durative-action do_step6
    :duration 45
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))
  (:durative-action do_step7
    :duration 60
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))
  (:durative-action do_step8
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s13_done)) (at start (s36_done)) (at start (s37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))
  (:durative-action do_step9
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))
  (:durative-action do_step10
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))
  (:durative-action do_step11
    :duration 10
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))
  (:durative-action do_step12
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)) (at start (s59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))
  (:durative-action do_step13
    :duration 300
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))
  (:durative-action do_step14
    :duration 15
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))
  (:durative-action do_step15
    :duration 30
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))
  (:durative-action do_step16
    :duration 180
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s7_done)) (at start (s13_done)) (at start (s55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))
  (:durative-action do_step17
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s10_done)) (at start (s45_done)) (at start (s49_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))
  (:durative-action do_step18
    :duration 10
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))
  (:durative-action do_step19
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)) (at start (s13_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))
  (:durative-action do_step20
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s45_done)) (at start (s59_done)) (at start (s69_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))
  (:durative-action do_step21
    :duration 45
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s54_done)) (at start (s59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))
  (:durative-action do_step22
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done))))
  (:durative-action do_step23
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s17_done)) (at start (s36_done)) (at start (s44_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))
  (:durative-action do_step24
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))
  (:durative-action do_step25
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s70_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))
  (:durative-action do_step26
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s16_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))
  (:durative-action do_step27
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s20_done)) (at start (s61_done)) (at start (s66_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))
  (:durative-action do_step28
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))
  (:durative-action do_step29
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s55_done)) (at start (s58_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))
  (:durative-action do_step30
    :duration 20
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s14_done)) (at start (s22_done)) (at start (s56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done))))
  (:durative-action do_step31
    :duration 10
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_done))))
  (:durative-action do_step32
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s8_done)) (at start (s13_done)) (at start (s45_done)) (at start (s49_done)) (at start (s53_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_done))))
  (:durative-action do_step33
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_done))))
  (:durative-action do_step34
    :duration 20
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s15_done)) (at start (s28_done)) (at start (s53_done)) (at start (s59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_done))))
  (:durative-action do_step35
    :duration 30
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_done))))
  (:durative-action do_step36
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s51_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_done))))
  (:durative-action do_step37
    :duration 45
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s24_done)) (at start (s52_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_done))))
  (:durative-action do_step38
    :duration 10
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_done))))
  (:durative-action do_step39
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s16_done)) (at start (s26_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_done))))
  (:durative-action do_step40
    :duration 20
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)) (at start (s14_done)) (at start (s67_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_done))))
  (:durative-action do_step41
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s59_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_done))))
  (:durative-action do_step42
    :duration 5
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s14_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_done))))
  (:durative-action do_step43
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s8_done)) (at start (s31_done)) (at start (s33_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_done))))
  (:durative-action do_step44
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_done))))
  (:durative-action do_step45
    :duration 30
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_done))))
  (:durative-action do_step46
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_done))))
  (:durative-action do_step47
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s11_done)) (at start (s55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_done))))
  (:durative-action do_step48
    :duration 15
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_done))))
  (:durative-action do_step49
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_done))))
  (:durative-action do_step50
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s24_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_done))))
  (:durative-action do_step51
    :duration 45
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s13_done)) (at start (s55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s51_done))))
  (:durative-action do_step52
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)) (at start (s21_done)) (at start (s36_done)) (at start (s59_done)) (at start (s65_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s52_done))))
  (:durative-action do_step53
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s9_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s53_done))))
  (:durative-action do_step54
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)) (at start (s13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s54_done))))
  (:durative-action do_step55
    :duration 600
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s55_done))))
  (:durative-action do_step56
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s56_done))))
  (:durative-action do_step57
    :duration 15
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s34_done)) (at start (s35_done)) (at start (s52_done)) (at start (s55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s57_done))))
  (:durative-action do_step58
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s10_done)) (at start (s12_done)) (at start (s38_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s58_done))))
  (:durative-action do_step59
    :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s6_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s59_done))))
  (:durative-action do_step60
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s60_done))))
  (:durative-action do_step61
    :duration 20
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s61_done))))
  (:durative-action do_step62
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s4_done)) (at start (s55_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s62_done))))
  (:durative-action do_step63
    :duration 10
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s10_done)) (at start (s18_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s63_done))))
  (:durative-action do_step64
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s38_done)) (at start (s54_done)) (at start (s67_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s64_done))))
  (:durative-action do_step65
    :duration 20
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s65_done))))
  (:durative-action do_step66
    :duration 45
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s66_done))))
  (:durative-action do_step67
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s12_done)) (at start (s33_done)) (at start (s34_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s67_done))))
  (:durative-action do_step68
    :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s22_done)) (at start (s41_done)) (at start (s54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s68_done))))
  (:durative-action do_step69
    :duration 20
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s69_done))))
  (:durative-action do_step70
    :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (s37_done)) (at start (s39_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s70_done)))))