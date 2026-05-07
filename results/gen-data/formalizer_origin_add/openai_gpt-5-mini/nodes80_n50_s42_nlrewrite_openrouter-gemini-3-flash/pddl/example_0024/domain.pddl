(define (domain prenatal_safety)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    (s1_completed) (s2_completed) (s3_completed) (s4_completed) (s5_completed)
    (s6_completed) (s7_completed) (s8_completed) (s9_completed) (s10_completed)
    (s11_completed) (s12_completed) (s13_completed) (s14_completed) (s15_completed)
    (s16_completed) (s17_completed) (s18_completed) (s19_completed) (s20_completed)
    (s21_completed) (s22_completed) (s23_completed) (s24_completed) (s25_completed)
    (s26_completed) (s27_completed) (s28_completed) (s29_completed) (s30_completed)
    (s31_completed) (s32_completed) (s33_completed) (s34_completed) (s35_completed)
    (s36_completed) (s37_completed) (s38_completed) (s39_completed) (s40_completed)
    (s41_completed) (s42_completed) (s43_completed) (s44_completed) (s45_completed)
    (s46_completed) (s47_completed) (s48_completed) (s49_completed) (s50_completed)
    (s51_completed) (s52_completed) (s53_completed) (s54_completed) (s55_completed)
    (s56_completed) (s57_completed) (s58_completed) (s59_completed) (s60_completed)
    (s61_completed) (s62_completed) (s63_completed) (s64_completed) (s65_completed)
    (s66_completed) (s67_completed) (s68_completed) (s69_completed) (s70_completed)
    (s71_completed) (s72_completed) (s73_completed) (s74_completed) (s75_completed)
    (s76_completed) (s77_completed) (s78_completed) (s79_completed) (s80_completed)
  )

  ; One durative action per step. Parameters must be declared even if empty.

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step1)) (at start (s3_completed)) (at start (s21_completed)) (at start (s32_completed)) (at start (s58_completed)) (at start (s68_completed)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_completed)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_completed)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (s80_completed)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_completed)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_completed)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step5)) (at start (s74_completed)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_completed)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step6)) (at start (s11_completed)) (at start (s36_completed)) (at start (s71_completed)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_completed)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step7)) (at start (s47_completed)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_completed)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_completed)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step9)) (at start (s2_completed)) (at start (s3_completed)) (at start (s11_completed)) (at start (s43_completed)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_completed)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step10)) (at start (s34_completed)) (at start (s45_completed)) (at start (s51_completed)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_completed)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_completed)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_completed)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step13)) (at start (s48_completed)) (at start (s52_completed)) (at start (s55_completed)) (at start (s59_completed)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_completed)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_completed)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 5400)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_completed)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step16)) (at start (s46_completed)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_completed)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step17)) (at start (s11_completed)) (at start (s13_completed)) (at start (s62_completed)) (at start (s80_completed)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_completed)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_completed)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step19)) (at start (s3_completed)) (at start (s4_completed)) (at start (s41_completed)) (at start (s67_completed)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_completed)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step20)) (at start (s14_completed)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_completed)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step21)) (at start (s6_completed)) (at start (s45_completed)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_completed)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step22)) (at start (s4_completed)) (at start (s53_completed)) (at start (s71_completed)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_completed)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step23)) (at start (s7_completed)) (at start (s62_completed)) (at start (s68_completed)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_completed)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step24)) (at start (s15_completed)) (at start (s22_completed)) (at start (s80_completed)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_completed)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_completed)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step26)) (at start (s3_completed)) (at start (s38_completed)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_completed)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step27)) (at start (s8_completed)) (at start (s14_completed)) (at start (s53_completed)) (at start (s68_completed)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_completed)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step28)) (at start (s9_completed)) (at start (s13_completed)) (at start (s41_completed)) (at start (s48_completed)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_completed)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step29)) (at start (s2_completed)) (at start (s4_completed)) (at start (s30_completed)) (at start (s46_completed)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_completed)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step30)) (at start (s1_completed)) (at start (s7_completed)) (at start (s9_completed)) (at start (s25_completed)) (at start (s45_completed)) (at start (s54_completed)) (at start (s56_completed)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_completed)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step31)) (at start (s9_completed)) (at start (s32_completed)) (at start (s33_completed)) (at start (s36_completed)) (at start (s75_completed)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_completed)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step32)) (at start (s34_completed)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_completed)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step33)) (at start (s2_completed)) (at start (s28_completed)) (at start (s61_completed)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_completed)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step34)) (at start (s4_completed)) (at start (s62_completed)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_completed)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step35)) (at start (s8_completed)) (at start (s59_completed)) (at start (s69_completed)) (at start (s71_completed)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_completed)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step36)) (at start (s14_completed)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_completed)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step37)) (at start (s30_completed)) (at start (s56_completed)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_completed)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step38)) (at start (s47_completed)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_completed)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step39)) (at start (s22_completed)) (at start (s30_completed)) (at start (s32_completed)) (at start (s36_completed)) (at start (s76_completed)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_completed)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step40)) (at start (s4_completed)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_completed)))
  )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step41)) (at start (s40_completed)) (at start (s45_completed)) (at start (s70_completed)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_completed)))
  )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step42)) (at start (s32_completed)) (at start (s40_completed)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_completed)))
  )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step43)) (at start (s6_completed)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_completed)))
  )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step44)) (at start (s23_completed)) (at start (s43_completed)) (at start (s45_completed)) (at start (s80_completed)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_completed)))
  )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step45)) (at start (s6_completed)) (at start (s11_completed)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_completed)))
  )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step46)) (at start (s8_completed)) (at start (s9_completed)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_completed)))
  )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step47)) (at start (s70_completed)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_completed)))
  )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_completed)))
  )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step49)) (at start (s16_completed)) (at start (s22_completed)) (at start (s44_completed)) (at start (s51_completed)) (at start (s67_completed)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_completed)))
  )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step50)) (at start (s73_completed)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_completed)))
  )

  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step51)) (at start (s64_completed)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51_completed)))
  )

  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step52)) (at start (s41_completed)) (at start (s43_completed)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52_completed)))
  )

  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step53)) (at start (s48_completed)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53_completed)))
  )

  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step54)) (at start (s23_completed)) (at start (s47_completed)) (at start (s53_completed)))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54_completed)))
  )

  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step55)) (at start (s8_completed)) (at start (s16_completed)) (at start (s38_completed)) (at start (s68_completed)) (at start (s71_completed)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55_completed)))
  )

  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step56)) (at start (s34_completed)) (at start (s47_completed)) (at start (s48_completed)) (at start (s63_completed)))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56_completed)))
  )

  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step57)) (at start (s56_completed)) (at start (s61_completed)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57_completed)))
  )

  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step58)) (at start (s14_completed)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58_completed)))
  )

  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step59)) (at start (s45_completed)) (at start (s72_completed)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59_completed)))
  )

  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step60)) (at start (s2_completed)) (at start (s13_completed)) (at start (s54_completed)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60_completed)))
  )

  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step61)) (at start (s3_completed)) (at start (s7_completed)) (at start (s23_completed)) (at start (s45_completed)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (s61_completed)))
  )

  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step62)) (at start (s38_completed)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (s62_completed)))
  )

  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step63)) (at start (s36_completed)) (at start (s66_completed)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (s63_completed)))
  )

  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step64)) (at start (s18_completed)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (s64_completed)))
  )

  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step65)) (at start (s12_completed)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (s65_completed)))
  )

  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step66)) (at start (s23_completed)))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (s66_completed)))
  )

  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step67)) (at start (s38_completed)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (s67_completed)))
  )

  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step68)) (at start (s14_completed)) (at start (s18_completed)) (at start (s72_completed)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (s68_completed)))
  )

  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step69)) (at start (s16_completed)) (at start (s23_completed)) (at start (s53_completed)) (at start (s64_completed)) (at start (s71_completed)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (s69_completed)))
  )

  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step70))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (s70_completed)))
  )

  (:durative-action do_step71
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step71))
    :effect (and (at start (not (step_pending step71))) (at end (step_done step71)) (at end (s71_completed)))
  )

  (:durative-action do_step72
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step72))
    :effect (and (at start (not (step_pending step72))) (at end (step_done step72)) (at end (s72_completed)))
  )

  (:durative-action do_step73
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step73)) (at start (s1_completed)) (at start (s15_completed)) (at start (s49_completed)) (at start (s59_completed)))
    :effect (and (at start (not (step_pending step73))) (at end (step_done step73)) (at end (s73_completed)))
  )

  (:durative-action do_step74
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step74)) (at start (s3_completed)))
    :effect (and (at start (not (step_pending step74))) (at end (step_done step74)) (at end (s74_completed)))
  )

  (:durative-action do_step75
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step75)) (at start (s7_completed)) (at start (s12_completed)))
    :effect (and (at start (not (step_pending step75))) (at end (step_done step75)) (at end (s75_completed)))
  )

  (:durative-action do_step76
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step76)) (at start (s1_completed)) (at start (s24_completed)) (at start (s25_completed)) (at start (s45_completed)))
    :effect (and (at start (not (step_pending step76))) (at end (step_done step76)) (at end (s76_completed)))
  )

  (:durative-action do_step77
    :parameters ()
    :duration (= ?duration 28800)
    :condition (and (at start (step_pending step77)) (at start (s38_completed)) (at start (s58_completed)) (at start (s60_completed)) (at start (s73_completed)) (at start (s79_completed)))
    :effect (and (at start (not (step_pending step77))) (at end (step_done step77)) (at end (s77_completed)))
  )

  (:durative-action do_step78
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step78)) (at start (s22_completed)) (at start (s72_completed)))
    :effect (and (at start (not (step_pending step78))) (at end (step_done step78)) (at end (s78_completed)))
  )

  (:durative-action do_step79
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step79)) (at start (s8_completed)) (at start (s23_completed)) (at start (s70_completed)))
    :effect (and (at start (not (step_pending step79))) (at end (step_done step79)) (at end (s79_completed)))
  )

  (:durative-action do_step80
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step80))
    :effect (and (at start (not (step_pending step80))) (at end (step_done step80)) (at end (s80_completed)))
  )
)
