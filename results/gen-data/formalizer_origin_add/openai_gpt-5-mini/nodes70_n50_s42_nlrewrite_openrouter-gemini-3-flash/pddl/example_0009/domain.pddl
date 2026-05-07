(define (domain zoo_tickets)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_ok)
    (s2_ok)
    (s3_ok)
    (s4_ok)
    (s5_ok)
    (s6_ok)
    (s7_ok)
    (s8_ok)
    (s9_ok)
    (s10_ok)
    (s11_ok)
    (s12_ok)
    (s13_ok)
    (s14_ok)
    (s15_ok)
    (s16_ok)
    (s17_ok)
    (s18_ok)
    (s19_ok)
    (s20_ok)
    (s21_ok)
    (s22_ok)
    (s23_ok)
    (s24_ok)
    (s25_ok)
    (s26_ok)
    (s27_ok)
    (s28_ok)
    (s29_ok)
    (s30_ok)
    (s31_ok)
    (s32_ok)
    (s33_ok)
    (s34_ok)
    (s35_ok)
    (s36_ok)
    (s37_ok)
    (s38_ok)
    (s39_ok)
    (s40_ok)
    (s41_ok)
    (s42_ok)
    (s43_ok)
    (s44_ok)
    (s45_ok)
    (s46_ok)
    (s47_ok)
    (s48_ok)
    (s49_ok)
    (s50_ok)
    (s51_ok)
    (s52_ok)
    (s53_ok)
    (s54_ok)
    (s55_ok)
    (s56_ok)
    (s57_ok)
    (s58_ok)
    (s59_ok)
    (s60_ok)
    (s61_ok)
    (s62_ok)
    (s63_ok)
    (s64_ok)
    (s65_ok)
    (s66_ok)
    (s67_ok)
    (s68_ok)
    (s69_ok)
    (s70_ok)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step1)) (at start (s59_ok)) (at start (s62_ok)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_ok)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_ok)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (s8_ok)) (at start (s14_ok)) (at start (s20_ok)) (at start (s51_ok)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_ok)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step4)) (at start (s54_ok)) (at start (s56_ok)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_ok)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (s16_ok)) (at start (s39_ok)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_ok)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (s17_ok)) (at start (s32_ok)) (at start (s39_ok)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_ok)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_ok)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (s5_ok)) (at start (s26_ok)) (at start (s64_ok)) (at start (s66_ok)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_ok)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_ok)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step10)) (at start (s2_ok)) (at start (s16_ok)) (at start (s17_ok)) (at start (s21_ok)) (at start (s41_ok)) (at start (s45_ok)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_ok)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step11)) (at start (s22_ok)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_ok)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_ok)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (s15_ok)) (at start (s23_ok)) (at start (s37_ok)) (at start (s39_ok)) (at start (s57_ok)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_ok)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step14)) (at start (s22_ok)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_ok)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step15)) (at start (s63_ok)) (at start (s66_ok)) (at start (s70_ok)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_ok)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step16)) (at start (s17_ok)) (at start (s22_ok)) (at start (s24_ok)) (at start (s26_ok)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_ok)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_ok)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step18)) (at start (s7_ok)) (at start (s13_ok)) (at start (s21_ok)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_ok)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step19)) (at start (s14_ok)) (at start (s27_ok)) (at start (s42_ok)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_ok)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step20)) (at start (s7_ok)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_ok)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step21)) (at start (s5_ok)) (at start (s30_ok)) (at start (s44_ok)) (at start (s48_ok)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_ok)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step22)) (at start (s7_ok)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_ok)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step23)) (at start (s59_ok)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_ok)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_ok)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (s21_ok)) (at start (s62_ok)) (at start (s66_ok)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_ok)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step26)) (at start (s9_ok)) (at start (s54_ok)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_ok)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step27)) (at start (s11_ok)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_ok)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step28)) (at start (s14_ok)) (at start (s27_ok)) (at start (s48_ok)) (at start (s56_ok)) (at start (s58_ok)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_ok)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step29)) (at start (s39_ok)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_ok)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step30)) (at start (s44_ok)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_ok)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step31)) (at start (s14_ok)) (at start (s36_ok)) (at start (s50_ok)) (at start (s55_ok)) (at start (s59_ok)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_ok)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step32)) (at start (s45_ok)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_ok)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step33)) (at start (s27_ok)) (at start (s30_ok)) (at start (s42_ok)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_ok)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step34)) (at start (s11_ok)) (at start (s46_ok)) (at start (s52_ok)) (at start (s66_ok)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_ok)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step35)) (at start (s6_ok)) (at start (s10_ok)) (at start (s26_ok)) (at start (s27_ok)) (at start (s34_ok)) (at start (s40_ok)) (at start (s55_ok)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_ok)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step36)) (at start (s1_ok)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_ok)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step37)) (at start (s48_ok)) (at start (s53_ok)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_ok)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step38)) (at start (s14_ok)) (at start (s26_ok)) (at start (s45_ok)) (at start (s66_ok)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_ok)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step39)) (at start (s2_ok)) (at start (s47_ok)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_ok)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step40)) (at start (s11_ok)) (at start (s25_ok)) (at start (s31_ok)) (at start (s41_ok)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_ok)))
  )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step41))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_ok)))
  )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step42)) (at start (s65_ok)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_ok)))
  )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step43)) (at start (s12_ok)) (at start (s62_ok)) (at start (s70_ok)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_ok)))
  )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step44)) (at start (s2_ok)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_ok)))
  )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_ok)))
  )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step46))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_ok)))
  )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step47)) (at start (s41_ok)) (at start (s56_ok)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_ok)))
  )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step48)) (at start (s4_ok)) (at start (s53_ok)) (at start (s56_ok)) (at start (s59_ok)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_ok)))
  )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step49)) (at start (s42_ok)) (at start (s47_ok)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_ok)))
  )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step50)) (at start (s39_ok)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_ok)))
  )

  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step51)) (at start (s4_ok)) (at start (s11_ok)) (at start (s14_ok)) (at start (s32_ok)) (at start (s36_ok)))
    :effect (and (at start (not (step_pending step51))) (at end (step_done step51)) (at end (s51_ok)))
  )

  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step52)) (at start (s21_ok)) (at start (s25_ok)) (at start (s70_ok)))
    :effect (and (at start (not (step_pending step52))) (at end (step_done step52)) (at end (s52_ok)))
  )

  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step53)) (at start (s47_ok)) (at start (s63_ok)))
    :effect (and (at start (not (step_pending step53))) (at end (step_done step53)) (at end (s53_ok)))
  )

  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step54))
    :effect (and (at start (not (step_pending step54))) (at end (step_done step54)) (at end (s54_ok)))
  )

  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step55)) (at start (s30_ok)) (at start (s44_ok)))
    :effect (and (at start (not (step_pending step55))) (at end (step_done step55)) (at end (s55_ok)))
  )

  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step56))
    :effect (and (at start (not (step_pending step56))) (at end (step_done step56)) (at end (s56_ok)))
  )

  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step57)) (at start (s1_ok)) (at start (s43_ok)) (at start (s45_ok)) (at start (s51_ok)))
    :effect (and (at start (not (step_pending step57))) (at end (step_done step57)) (at end (s57_ok)))
  )

  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step58)) (at start (s30_ok)) (at start (s45_ok)))
    :effect (and (at start (not (step_pending step58))) (at end (step_done step58)) (at end (s58_ok)))
  )

  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step59)) (at start (s4_ok)))
    :effect (and (at start (not (step_pending step59))) (at end (step_done step59)) (at end (s59_ok)))
  )

  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step60)) (at start (s23_ok)) (at start (s27_ok)))
    :effect (and (at start (not (step_pending step60))) (at end (step_done step60)) (at end (s60_ok)))
  )

  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step61)) (at start (s54_ok)) (at start (s63_ok)))
    :effect (and (at start (not (step_pending step61))) (at end (step_done step61)) (at end (s61_ok)))
  )

  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step62)) (at start (s14_ok)) (at start (s20_ok)) (at start (s22_ok)))
    :effect (and (at start (not (step_pending step62))) (at end (step_done step62)) (at end (s62_ok)))
  )

  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step63)) (at start (s20_ok)))
    :effect (and (at start (not (step_pending step63))) (at end (step_done step63)) (at end (s63_ok)))
  )

  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step64)) (at start (s24_ok)) (at start (s50_ok)))
    :effect (and (at start (not (step_pending step64))) (at end (step_done step64)) (at end (s64_ok)))
  )

  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step65)) (at start (s41_ok)))
    :effect (and (at start (not (step_pending step65))) (at end (step_done step65)) (at end (s65_ok)))
  )

  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step66))
    :effect (and (at start (not (step_pending step66))) (at end (step_done step66)) (at end (s66_ok)))
  )

  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step67)) (at start (s6_ok)) (at start (s14_ok)) (at start (s23_ok)))
    :effect (and (at start (not (step_pending step67))) (at end (step_done step67)) (at end (s67_ok)))
  )

  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step68)) (at start (s24_ok)) (at start (s30_ok)) (at start (s32_ok)) (at start (s33_ok)) (at start (s35_ok)) (at start (s51_ok)) (at start (s55_ok)))
    :effect (and (at start (not (step_pending step68))) (at end (step_done step68)) (at end (s68_ok)))
  )

  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step69)) (at start (s37_ok)) (at start (s43_ok)) (at start (s68_ok)))
    :effect (and (at start (not (step_pending step69))) (at end (step_done step69)) (at end (s69_ok)))
  )

  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step70)) (at start (s6_ok)) (at start (s19_ok)) (at start (s62_ok)) (at start (s66_ok)))
    :effect (and (at start (not (step_pending step70))) (at end (step_done step70)) (at end (s70_ok)))
  )
)
