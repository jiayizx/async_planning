(define (domain start-love-story)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
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
  )

  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_done)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step2)) (at start (s1_done)) (at start (s10_done)) (at start (s13_done)) (at start (s16_done)) (at start (s27_done)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_done)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step3)) (at start (s12_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_done)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_done)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step5)) (at start (s18_done)) (at start (s28_done)) (at start (s45_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_done)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step6)) (at start (s18_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_done)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (s14_done)) (at start (s3_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_done)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step8)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_done)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (s30_done)) (at start (s47_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_done)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step10)) (at start (s26_done)) (at start (s32_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_done)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step11)) (at start (s1_done)) (at start (s13_done)) (at start (s18_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_done)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step12)) (at start (s13_done)) (at start (s24_done)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_done)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step13)) (at start (s19_done)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_done)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step14)) (at start (s50_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_done)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step15)) (at start (s25_done)) (at start (s37_done)) (at start (s41_done)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_done)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_done)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_done)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_done)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_done)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step20)) (at start (s21_done)) (at start (s45_done)) (at start (s50_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_done)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step21)) (at start (s4_done)) (at start (s48_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_done)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step22)) (at start (s38_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_done)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step23)) (at start (s25_done)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_done)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step24)) (at start (s29_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_done)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step25)) (at start (s1_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_done)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step26)) (at start (s44_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_done)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step27)) (at start (s16_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_done)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step28))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_done)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_done)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step30)) (at start (s17_done)) (at start (s18_done)) (at start (s42_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_done)))
  )

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_done)))
  )

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step32)) (at start (s19_done)) (at start (s38_done)) (at start (s39_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_done)))
  )

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step33)) (at start (s20_done)) (at start (s35_done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_done)))
  )

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step34)) (at start (s16_done)) (at start (s25_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_done)))
  )

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step35)) (at start (s11_done)) (at start (s49_done)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_done)))
  )

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step36)) (at start (s7_done)) (at start (s23_done)) (at start (s28_done)) (at start (s40_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_done)))
  )

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step37)) (at start (s11_done)) (at start (s24_done)) (at start (s46_done)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_done)))
  )

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step38)) (at start (s23_done)) (at start (s28_done)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_done)))
  )

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step39)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_done)))
  )

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step40)) (at start (s19_done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_done)))
  )

  (:durative-action do-step41
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step41)) (at start (s2_done)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_done)))
  )

  (:durative-action do-step42
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step42)) (at start (s18_done)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_done)))
  )

  (:durative-action do-step43
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step43)) (at start (s1_done)) (at start (s4_done)) (at start (s19_done)) (at start (s21_done)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_done)))
  )

  (:durative-action do-step44
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step44)) (at start (s18_done)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_done)))
  )

  (:durative-action do-step45
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_done)))
  )

  (:durative-action do-step46
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step46)) (at start (s33_done)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_done)))
  )

  (:durative-action do-step47
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step47)) (at start (s6_done)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_done)))
  )

  (:durative-action do-step48
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step48)) (at start (s4_done)) (at start (s5_done)) (at start (s14_done)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_done)))
  )

  (:durative-action do-step49
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_done)))
  )

  (:durative-action do-step50
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step50)) (at start (s11_done)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_done)))
  )
)
