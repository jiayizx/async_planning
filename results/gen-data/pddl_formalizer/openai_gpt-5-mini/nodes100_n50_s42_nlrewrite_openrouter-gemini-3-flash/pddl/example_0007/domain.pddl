(define (domain picnic)
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
    (s61_done) (s62_done) (s63_done) (s64_done) (s65_done) (s66_done) (s67_done) (s68_done) (s69_done) (s70_done)
    (s71_done) (s72_done) (s73_done) (s74_done) (s75_done) (s76_done) (s77_done) (s78_done) (s79_done) (s80_done)
    (s81_done) (s82_done) (s83_done) (s84_done) (s85_done) (s86_done) (s87_done) (s88_done) (s89_done) (s90_done)
    (s91_done) (s92_done) (s93_done) (s94_done) (s95_done) (s96_done) (s97_done) (s98_done) (s99_done) (s100_done)
  )

  ; One durative action per step. Each action removes the pending flag at start and asserts step_done and a unique semantic predicate at end.

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending s1))
    :effect (and (at start (not (step_pending s1))) (at end (step_done s1)) (at end (s1_done)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending s2))
    :effect (and (at start (not (step_pending s2))) (at end (step_done s2)) (at end (s2_done)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s3)) (at start (s53_done)) (at start (s55_done)) (at start (s58_done)) (at start (s61_done)) (at start (s16_done)) (at start (s42_done)))
    :effect (and (at start (not (step_pending s3))) (at end (step_done s3)) (at end (s3_done)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s4)) (at start (s1_done)) (at start (s10_done)))
    :effect (and (at start (not (step_pending s4))) (at end (step_done s4)) (at end (s4_done)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s5)) (at start (s2_done)) (at start (s70_done)) (at start (s91_done)))
    :effect (and (at start (not (step_pending s5))) (at end (step_done s5)) (at end (s5_done)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s6)) (at start (s17_done)) (at start (s26_done)) (at start (s43_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending s6))) (at end (step_done s6)) (at end (s6_done)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s7)) (at start (s53_done)) (at start (s78_done)))
    :effect (and (at start (not (step_pending s7))) (at end (step_done s7)) (at end (s7_done)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s8)) (at start (s23_done)) (at start (s58_done)) (at start (s98_done)))
    :effect (and (at start (not (step_pending s8))) (at end (step_done s8)) (at end (s8_done)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending s9))
    :effect (and (at start (not (step_pending s9))) (at end (step_done s9)) (at end (s9_done)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s10)) (at start (s47_done)))
    :effect (and (at start (not (step_pending s10))) (at end (step_done s10)) (at end (s10_done)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s11)) (at start (s18_done)) (at start (s92_done)))
    :effect (and (at start (not (step_pending s11))) (at end (step_done s11)) (at end (s11_done)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s12)) (at start (s26_done)) (at start (s98_done)))
    :effect (and (at start (not (step_pending s12))) (at end (step_done s12)) (at end (s12_done)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s13)) (at start (s7_done)) (at start (s18_done)) (at start (s23_done)) (at start (s28_done)) (at start (s31_done)) (at start (s63_done)) (at start (s73_done)))
    :effect (and (at start (not (step_pending s13))) (at end (step_done s13)) (at end (s13_done)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s14)) (at start (s41_done)) (at start (s44_done)) (at start (s75_done)) (at start (s93_done)) (at start (s90_done)))
    :effect (and (at start (not (step_pending s14))) (at end (step_done s14)) (at end (s14_done)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending s15))
    :effect (and (at start (not (step_pending s15))) (at end (step_done s15)) (at end (s15_done)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s16)) (at start (s98_done)))
    :effect (and (at start (not (step_pending s16))) (at end (step_done s16)) (at end (s16_done)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s17)) (at start (s25_done)) (at start (s67_done)) (at start (s80_done)))
    :effect (and (at start (not (step_pending s17))) (at end (step_done s17)) (at end (s17_done)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s18)) (at start (s23_done)))
    :effect (and (at start (not (step_pending s18))) (at end (step_done s18)) (at end (s18_done)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending s19))
    :effect (and (at start (not (step_pending s19))) (at end (step_done s19)) (at end (s19_done)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s20)) (at start (s23_done)) (at start (s52_done)) (at start (s90_done)) (at start (s93_done)) (at start (s92_done)))
    :effect (and (at start (not (step_pending s20))) (at end (step_done s20)) (at end (s20_done)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s21)) (at start (s42_done)) (at start (s46_done)) (at start (s54_done)) (at start (s70_done)))
    :effect (and (at start (not (step_pending s21))) (at end (step_done s21)) (at end (s21_done)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s22)) (at start (s15_done)) (at start (s50_done)))
    :effect (and (at start (not (step_pending s22))) (at end (step_done s22)) (at end (s22_done)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending s23))
    :effect (and (at start (not (step_pending s23))) (at end (step_done s23)) (at end (s23_done)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s24)) (at start (s9_done)) (at start (s11_done)) (at start (s49_done)) (at start (s73_done)))
    :effect (and (at start (not (step_pending s24))) (at end (step_done s24)) (at end (s24_done)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending s25))
    :effect (and (at start (not (step_pending s25))) (at end (step_done s25)) (at end (s25_done)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s26)) (at start (s78_done)) (at start (s81_done)))
    :effect (and (at start (not (step_pending s26))) (at end (step_done s26)) (at end (s26_done)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s27)) (at start (s72_done)) (at start (s77_done)))
    :effect (and (at start (not (step_pending s27))) (at end (step_done s27)) (at end (s27_done)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s28)) (at start (s10_done)) (at start (s66_done)) (at start (s77_done)))
    :effect (and (at start (not (step_pending s28))) (at end (step_done s28)) (at end (s28_done)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s29)) (at start (s12_done)) (at start (s38_done)) (at start (s45_done)) (at start (s68_done)) (at start (s76_done)) (at start (s100_done)))
    :effect (and (at start (not (step_pending s29))) (at end (step_done s29)) (at end (s29_done)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s30)) (at start (s1_done)) (at start (s81_done)) (at start (s88_done)))
    :effect (and (at start (not (step_pending s30))) (at end (step_done s30)) (at end (s30_done)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s31)) (at start (s15_done)))
    :effect (and (at start (not (step_pending s31))) (at end (step_done s31)) (at end (s31_done)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s32)) (at start (s44_done)) (at start (s62_done)))
    :effect (and (at start (not (step_pending s32))) (at end (step_done s32)) (at end (s32_done)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s33)) (at start (s53_done)))
    :effect (and (at start (not (step_pending s33))) (at end (step_done s33)) (at end (s33_done)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s34)) (at start (s91_done)))
    :effect (and (at start (not (step_pending s34))) (at end (step_done s34)) (at end (s34_done)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending s35))
    :effect (and (at start (not (step_pending s35))) (at end (step_done s35)) (at end (s35_done)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s36)) (at start (s16_done)) (at start (s25_done)))
    :effect (and (at start (not (step_pending s36))) (at end (step_done s36)) (at end (s36_done)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s37)) (at start (s4_done)) (at start (s19_done)) (at start (s38_done)) (at start (s96_done)) (at start (s43_done)))
    :effect (and (at start (not (step_pending s37))) (at end (step_done s37)) (at end (s37_done)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s38)) (at start (s23_done)) (at start (s57_done)) (at start (s99_done)))
    :effect (and (at start (not (step_pending s38))) (at end (step_done s38)) (at end (s38_done)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s39)) (at start (s5_done)) (at start (s10_done)) (at start (s52_done)))
    :effect (and (at start (not (step_pending s39))) (at end (step_done s39)) (at end (s39_done)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s40)) (at start (s33_done)) (at start (s55_done)) (at start (s96_done)))
    :effect (and (at start (not (step_pending s40))) (at end (step_done s40)) (at end (s40_done)))
  )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s41)) (at start (s7_done)) (at start (s11_done)) (at start (s38_done)) (at start (s77_done)) (at start (s80_done)) (at start (s93_done)))
    :effect (and (at start (not (step_pending s41))) (at end (step_done s41)) (at end (s41_done)))
  )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s42)) (at start (s19_done)) (at start (s55_done)) (at start (s94_done)))
    :effect (and (at start (not (step_pending s42))) (at end (step_done s42)) (at end (s42_done)))
  )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (step_pending s43))
    :effect (and (at start (not (step_pending s43))) (at end (step_done s43)) (at end (s43_done)))
  )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s44)) (at start (s15_done)) (at start (s97_done)))
    :effect (and (at start (not (step_pending s44))) (at end (step_done s44)) (at end (s44_done)))
  )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s45)) (at start (s36_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending s45))) (at end (step_done s45)) (at end (s45_done)))
  )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s46)) (at start (s18_done)) (at start (s59_done)))
    :effect (and (at start (not (step_pending s46))) (at end (step_done s46)) (at end (s46_done)))
  )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending s47))
    :effect (and (at start (not (step_pending s47))) (at end (step_done s47)) (at end (s47_done)))
  )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending s48))
    :effect (and (at start (not (step_pending s48))) (at end (step_done s48)) (at end (s48_done)))
  )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s49)) (at start (s33_done)) (at start (s40_done)) (at start (s62_done)) (at start (s72_done)))
    :effect (and (at start (not (step_pending s49))) (at end (step_done s49)) (at end (s49_done)))
  )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s50)) (at start (s33_done)) (at start (s53_done)))
    :effect (and (at start (not (step_pending s50))) (at end (step_done s50)) (at end (s50_done)))
  )

  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s51)) (at start (s60_done)))
    :effect (and (at start (not (step_pending s51))) (at end (step_done s51)) (at end (s51_done)))
  )

  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s52)) (at start (s11_done)) (at start (s83_done)) (at start (s84_done)))
    :effect (and (at start (not (step_pending s52))) (at end (step_done s52)) (at end (s52_done)))
  )

  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending s53))
    :effect (and (at start (not (step_pending s53))) (at end (step_done s53)) (at end (s53_done)))
  )

  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s54)) (at start (s17_done)) (at start (s84_done)))
    :effect (and (at start (not (step_pending s54))) (at end (step_done s54)) (at end (s54_done)))
  )

  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s55)) (at start (s4_done)) (at start (s7_done)) (at start (s16_done)) (at start (s72_done)))
    :effect (and (at start (not (step_pending s55))) (at end (step_done s55)) (at end (s55_done)))
  )

  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s56)) (at start (s4_done)) (at start (s12_done)) (at start (s32_done)) (at start (s73_done)) (at start (s81_done)) (at start (s85_done)) (at start (s53_done)))
    :effect (and (at start (not (step_pending s56))) (at end (step_done s56)) (at end (s56_done)))
  )

  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending s57))
    :effect (and (at start (not (step_pending s57))) (at end (step_done s57)) (at end (s57_done)))
  )

  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s58)) (at start (s7_done)) (at start (s10_done)) (at start (s38_done)) (at start (s44_done)) (at start (s96_done)))
    :effect (and (at start (not (step_pending s58))) (at end (step_done s58)) (at end (s58_done)))
  )

  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s59)) (at start (s16_done)))
    :effect (and (at start (not (step_pending s59))) (at end (step_done s59)) (at end (s59_done)))
  )

  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s60)) (at start (s44_done)))
    :effect (and (at start (not (step_pending s60))) (at end (step_done s60)) (at end (s60_done)))
  )

  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s61)) (at start (s11_done)) (at start (s69_done)))
    :effect (and (at start (not (step_pending s61))) (at end (step_done s61)) (at end (s61_done)))
  )

  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending s62))
    :effect (and (at start (not (step_pending s62))) (at end (step_done s62)) (at end (s62_done)))
  )

  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s63)) (at start (s21_done)) (at start (s81_done)))
    :effect (and (at start (not (step_pending s63))) (at end (step_done s63)) (at end (s63_done)))
  )

  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s64)) (at start (s93_done)) (at start (s96_done)))
    :effect (and (at start (not (step_pending s64))) (at end (step_done s64)) (at end (s64_done)))
  )

  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s65)) (at start (s30_done)) (at start (s36_done)) (at start (s38_done)) (at start (s55_done)) (at start (s60_done)))
    :effect (and (at start (not (step_pending s65))) (at end (step_done s65)) (at end (s65_done)))
  )

  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s66)) (at start (s2_done)) (at start (s41_done)) (at start (s93_done)) (at start (s67_done)))
    :effect (and (at start (not (step_pending s66))) (at end (step_done s66)) (at end (s66_done)))
  )

  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s67)) (at start (s36_done)) (at start (s94_done)))
    :effect (and (at start (not (step_pending s67))) (at end (step_done s67)) (at end (s67_done)))
  )

  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s68)) (at start (s42_done)))
    :effect (and (at start (not (step_pending s68))) (at end (step_done s68)) (at end (s68_done)))
  )

  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s69)) (at start (s50_done)) (at start (s53_done)) (at start (s72_done)) (at start (s80_done)))
    :effect (and (at start (not (step_pending s69))) (at end (step_done s69)) (at end (s69_done)))
  )

  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s70)) (at start (s2_done)) (at start (s17_done)) (at start (s46_done)))
    :effect (and (at start (not (step_pending s70))) (at end (step_done s70)) (at end (s70_done)))
  )

  (:durative-action do_step71
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s71)) (at start (s33_done)) (at start (s66_done)) (at start (s83_done)))
    :effect (and (at start (not (step_pending s71))) (at end (step_done s71)) (at end (s71_done)))
  )

  (:durative-action do_step72
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s72)) (at start (s10_done)) (at start (s11_done)) (at start (s17_done)) (at start (s50_done)) (at start (s92_done)))
    :effect (and (at start (not (step_pending s72))) (at end (step_done s72)) (at end (s72_done)))
  )

  (:durative-action do_step73
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s73)) (at start (s16_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending s73))) (at end (step_done s73)) (at end (s73_done)))
  )

  (:durative-action do_step74
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s74)) (at start (s17_done)) (at start (s67_done)))
    :effect (and (at start (not (step_pending s74))) (at end (step_done s74)) (at end (s74_done)))
  )

  (:durative-action do_step75
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s75)) (at start (s50_done)) (at start (s72_done)))
    :effect (and (at start (not (step_pending s75))) (at end (step_done s75)) (at end (s75_done)))
  )

  (:durative-action do_step76
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s76)) (at start (s60_done)))
    :effect (and (at start (not (step_pending s76))) (at end (step_done s76)) (at end (s76_done)))
  )

  (:durative-action do_step77
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending s77))
    :effect (and (at start (not (step_pending s77))) (at end (step_done s77)) (at end (s77_done)))
  )

  (:durative-action do_step78
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending s78))
    :effect (and (at start (not (step_pending s78))) (at end (step_done s78)) (at end (s78_done)))
  )

  (:durative-action do_step79
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s79)) (at start (s26_done)) (at start (s49_done)) (at start (s72_done)))
    :effect (and (at start (not (step_pending s79))) (at end (step_done s79)) (at end (s79_done)))
  )

  (:durative-action do_step80
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s80)) (at start (s1_done)) (at start (s62_done)) (at start (s32_done)) (at start (s53_done)))
    :effect (and (at start (not (step_pending s80))) (at end (step_done s80)) (at end (s80_done)))
  )

  (:durative-action do_step81
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending s81))
    :effect (and (at start (not (step_pending s81))) (at end (step_done s81)) (at end (s81_done)))
  )

  (:durative-action do_step82
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s82)) (at start (s6_done)) (at start (s22_done)) (at start (s68_done)) (at start (s75_done)))
    :effect (and (at start (not (step_pending s82))) (at end (step_done s82)) (at end (s82_done)))
  )

  (:durative-action do_step83
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s83)) (at start (s47_done)) (at start (s97_done)))
    :effect (and (at start (not (step_pending s83))) (at end (step_done s83)) (at end (s83_done)))
  )

  (:durative-action do_step84
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending s84))
    :effect (and (at start (not (step_pending s84))) (at end (step_done s84)) (at end (s84_done)))
  )

  (:durative-action do_step85
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s85)) (at start (s16_done)) (at start (s91_done)) (at start (s92_done)) (at start (s94_done)))
    :effect (and (at start (not (step_pending s85))) (at end (step_done s85)) (at end (s85_done)))
  )

  (:durative-action do_step86
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s86)) (at start (s53_done)) (at start (s91_done)))
    :effect (and (at start (not (step_pending s86))) (at end (step_done s86)) (at end (s86_done)))
  )

  (:durative-action do_step87
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s87)) (at start (s2_done)) (at start (s14_done)) (at start (s48_done)) (at start (s93_done)))
    :effect (and (at start (not (step_pending s87))) (at end (step_done s87)) (at end (s87_done)))
  )

  (:durative-action do_step88
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s88)) (at start (s17_done)) (at start (s59_done)) (at start (s60_done)) (at start (s16_done)) (at start (s43_done)))
    :effect (and (at start (not (step_pending s88))) (at end (step_done s88)) (at end (s88_done)))
  )

  (:durative-action do_step89
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s89)) (at start (s14_done)) (at start (s15_done)) (at start (s86_done)))
    :effect (and (at start (not (step_pending s89))) (at end (step_done s89)) (at end (s89_done)))
  )

  (:durative-action do_step90
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s90)) (at start (s71_done)) (at start (s97_done)) (at start (s78_done)))
    :effect (and (at start (not (step_pending s90))) (at end (step_done s90)) (at end (s90_done)))
  )

  (:durative-action do_step91
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s91)) (at start (s98_done)))
    :effect (and (at start (not (step_pending s91))) (at end (step_done s91)) (at end (s91_done)))
  )

  (:durative-action do_step92
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s92)) (at start (s15_done)) (at start (s73_done)) (at start (s53_done)))
    :effect (and (at start (not (step_pending s92))) (at end (step_done s92)) (at end (s92_done)))
  )

  (:durative-action do_step93
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s93)) (at start (s17_done)) (at start (s73_done)) (at start (s92_done)) (at start (s78_done)))
    :effect (and (at start (not (step_pending s93))) (at end (step_done s93)) (at end (s93_done)))
  )

  (:durative-action do_step94
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending s94)) (at start (s97_done)))
    :effect (and (at start (not (step_pending s94))) (at end (step_done s94)) (at end (s94_done)))
  )

  (:durative-action do_step95
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s95)) (at start (s73_done)) (at start (s83_done)) (at start (s96_done)) (at start (s97_done)))
    :effect (and (at start (not (step_pending s95))) (at end (step_done s95)) (at end (s95_done)))
  )

  (:durative-action do_step96
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s96)) (at start (s4_done)) (at start (s33_done)))
    :effect (and (at start (not (step_pending s96))) (at end (step_done s96)) (at end (s96_done)))
  )

  (:durative-action do_step97
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending s97))
    :effect (and (at start (not (step_pending s97))) (at end (step_done s97)) (at end (s97_done)))
  )

  (:durative-action do_step98
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending s98))
    :effect (and (at start (not (step_pending s98))) (at end (step_done s98)) (at end (s98_done)))
  )

  (:durative-action do_step99
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s99)) (at start (s53_done)) (at start (s35_done)) (at start (s44_done)))
    :effect (and (at start (not (step_pending s99))) (at end (step_done s99)) (at end (s99_done)))
  )

  (:durative-action do_step100
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s100)) (at start (s1_done)) (at start (s10_done)) (at start (s22_done)) (at start (s64_done)) (at start (s90_done)) (at start (s78_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending s100))) (at end (step_done s100)) (at end (s100_done)))
  )
)
