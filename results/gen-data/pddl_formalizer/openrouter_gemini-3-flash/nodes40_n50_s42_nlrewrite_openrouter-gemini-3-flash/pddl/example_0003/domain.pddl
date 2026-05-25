(define (domain chronic_illness_management)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
    (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done)
    (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (s31_done) (s32_done) (s33_done) (s34_done) (s35_done)
    (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
  )

  (:durative-action step1
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step1)) (at start (s31_done)))
    :effect (and (at start (not (step_pending step1))) (at end (s1_done)))
  )

  (:durative-action step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step2)) (at start (s9_done)) (at start (s16_done)) (at start (s22_done)) (at start (s39_done)))
    :effect (and (at start (not (step_pending step2))) (at end (s2_done)))
  )

  (:durative-action step3
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (s3_done)))
  )

  (:durative-action step4
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step4))
    :effect (and (at start (not (step_pending step4))) (at end (s4_done)))
  )

  (:durative-action step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (s15_done)) (at start (s19_done)))
    :effect (and (at start (not (step_pending step5))) (at end (s5_done)))
  )

  (:durative-action step6
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (s4_done)) (at start (s7_done)) (at start (s20_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending step6))) (at end (s6_done)))
  )

  (:durative-action step7
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (s7_done)))
  )

  (:durative-action step8
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step8)) (at start (s3_done)) (at start (s7_done)) (at start (s34_done)))
    :effect (and (at start (not (step_pending step8))) (at end (s8_done)))
  )

  (:durative-action step9
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step9)) (at start (s13_done)) (at start (s16_done)))
    :effect (and (at start (not (step_pending step9))) (at end (s9_done)))
  )

  (:durative-action step10
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step10)) (at start (s5_done)) (at start (s6_done)))
    :effect (and (at start (not (step_pending step10))) (at end (s10_done)))
  )

  (:durative-action step11
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step11)) (at start (s1_done)))
    :effect (and (at start (not (step_pending step11))) (at end (s11_done)))
  )

  (:durative-action step12
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step12)) (at start (s17_done)) (at start (s39_done)))
    :effect (and (at start (not (step_pending step12))) (at end (s12_done)))
  )

  (:durative-action step13
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step13)) (at start (s16_done)))
    :effect (and (at start (not (step_pending step13))) (at end (s13_done)))
  )

  (:durative-action step14
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step14)) (at start (s4_done)) (at start (s25_done)) (at start (s33_done)))
    :effect (and (at start (not (step_pending step14))) (at end (s14_done)))
  )

  (:durative-action step15
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step15)) (at start (s19_done)))
    :effect (and (at start (not (step_pending step15))) (at end (s15_done)))
  )

  (:durative-action step16
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (s16_done)))
  )

  (:durative-action step17
    :parameters ()
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step17)) (at start (s18_done)))
    :effect (and (at start (not (step_pending step17))) (at end (s17_done)))
  )

  (:durative-action step18
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step18)) (at start (s7_done)) (at start (s9_done)))
    :effect (and (at start (not (step_pending step18))) (at end (s18_done)))
  )

  (:durative-action step19
    :parameters ()
    :duration (= ?duration 345600)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (s19_done)))
  )

  (:durative-action step20
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step20)) (at start (s30_done)))
    :effect (and (at start (not (step_pending step20))) (at end (s20_done)))
  )

  (:durative-action step21
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step21)) (at start (s24_done)) (at start (s38_done)))
    :effect (and (at start (not (step_pending step21))) (at end (s21_done)))
  )

  (:durative-action step22
    :parameters ()
    :duration (= ?duration 5400)
    :condition (at start (step_pending step22))
    :effect (and (at start (not (step_pending step22))) (at end (s22_done)))
  )

  (:durative-action step23
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step23)) (at start (s8_done)) (at start (s18_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending step23))) (at end (s23_done)))
  )

  (:durative-action step24
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step24)) (at start (s2_done)) (at start (s8_done)) (at start (s27_done)))
    :effect (and (at start (not (step_pending step24))) (at end (s24_done)))
  )

  (:durative-action step25
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (s25_done)))
  )

  (:durative-action step26
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step26)) (at start (s30_done)) (at start (s38_done)))
    :effect (and (at start (not (step_pending step26))) (at end (s26_done)))
  )

  (:durative-action step27
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step27)) (at start (s35_done)) (at start (s38_done)))
    :effect (and (at start (not (step_pending step27))) (at end (s27_done)))
  )

  (:durative-action step28
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step28)) (at start (s10_done)) (at start (s13_done)) (at start (s32_done)))
    :effect (and (at start (not (step_pending step28))) (at end (s28_done)))
  )

  (:durative-action step29
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step29)) (at start (s2_done)) (at start (s21_done)) (at start (s33_done)))
    :effect (and (at start (not (step_pending step29))) (at end (s29_done)))
  )

  (:durative-action step30
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (s30_done)))
  )

  (:durative-action step31
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (s31_done)))
  )

  (:durative-action step32
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step32)) (at start (s13_done)) (at start (s31_done)))
    :effect (and (at start (not (step_pending step32))) (at end (s32_done)))
  )

  (:durative-action step33
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (s33_done)))
  )

  (:durative-action step34
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step34)) (at start (s19_done)))
    :effect (and (at start (not (step_pending step34))) (at end (s34_done)))
  )

  (:durative-action step35
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step35)) (at start (s15_done)))
    :effect (and (at start (not (step_pending step35))) (at end (s35_done)))
  )

  (:durative-action step36
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step36)) (at start (s39_done)))
    :effect (and (at start (not (step_pending step36))) (at end (s36_done)))
  )

  (:durative-action step37
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step37)) (at start (s5_done)) (at start (s20_done)) (at start (s40_done)))
    :effect (and (at start (not (step_pending step37))) (at end (s37_done)))
  )

  (:durative-action step38
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step38)) (at start (s16_done)))
    :effect (and (at start (not (step_pending step38))) (at end (s38_done)))
  )

  (:durative-action step39
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step39)) (at start (s17_done)))
    :effect (and (at start (not (step_pending step39))) (at end (s39_done)))
  )

  (:durative-action step40
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step40)) (at start (s3_done)))
    :effect (and (at start (not (step_pending step40))) (at end (s40_done)))
  )
)