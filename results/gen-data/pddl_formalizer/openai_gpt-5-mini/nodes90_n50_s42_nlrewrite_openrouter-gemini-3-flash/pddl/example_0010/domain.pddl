(define (domain put_on_clothes)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_completed)
    (s2_completed)
    (s3_completed)
    (s4_completed)
    (s5_completed)
    (s6_completed)
    (s7_completed)
    (s8_completed)
    (s9_completed)
    (s10_completed)
    (s11_completed)
    (s12_completed)
    (s13_completed)
    (s14_completed)
    (s15_completed)
    (s16_completed)
    (s17_completed)
    (s18_completed)
    (s19_completed)
    (s20_completed)
    (s21_completed)
    (s22_completed)
    (s23_completed)
    (s24_completed)
    (s25_completed)
    (s26_completed)
    (s27_completed)
    (s28_completed)
    (s29_completed)
    (s30_completed)
    (s31_completed)
    (s32_completed)
    (s33_completed)
    (s34_completed)
    (s35_completed)
    (s36_completed)
    (s37_completed)
    (s38_completed)
    (s39_completed)
    (s40_completed)
    (s41_completed)
    (s42_completed)
    (s43_completed)
    (s44_completed)
    (s45_completed)
    (s46_completed)
    (s47_completed)
    (s48_completed)
    (s49_completed)
    (s50_completed)
    (s51_completed)
    (s52_completed)
    (s53_completed)
    (s54_completed)
    (s55_completed)
    (s56_completed)
    (s57_completed)
    (s58_completed)
    (s59_completed)
    (s60_completed)
    (s61_completed)
    (s62_completed)
    (s63_completed)
    (s64_completed)
    (s65_completed)
    (s66_completed)
    (s67_completed)
    (s68_completed)
    (s69_completed)
    (s70_completed)
    (s71_completed)
    (s72_completed)
    (s73_completed)
    (s74_completed)
    (s75_completed)
    (s76_completed)
    (s77_completed)
    (s78_completed)
    (s79_completed)
    (s80_completed)
    (s81_completed)
    (s82_completed)
    (s83_completed)
    (s84_completed)
    (s85_completed)
    (s86_completed)
    (s87_completed)
    (s88_completed)
    (s89_completed)
    (s90_completed)
  )

  ; Each durative-action corresponds to one step. Actions take a step parameter ?s
  ; and will be applied to the appropriate step object in the problem file.

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s76_completed)) (at start (s79_completed)) (at start (s85_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_completed)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s21_completed)) (at start (s62_completed)) (at start (s69_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_completed)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s28_completed)) (at start (s76_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_completed)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (s9_completed)) (at start (s28_completed)) (at start (s33_completed)) (at start (s34_completed)) (at start (s45_completed)) (at start (s47_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_completed)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (s10_completed)) (at start (s24_completed)) (at start (s42_completed)) (at start (s57_completed)) (at start (s65_completed)) (at start (s83_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_completed)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (s88_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_completed)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s1_completed)) (at start (s13_completed)) (at start (s42_completed)) (at start (s52_completed)) (at start (s64_completed)) (at start (s72_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_completed)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s18_completed)) (at start (s26_completed)) (at start (s65_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_completed)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s39_completed)) (at start (s49_completed)) (at start (s51_completed)) (at start (s65_completed)) (at start (s71_completed)) (at start (s75_completed)) (at start (s76_completed)) (at start (s87_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_completed)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (s22_completed)) (at start (s33_completed)) (at start (s45_completed)) (at start (s59_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_completed)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s46_completed)) (at start (s51_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_completed)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s7_completed)) (at start (s14_completed)) (at start (s37_completed)) (at start (s59_completed)) (at start (s69_completed)) (at start (s72_completed)) (at start (s73_completed)) (at start (s79_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_completed)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s15_completed)) (at start (s40_completed)) (at start (s73_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_completed)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (s79_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_completed)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s16_completed)) (at start (s49_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_completed)))
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s76_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_completed)))
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (s65_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_completed)))
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s61_completed)) (at start (s75_completed)) (at start (s87_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_completed)))
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s18_completed)) (at start (s22_completed)) (at start (s56_completed)) (at start (s61_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_completed)))
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s19_completed)) (at start (s22_completed)) (at start (s56_completed)) (at start (s66_completed)) (at start (s86_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_completed)))
  )

  (:durative-action do_step21
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s69_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_completed)))
  )

  (:durative-action do_step22
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s1_completed)) (at start (s39_completed)) (at start (s40_completed)) (at start (s77_completed)) (at start (s90_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_completed)))
  )

  (:durative-action do_step23
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s81_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_completed)))
  )

  (:durative-action do_step24
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (s35_completed)) (at start (s79_completed)) (at start (s87_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_completed)))
  )

  (:durative-action do_step25
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s66_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_completed)))
  )

  (:durative-action do_step26
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_completed)))
  )

  (:durative-action do_step27
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s13_completed)) (at start (s21_completed)) (at start (s35_completed)) (at start (s73_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_completed)))
  )

  (:durative-action do_step28
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_completed)))
  )

  (:durative-action do_step29
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s22_completed)) (at start (s49_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_completed)))
  )

  (:durative-action do_step30
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s39_completed)) (at start (s88_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_completed)))
  )

  (:durative-action do_step31
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_completed)))
  )

  (:durative-action do_step32
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s49_completed)) (at start (s53_completed)) (at start (s88_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_completed)))
  )

  (:durative-action do_step33
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (s51_completed)) (at start (s67_completed)) (at start (s74_completed)) (at start (s76_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_completed)))
  )

  (:durative-action do_step34
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s3_completed)) (at start (s17_completed)) (at start (s21_completed)) (at start (s62_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_completed)))
  )

  (:durative-action do_step35
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s62_completed)) (at start (s52_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_completed)))
  )

  (:durative-action do_step36
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (s14_completed)) (at start (s51_completed)) (at start (s75_completed)) (at start (s82_completed)) (at start (s87_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_completed)))
  )

  (:durative-action do_step37
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s2_completed)) (at start (s4_completed)) (at start (s15_completed)) (at start (s24_completed)) (at start (s46_completed)) (at start (s68_completed)) (at start (s79_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_completed)))
  )

  (:durative-action do_step38
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s13_completed)) (at start (s34_completed)) (at start (s58_completed)) (at start (s81_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_completed)))
  )

  (:durative-action do_step39
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_completed)))
  )

  (:durative-action do_step40
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_completed)))
  )

  (:durative-action do_step41
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s6_completed)) (at start (s55_completed)) (at start (s61_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_completed)))
  )

  (:durative-action do_step42
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s19_completed)) (at start (s20_completed)) (at start (s47_completed)) (at start (s56_completed)) (at start (s69_completed)) (at start (s88_completed)) (at start (s76_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_completed)))
  )

  (:durative-action do_step43
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (s15_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_completed)))
  )

  (:durative-action do_step44
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s6_completed)) (at start (s32_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_completed)))
  )

  (:durative-action do_step45
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s60_completed)) (at start (s68_completed)) (at start (s79_completed)) (at start (s86_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_completed)))
  )

  (:durative-action do_step46
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s48_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_completed)))
  )

  (:durative-action do_step47
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (s27_completed)) (at start (s39_completed)) (at start (s56_completed)) (at start (s57_completed)) (at start (s74_completed)) (at start (s81_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_completed)))
  )

  (:durative-action do_step48
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s3_completed)) (at start (s58_completed)) (at start (s76_completed)) (at start (s87_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_completed)))
  )

  (:durative-action do_step49
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (step_pending ?s)) (at start (s67_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_completed)))
  )

  (:durative-action do_step50
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (s33_completed)) (at start (s38_completed)) (at start (s41_completed)) (at start (s45_completed)) (at start (s78_completed)) (at start (s68_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_completed)))
  )

  (:durative-action do_step51
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s51_completed)))
  )

  (:durative-action do_step52
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s30_completed)) (at start (s62_completed)) (at start (s70_completed)) (at start (s81_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s52_completed)))
  )

  (:durative-action do_step53
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s53_completed)))
  )

  (:durative-action do_step54
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s9_completed)) (at start (s18_completed)) (at start (s53_completed)) (at start (s56_completed)) (at start (s57_completed)) (at start (s70_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s54_completed)))
  )

  (:durative-action do_step55
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s28_completed)) (at start (s76_completed)) (at start (s62_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s55_completed)))
  )

  (:durative-action do_step56
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s9_completed)) (at start (s61_completed)) (at start (s79_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s56_completed)))
  )

  (:durative-action do_step57
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s57_completed)))
  )

  (:durative-action do_step58
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s58_completed)))
  )

  (:durative-action do_step59
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s31_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s59_completed)))
  )

  (:durative-action do_step60
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)) (at start (s58_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s60_completed)))
  )

  (:durative-action do_step61
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s75_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s61_completed)))
  )

  (:durative-action do_step62
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s62_completed)))
  )

  (:durative-action do_step63
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (s51_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s63_completed)))
  )

  (:durative-action do_step64
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s15_completed)) (at start (s35_completed)) (at start (s41_completed)) (at start (s53_completed)) (at start (s67_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s64_completed)))
  )

  (:durative-action do_step65
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s26_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s65_completed)))
  )

  (:durative-action do_step66
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s30_completed)) (at start (s45_completed)) (at start (s75_completed)) (at start (s79_completed)) (at start (s90_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s66_completed)))
  )

  (:durative-action do_step67
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s67_completed)))
  )

  (:durative-action do_step68
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s68_completed)))
  )

  (:durative-action do_step69
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s48_completed)) (at start (s65_completed)) (at start (s88_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s69_completed)))
  )

  (:durative-action do_step70
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s70_completed)))
  )

  (:durative-action do_step71
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s71_completed)))
  )

  (:durative-action do_step72
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (s63_completed)) (at start (s69_completed)) (at start (s82_completed)) (at start (s89_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s72_completed)))
  )

  (:durative-action do_step73
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (s81_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s73_completed)))
  )

  (:durative-action do_step74
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (step_pending ?s)) (at start (s60_completed)) (at start (s79_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s74_completed)))
  )

  (:durative-action do_step75
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s75_completed)))
  )

  (:durative-action do_step76
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s76_completed)))
  )

  (:durative-action do_step77
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s13_completed)) (at start (s61_completed)) (at start (s82_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s77_completed)))
  )

  (:durative-action do_step78
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s15_completed)) (at start (s34_completed)) (at start (s75_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s78_completed)))
  )

  (:durative-action do_step79
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s79_completed)))
  )

  (:durative-action do_step80
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s31_completed)) (at start (s73_completed)) (at start (s51_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s80_completed)))
  )

  (:durative-action do_step81
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (s28_completed)) (at start (s31_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s81_completed)))
  )

  (:durative-action do_step82
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s32_completed)) (at start (s75_completed)) (at start (s51_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s82_completed)))
  )

  (:durative-action do_step83
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s40_completed)) (at start (s61_completed)) (at start (s64_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s83_completed)))
  )

  (:durative-action do_step84
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (step_pending ?s)) (at start (s7_completed)) (at start (s44_completed)) (at start (s52_completed)) (at start (s86_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s84_completed)))
  )

  (:durative-action do_step85
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s)) (at start (s3_completed)) (at start (s21_completed)) (at start (s48_completed)) (at start (s49_completed)) (at start (s79_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s85_completed)))
  )

  (:durative-action do_step86
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s)) (at start (s44_completed)) (at start (s52_completed)) (at start (s60_completed)) (at start (s62_completed)) (at start (s77_completed)) (at start (s82_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s86_completed)))
  )

  (:durative-action do_step87
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s21_completed)) (at start (s26_completed)) (at start (s67_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s87_completed)))
  )

  (:durative-action do_step88
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s88_completed)))
  )

  (:durative-action do_step89
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (step_pending ?s)) (at start (s24_completed)) (at start (s67_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s89_completed)))
  )

  (:durative-action do_step90
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s)) (at start (s39_completed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s90_completed)))
  )
)
