(define (domain fry_dandelions)
  (:requirements :durative-actions :typing)
  (:types task)
  (:predicates
    (task_pending ?t - task)
    (s1_done) (s2_done) (s3_done) (s4_done) (s5_done)
    (s6_done) (s7_done) (s8_done) (s9_done) (s10_done)
    (s11_done) (s12_done) (s13_done) (s14_done) (s15_done)
    (s16_done) (s17_done) (s18_done) (s19_done) (s20_done)
    (s21_done) (s22_done) (s23_done) (s24_done) (s25_done)
    (s26_done) (s27_done) (s28_done) (s29_done) (s30_done)
    (s31_done) (s32_done) (s33_done) (s34_done) (s35_done)
    (s36_done) (s37_done) (s38_done) (s39_done) (s40_done)
    (s41_done) (s42_done) (s43_done) (s44_done) (s45_done)
    (s46_done) (s47_done) (s48_done) (s49_done) (s50_done)
  )

  (:durative-action step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (task_pending s1)) (at start (s6_done)))
    :effect (and (at start (not (task_pending s1))) (at end (s1_done)))
  )

  (:durative-action step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (task_pending s2))
    :effect (and (at start (not (task_pending s2))) (at end (s2_done)))
  )

  (:durative-action step3
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (task_pending s3)) (at start (s10_done)) (at start (s18_done)) (at start (s29_done)))
    :effect (and (at start (not (task_pending s3))) (at end (s3_done)))
  )

  (:durative-action step4
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (task_pending s4)) (at start (s5_done)) (at start (s16_done)) (at start (s40_done)))
    :effect (and (at start (not (task_pending s4))) (at end (s4_done)))
  )

  (:durative-action step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (task_pending s5)) (at start (s30_done)))
    :effect (and (at start (not (task_pending s5))) (at end (s5_done)))
  )

  (:durative-action step6
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (task_pending s6))
    :effect (and (at start (not (task_pending s6))) (at end (s6_done)))
  )

  (:durative-action step7
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (task_pending s7)) (at start (s8_done)) (at start (s13_done)) (at start (s34_done)) (at start (s21_done)))
    :effect (and (at start (not (task_pending s7))) (at end (s7_done)))
  )

  (:durative-action step8
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (task_pending s8))
    :effect (and (at start (not (task_pending s8))) (at end (s8_done)))
  )

  (:durative-action step9
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (task_pending s9))
    :effect (and (at start (not (task_pending s9))) (at end (s9_done)))
  )

  (:durative-action step10
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (task_pending s10)) (at start (s1_done)) (at start (s6_done)))
    :effect (and (at start (not (task_pending s10))) (at end (s10_done)))
  )

  (:durative-action step11
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (task_pending s11)) (at start (s13_done)) (at start (s42_done)) (at start (s50_done)))
    :effect (and (at start (not (task_pending s11))) (at end (s11_done)))
  )

  (:durative-action step12
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (task_pending s12)) (at start (s9_done)) (at start (s48_done)))
    :effect (and (at start (not (task_pending s12))) (at end (s12_done)))
  )

  (:durative-action step13
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (task_pending s13)) (at start (s23_done)))
    :effect (and (at start (not (task_pending s13))) (at end (s13_done)))
  )

  (:durative-action step14
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (task_pending s14)) (at start (s40_done)))
    :effect (and (at start (not (task_pending s14))) (at end (s14_done)))
  )

  (:durative-action step15
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (task_pending s15))
    :effect (and (at start (not (task_pending s15))) (at end (s15_done)))
  )

  (:durative-action step16
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (task_pending s16)) (at start (s17_done)))
    :effect (and (at start (not (task_pending s16))) (at end (s16_done)))
  )

  (:durative-action step17
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (task_pending s17))
    :effect (and (at start (not (task_pending s17))) (at end (s17_done)))
  )

  (:durative-action step18
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (task_pending s18)) (at start (s5_done)) (at start (s12_done)))
    :effect (and (at start (not (task_pending s18))) (at end (s18_done)))
  )

  (:durative-action step19
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (task_pending s19)) (at start (s13_done)) (at start (s27_done)) (at start (s45_done)))
    :effect (and (at start (not (task_pending s19))) (at end (s19_done)))
  )

  (:durative-action step20
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (task_pending s20)) (at start (s45_done)))
    :effect (and (at start (not (task_pending s20))) (at end (s20_done)))
  )

  (:durative-action step21
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (task_pending s21))
    :effect (and (at start (not (task_pending s21))) (at end (s21_done)))
  )

  (:durative-action step22
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (task_pending s22)) (at start (s21_done)))
    :effect (and (at start (not (task_pending s22))) (at end (s22_done)))
  )

  (:durative-action step23
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (task_pending s23))
    :effect (and (at start (not (task_pending s23))) (at end (s23_done)))
  )

  (:durative-action step24
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (task_pending s24)) (at start (s28_done)))
    :effect (and (at start (not (task_pending s24))) (at end (s24_done)))
  )

  (:durative-action step25
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (task_pending s25)) (at start (s37_done)) (at start (s40_done)))
    :effect (and (at start (not (task_pending s25))) (at end (s25_done)))
  )

  (:durative-action step26
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (task_pending s26))
    :effect (and (at start (not (task_pending s26))) (at end (s26_done)))
  )

  (:durative-action step27
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (task_pending s27)) (at start (s9_done)) (at start (s15_done)) (at start (s38_done)) (at start (s42_done)))
    :effect (and (at start (not (task_pending s27))) (at end (s27_done)))
  )

  (:durative-action step28
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (task_pending s28))
    :effect (and (at start (not (task_pending s28))) (at end (s28_done)))
  )

  (:durative-action step29
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (task_pending s29)) (at start (s8_done)))
    :effect (and (at start (not (task_pending s29))) (at end (s29_done)))
  )

  (:durative-action step30
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (task_pending s30)) (at start (s24_done)) (at start (s28_done)))
    :effect (and (at start (not (task_pending s30))) (at end (s30_done)))
  )

  (:durative-action step31
    :parameters ()
    :duration (= ?duration 720)
    :condition (and (at start (task_pending s31)) (at start (s7_done)))
    :effect (and (at start (not (task_pending s31))) (at end (s31_done)))
  )

  (:durative-action step32
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (task_pending s32)) (at start (s2_done)))
    :effect (and (at start (not (task_pending s32))) (at end (s32_done)))
  )

  (:durative-action step33
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (task_pending s33)) (at start (s20_done)) (at start (s26_done)) (at start (s34_done)))
    :effect (and (at start (not (task_pending s33))) (at end (s33_done)))
  )

  (:durative-action step34
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (task_pending s34)) (at start (s23_done)) (at start (s40_done)))
    :effect (and (at start (not (task_pending s34))) (at end (s34_done)))
  )

  (:durative-action step35
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (task_pending s35)) (at start (s1_done)) (at start (s47_done)))
    :effect (and (at start (not (task_pending s35))) (at end (s35_done)))
  )

  (:durative-action step36
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (task_pending s36)) (at start (s13_done)) (at start (s30_done)))
    :effect (and (at start (not (task_pending s36))) (at end (s36_done)))
  )

  (:durative-action step37
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (task_pending s37))
    :effect (and (at start (not (task_pending s37))) (at end (s37_done)))
  )

  (:durative-action step38
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (task_pending s38)) (at start (s26_done)))
    :effect (and (at start (not (task_pending s38))) (at end (s38_done)))
  )

  (:durative-action step39
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (task_pending s39)) (at start (s8_done)) (at start (s24_done)))
    :effect (and (at start (not (task_pending s39))) (at end (s39_done)))
  )

  (:durative-action step40
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (task_pending s40))
    :effect (and (at start (not (task_pending s40))) (at end (s40_done)))
  )

  (:durative-action step41
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (task_pending s41)) (at start (s1_done)) (at start (s7_done)) (at start (s14_done)) (at start (s29_done)))
    :effect (and (at start (not (task_pending s41))) (at end (s41_done)))
  )

  (:durative-action step42
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (task_pending s42))
    :effect (and (at start (not (task_pending s42))) (at end (s42_done)))
  )

  (:durative-action step43
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (task_pending s43)) (at start (s13_done)))
    :effect (and (at start (not (task_pending s43))) (at end (s43_done)))
  )

  (:durative-action step44
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (task_pending s44)) (at start (s12_done)) (at start (s34_done)) (at start (s35_done)))
    :effect (and (at start (not (task_pending s44))) (at end (s44_done)))
  )

  (:durative-action step45
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (task_pending s45)) (at start (s18_done)) (at start (s39_done)) (at start (s46_done)))
    :effect (and (at start (not (task_pending s45))) (at end (s45_done)))
  )

  (:durative-action step46
    :parameters ()
    :duration (= ?duration 360)
    :condition (and (at start (task_pending s46)) (at start (s4_done)) (at start (s14_done)))
    :effect (and (at start (not (task_pending s46))) (at end (s46_done)))
  )

  (:durative-action step47
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (task_pending s47)) (at start (s8_done)))
    :effect (and (at start (not (task_pending s47))) (at end (s47_done)))
  )

  (:durative-action step48
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (task_pending s48)) (at start (s1_done)) (at start (s21_done)) (at start (s22_done)))
    :effect (and (at start (not (task_pending s48))) (at end (s48_done)))
  )

  (:durative-action step49
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (task_pending s49)) (at start (s14_done)) (at start (s31_done)) (at start (s45_done)))
    :effect (and (at start (not (task_pending s49))) (at end (s49_done)))
  )

  (:durative-action step50
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (task_pending s50)) (at start (s9_done)))
    :effect (and (at start (not (task_pending s50))) (at end (s50_done)))
  )
)
