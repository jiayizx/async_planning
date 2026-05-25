(define (domain eagle_meeting)
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
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s1)) (at start (s7_done)) (at start (s22_done)))
    :effect (and (at start (not (step_pending s1))) (at end (step_done s1)) (at end (s1_done)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending s2)) (at start (s17_done)))
    :effect (and (at start (not (step_pending s2))) (at end (step_done s2)) (at end (s2_done)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s3)) (at start (s48_done)) (at start (s60_done)))
    :effect (and (at start (not (step_pending s3))) (at end (step_done s3)) (at end (s3_done)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending s4))
    :effect (and (at start (not (step_pending s4))) (at end (step_done s4)) (at end (s4_done)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending s5)) (at start (s6_done)) (at start (s8_done)) (at start (s10_done)) (at start (s21_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending s5))) (at end (step_done s5)) (at end (s5_done)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending s6))
    :effect (and (at start (not (step_pending s6))) (at end (step_done s6)) (at end (s6_done)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s7)) (at start (s8_done)))
    :effect (and (at start (not (step_pending s7))) (at end (step_done s7)) (at end (s7_done)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s8)) (at start (s28_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending s8))) (at end (step_done s8)) (at end (s8_done)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s9)) (at start (s22_done)) (at start (s37_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending s9))) (at end (step_done s9)) (at end (s9_done)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending s10))
    :effect (and (at start (not (step_pending s10))) (at end (step_done s10)) (at end (s10_done)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s11)) (at start (s53_done)))
    :effect (and (at start (not (step_pending s11))) (at end (step_done s11)) (at end (s11_done)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending s12))
    :effect (and (at start (not (step_pending s12))) (at end (step_done s12)) (at end (s12_done)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s13)) (at start (s3_done)) (at start (s17_done)) (at start (s44_done)) (at start (s54_done)))
    :effect (and (at start (not (step_pending s13))) (at end (step_done s13)) (at end (s13_done)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s14)) (at start (s36_done)))
    :effect (and (at start (not (step_pending s14))) (at end (step_done s14)) (at end (s14_done)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s15)) (at start (s26_done)) (at start (s30_done)) (at start (s40_done)) (at start (s60_done)))
    :effect (and (at start (not (step_pending s15))) (at end (step_done s15)) (at end (s15_done)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s16)) (at start (s43_done)) (at start (s60_done)))
    :effect (and (at start (not (step_pending s16))) (at end (step_done s16)) (at end (s16_done)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 21600)
    :condition (at start (step_pending s17))
    :effect (and (at start (not (step_pending s17))) (at end (step_done s17)) (at end (s17_done)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s18)) (at start (s26_done)) (at start (s40_done)))
    :effect (and (at start (not (step_pending s18))) (at end (step_done s18)) (at end (s18_done)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s19)) (at start (s48_done)) (at start (s55_done)))
    :effect (and (at start (not (step_pending s19))) (at end (step_done s19)) (at end (s19_done)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step_pending s20))
    :effect (and (at start (not (step_pending s20))) (at end (step_done s20)) (at end (s20_done)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s21)) (at start (s8_done)) (at start (s10_done)) (at start (s22_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending s21))) (at end (step_done s21)) (at end (s21_done)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s22)) (at start (s36_done)) (at start (s49_done)))
    :effect (and (at start (not (step_pending s22))) (at end (step_done s22)) (at end (s22_done)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s23)) (at start (s10_done)) (at start (s20_done)) (at start (s35_done)) (at start (s49_done)))
    :effect (and (at start (not (step_pending s23))) (at end (step_done s23)) (at end (s23_done)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending s24))
    :effect (and (at start (not (step_pending s24))) (at end (step_done s24)) (at end (s24_done)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s25)) (at start (s2_done)) (at start (s26_done)) (at start (s33_done)) (at start (s60_done)))
    :effect (and (at start (not (step_pending s25))) (at end (step_done s25)) (at end (s25_done)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending s26)) (at start (s2_done)))
    :effect (and (at start (not (step_pending s26))) (at end (step_done s26)) (at end (s26_done)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s27)) (at start (s14_done)) (at start (s35_done)) (at start (s42_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending s27))) (at end (step_done s27)) (at end (s27_done)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s28)) (at start (s12_done)))
    :effect (and (at start (not (step_pending s28))) (at end (step_done s28)) (at end (s28_done)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s29)) (at start (s5_done)) (at start (s18_done)) (at start (s35_done)) (at start (s50_done)) (at start (s51_done)))
    :effect (and (at start (not (step_pending s29))) (at end (step_done s29)) (at end (s29_done)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending s30))
    :effect (and (at start (not (step_pending s30))) (at end (step_done s30)) (at end (s30_done)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s31)) (at start (s2_done)) (at start (s6_done)))
    :effect (and (at start (not (step_pending s31))) (at end (step_done s31)) (at end (s31_done)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s32)) (at start (s3_done)) (at start (s4_done)) (at start (s12_done)) (at start (s30_done)) (at start (s49_done)))
    :effect (and (at start (not (step_pending s32))) (at end (step_done s32)) (at end (s32_done)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 5400)
    :condition (at start (step_pending s33))
    :effect (and (at start (not (step_pending s33))) (at end (step_done s33)) (at end (s33_done)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s34)) (at start (s37_done)) (at start (s47_done)))
    :effect (and (at start (not (step_pending s34))) (at end (step_done s34)) (at end (s34_done)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending s35)) (at start (s8_done)) (at start (s10_done)) (at start (s38_done)))
    :effect (and (at start (not (step_pending s35))) (at end (step_done s35)) (at end (s35_done)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s36)) (at start (s12_done)))
    :effect (and (at start (not (step_pending s36))) (at end (step_done s36)) (at end (s36_done)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending s37)) (at start (s12_done)) (at start (s36_done)))
    :effect (and (at start (not (step_pending s37))) (at end (step_done s37)) (at end (s37_done)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s38)) (at start (s30_done)))
    :effect (and (at start (not (step_pending s38))) (at end (step_done s38)) (at end (s38_done)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending s39)) (at start (s3_done)) (at start (s54_done)))
    :effect (and (at start (not (step_pending s39))) (at end (step_done s39)) (at end (s39_done)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending s40))
    :effect (and (at start (not (step_pending s40))) (at end (step_done s40)) (at end (s40_done)))
  )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending s41)) (at start (s6_done)) (at start (s14_done)) (at start (s33_done)))
    :effect (and (at start (not (step_pending s41))) (at end (step_done s41)) (at end (s41_done)))
  )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending s42)) (at start (s2_done)) (at start (s22_done)) (at start (s32_done)) (at start (s51_done)) (at start (s54_done)))
    :effect (and (at start (not (step_pending s42))) (at end (step_done s42)) (at end (s42_done)))
  )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending s43)) (at start (s8_done)))
    :effect (and (at start (not (step_pending s43))) (at end (step_done s43)) (at end (s43_done)))
  )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s44)) (at start (s20_done)))
    :effect (and (at start (not (step_pending s44))) (at end (step_done s44)) (at end (s44_done)))
  )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending s45)) (at start (s22_done)) (at start (s37_done)) (at start (s49_done)) (at start (s56_done)))
    :effect (and (at start (not (step_pending s45))) (at end (step_done s45)) (at end (s45_done)))
  )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s46)) (at start (s37_done)) (at start (s58_done)))
    :effect (and (at start (not (step_pending s46))) (at end (step_done s46)) (at end (s46_done)))
  )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s47)) (at start (s10_done)) (at start (s25_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending s47))) (at end (step_done s47)) (at end (s47_done)))
  )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending s48))
    :effect (and (at start (not (step_pending s48))) (at end (step_done s48)) (at end (s48_done)))
  )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending s49)) (at start (s3_done)) (at start (s17_done)))
    :effect (and (at start (not (step_pending s49))) (at end (step_done s49)) (at end (s49_done)))
  )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s50)) (at start (s27_done)))
    :effect (and (at start (not (step_pending s50))) (at end (step_done s50)) (at end (s50_done)))
  )

  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s51)) (at start (s6_done)) (at start (s10_done)) (at start (s38_done)) (at start (s54_done)))
    :effect (and (at start (not (step_pending s51))) (at end (step_done s51)) (at end (s51_done)))
  )

  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s52)) (at start (s33_done)) (at start (s46_done)) (at start (s48_done)) (at start (s54_done)))
    :effect (and (at start (not (step_pending s52))) (at end (step_done s52)) (at end (s52_done)))
  )

  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s53)) (at start (s16_done)) (at start (s22_done)) (at start (s59_done)))
    :effect (and (at start (not (step_pending s53))) (at end (step_done s53)) (at end (s53_done)))
  )

  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s54)) (at start (s10_done)) (at start (s14_done)) (at start (s17_done)) (at start (s22_done)))
    :effect (and (at start (not (step_pending s54))) (at end (step_done s54)) (at end (s54_done)))
  )

  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s55)) (at start (s24_done)) (at start (s41_done)))
    :effect (and (at start (not (step_pending s55))) (at end (step_done s55)) (at end (s55_done)))
  )

  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s56)) (at start (s28_done)))
    :effect (and (at start (not (step_pending s56))) (at end (step_done s56)) (at end (s56_done)))
  )

  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s57)) (at start (s49_done)))
    :effect (and (at start (not (step_pending s57))) (at end (step_done s57)) (at end (s57_done)))
  )

  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending s58)) (at start (s29_done)) (at start (s40_done)) (at start (s42_done)))
    :effect (and (at start (not (step_pending s58))) (at end (step_done s58)) (at end (s58_done)))
  )

  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending s59))
    :effect (and (at start (not (step_pending s59))) (at end (step_done s59)) (at end (s59_done)))
  )

  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending s60)) (at start (s4_done)))
    :effect (and (at start (not (step_pending s60))) (at end (step_done s60)) (at end (s60_done)))
  )
)