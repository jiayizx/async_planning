(define (domain obtain-book-name)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    ; unique semantic predicates for each step
    (s1_complete) (s2_complete) (s3_complete) (s4_complete) (s5_complete)
    (s6_complete) (s7_complete) (s8_complete) (s9_complete) (s10_complete)
    (s11_complete) (s12_complete) (s13_complete) (s14_complete) (s15_complete)
    (s16_complete) (s17_complete) (s18_complete) (s19_complete) (s20_complete)
    (s21_complete) (s22_complete) (s23_complete) (s24_complete) (s25_complete)
    (s26_complete) (s27_complete) (s28_complete) (s29_complete) (s30_complete)
    (s31_complete) (s32_complete) (s33_complete) (s34_complete) (s35_complete)
    (s36_complete) (s37_complete) (s38_complete) (s39_complete) (s40_complete)
    (s41_complete) (s42_complete) (s43_complete) (s44_complete) (s45_complete)
    (s46_complete) (s47_complete) (s48_complete) (s49_complete) (s50_complete)
  )

  ; 50 durative-actions, one per step
  (:durative-action do-step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_complete)))
  )

  (:durative-action do-step2
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step2) (s17_complete) (s39_complete)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_complete)))
  )

  (:durative-action do-step3
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step3) (s7_complete)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_complete)))
  )

  (:durative-action do-step4
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step4) (s13_complete) (s37_complete) (s44_complete)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_complete)))
  )

  (:durative-action do-step5
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step5) (s48_complete)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_complete)))
  )

  (:durative-action do-step6
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending step6) (s13_complete) (s25_complete) (s45_complete)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_complete)))
  )

  (:durative-action do-step7
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step7) (s17_complete) (s27_complete)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_complete)))
  )

  (:durative-action do-step8
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_complete)))
  )

  (:durative-action do-step9
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step9) (s1_complete)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_complete)))
  )

  (:durative-action do-step10
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step10) (s17_complete) (s39_complete)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_complete)))
  )

  (:durative-action do-step11
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step11) (s14_complete) (s42_complete) (s24_complete)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_complete)))
  )

  (:durative-action do-step12
    :parameters ()
    :duration (= ?duration 2400)
    :condition (at start (and (step_pending step12) (s22_complete) (s36_complete)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_complete)))
  )

  (:durative-action do-step13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step13) (s1_complete) (s22_complete)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_complete)))
  )

  (:durative-action do-step14
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_complete)))
  )

  (:durative-action do-step15
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step15) (s2_complete) (s9_complete)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_complete)))
  )

  (:durative-action do-step16
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_complete)))
  )

  (:durative-action do-step17
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step17) (s21_complete)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_complete)))
  )

  (:durative-action do-step18
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step18) (s46_complete)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_complete)))
  )

  (:durative-action do-step19
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step19) (s29_complete) (s35_complete)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_complete)))
  )

  (:durative-action do-step20
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step20) (s14_complete) (s37_complete)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_complete)))
  )

  (:durative-action do-step21
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step21) (s44_complete)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_complete)))
  )

  (:durative-action do-step22
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step22) (s17_complete) (s47_complete)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_complete)))
  )

  (:durative-action do-step23
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step23) (s3_complete) (s26_complete) (s31_complete) (s22_complete)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_complete)))
  )

  (:durative-action do-step24
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_complete)))
  )

  (:durative-action do-step25
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step25) (s16_complete) (s26_complete) (s36_complete)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_complete)))
  )

  (:durative-action do-step26
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_complete)))
  )

  (:durative-action do-step27
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step27) (s32_complete)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_complete)))
  )

  (:durative-action do-step28
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step28) (s1_complete) (s42_complete)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_complete)))
  )

  (:durative-action do-step29
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step29) (s20_complete) (s42_complete)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_complete)))
  )

  (:durative-action do-step30
    :parameters ()
    :duration (= ?duration 1500)
    :condition (at start (and (step_pending step30) (s2_complete) (s26_complete) (s33_complete)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_complete)))
  )

  (:durative-action do-step31
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step31) (s3_complete) (s16_complete)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_complete)))
  )

  (:durative-action do-step32
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_complete)))
  )

  (:durative-action do-step33
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_complete)))
  )

  (:durative-action do-step34
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step34) (s13_complete) (s25_complete)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_complete)))
  )

  (:durative-action do-step35
    :parameters ()
    :duration (= ?duration 3000)
    :condition (at start (and (step_pending step35) (s10_complete) (s44_complete)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_complete)))
  )

  (:durative-action do-step36
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step36)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_complete)))
  )

  (:durative-action do-step37
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step37))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_complete)))
  )

  (:durative-action do-step38
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step38) (s28_complete) (s39_complete)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_complete)))
  )

  (:durative-action do-step39
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_complete)))
  )

  (:durative-action do-step40
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step40) (s46_complete)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_complete)))
  )

  (:durative-action do-step41
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step41) (s46_complete)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_complete)))
  )

  (:durative-action do-step42
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (and (step_pending step42) (s15_complete) (s17_complete) (s49_complete)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_complete)))
  )

  (:durative-action do-step43
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step43) (s6_complete)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_complete)))
  )

  (:durative-action do-step44
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step44))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_complete)))
  )

  (:durative-action do-step45
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step45))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_complete)))
  )

  (:durative-action do-step46
    :parameters ()
    :duration (= ?duration 2400)
    :condition (at start (and (step_pending step46) (s36_complete)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_complete)))
  )

  (:durative-action do-step47
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step47) (s21_complete)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_complete)))
  )

  (:durative-action do-step48
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step48) (s7_complete) (s39_complete) (s46_complete)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_complete)))
  )

  (:durative-action do-step49
    :parameters ()
    :duration (= ?duration 1500)
    :condition (at start (and (step_pending step49) (s46_complete)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_complete)))
  )

  (:durative-action do-step50
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (and (step_pending step50) (s8_complete)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_complete)))
  )
)
