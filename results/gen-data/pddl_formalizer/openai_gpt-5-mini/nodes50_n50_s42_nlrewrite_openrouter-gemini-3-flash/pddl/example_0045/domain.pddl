(define (domain morning_routine)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_finished) (s2_finished) (s3_finished) (s4_finished) (s5_finished)
    (s6_finished) (s7_finished) (s8_finished) (s9_finished) (s10_finished)
    (s11_finished) (s12_finished) (s13_finished) (s14_finished) (s15_finished)
    (s16_finished) (s17_finished) (s18_finished) (s19_finished) (s20_finished)
    (s21_finished) (s22_finished) (s23_finished) (s24_finished) (s25_finished)
    (s26_finished) (s27_finished) (s28_finished) (s29_finished) (s30_finished)
    (s31_finished) (s32_finished) (s33_finished) (s34_finished) (s35_finished)
    (s36_finished) (s37_finished) (s38_finished) (s39_finished) (s40_finished)
    (s41_finished) (s42_finished) (s43_finished) (s44_finished) (s45_finished)
    (s46_finished) (s47_finished) (s48_finished) (s49_finished) (s50_finished)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_finished)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step2)) (at start (s11_finished)) (at start (s39_finished)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_finished)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (step_pending step3)) (at start (s36_finished)) (at start (s41_finished)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_finished)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (s5_finished)) (at start (s9_finished)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_finished)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (s9_finished)) (at start (s21_finished)) (at start (s35_finished)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_finished)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step6)) (at start (s3_finished)) (at start (s7_finished)) (at start (s17_finished)) (at start (s36_finished)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_finished)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step7)) (at start (s19_finished)) (at start (s36_finished)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_finished)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step8)) (at start (s7_finished)) (at start (s36_finished)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_finished)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (s11_finished)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_finished)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step10)) (at start (s11_finished)) (at start (s24_finished)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_finished)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_finished)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step12)) (at start (s1_finished)) (at start (s14_finished)) (at start (s30_finished)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_finished)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step13)) (at start (s24_finished)) (at start (s30_finished)) (at start (s40_finished)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_finished)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_finished)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_finished)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step16)) (at start (s14_finished)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (s16_finished)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step17))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (s17_finished)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step18)) (at start (s29_finished)) (at start (s30_finished)) (at start (s39_finished)) (at start (s50_finished)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (s18_finished)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step19)) (at start (s1_finished)) (at start (s17_finished)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (s19_finished)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step20)) (at start (s13_finished)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (s20_finished)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step21)) (at start (s19_finished)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (s21_finished)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step22)) (at start (s10_finished)) (at start (s28_finished)) (at start (s39_finished)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (s22_finished)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step23)) (at start (s48_finished)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (s23_finished)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (step_pending step24))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (s24_finished)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step25)) (at start (s42_finished)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (s25_finished)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (s26_finished)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step27)) (at start (s3_finished)) (at start (s25_finished)) (at start (s36_finished)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (s27_finished)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step28)) (at start (s6_finished)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (s28_finished)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step29)) (at start (s9_finished)) (at start (s10_finished)) (at start (s45_finished)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (s29_finished)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (s30_finished)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step31)) (at start (s7_finished)) (at start (s25_finished)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (s31_finished)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step32)) (at start (s23_finished)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (s32_finished)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step33)) (at start (s29_finished)) (at start (s36_finished)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (s33_finished)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (s34_finished)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step35)) (at start (s1_finished)) (at start (s14_finished)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (s35_finished)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step36)) (at start (s41_finished)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (s36_finished)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step37)) (at start (s2_finished)) (at start (s8_finished)) (at start (s21_finished)) (at start (s38_finished)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (s37_finished)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step38)) (at start (s8_finished)) (at start (s26_finished)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (s38_finished)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 30)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (s39_finished)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (s40_finished)))
  )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 10)
    :condition (at start (step_pending step41))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (s41_finished)))
  )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step42)) (at start (s36_finished)))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (s42_finished)))
  )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step43)) (at start (s20_finished)) (at start (s13_finished)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (s43_finished)))
  )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step44)) (at start (s33_finished)) (at start (s41_finished)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (s44_finished)))
  )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step45)) (at start (s14_finished)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (s45_finished)))
  )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step46)) (at start (s7_finished)) (at start (s25_finished)) (at start (s38_finished)) (at start (s47_finished)) (at start (s49_finished)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (s46_finished)))
  )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step47)) (at start (s15_finished)) (at start (s34_finished)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (s47_finished)))
  )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step48)) (at start (s2_finished)) (at start (s11_finished)) (at start (s41_finished)))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (s48_finished)))
  )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step49)) (at start (s39_finished)) (at start (s45_finished)))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (s49_finished)))
  )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step50)) (at start (s8_finished)))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (s50_finished)))
  )
)
