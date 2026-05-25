(define (domain over_the_hill_cake)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_complete)
    (step2_complete)
    (step3_complete)
    (step4_complete)
    (step5_complete)
    (step6_complete)
    (step7_complete)
    (step8_complete)
    (step9_complete)
    (step10_complete)
    (step11_complete)
    (step12_complete)
    (step13_complete)
    (step14_complete)
    (step15_complete)
    (step16_complete)
    (step17_complete)
    (step18_complete)
    (step19_complete)
    (step20_complete)
    (step21_complete)
    (step22_complete)
    (step23_complete)
    (step24_complete)
    (step25_complete)
    (step26_complete)
    (step27_complete)
    (step28_complete)
    (step29_complete)
    (step30_complete)
    (step31_complete)
    (step32_complete)
    (step33_complete)
    (step34_complete)
    (step35_complete)
    (step36_complete)
    (step37_complete)
    (step38_complete)
    (step39_complete)
    (step40_complete)
  )

  ; Each durative-action corresponds to one step. Conditions enforce all listed predecessors via their semantic predicates.

  (:durative-action do-step1
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step1)) (at start (step2_complete)) (at start (step10_complete)) (at start (step13_complete)) (at start (step20_complete)) (at start (step31_complete)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_complete)))
  )

  (:durative-action do-step2
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_complete)))
  )

  (:durative-action do-step3
    :duration (= ?duration 900)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_complete)))
  )

  (:durative-action do-step4
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step4)) (at start (step26_complete)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_complete)))
  )

  (:durative-action do-step5
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (step13_complete)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_complete)))
  )

  (:durative-action do-step6
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step6)) (at start (step9_complete)) (at start (step15_complete)) (at start (step32_complete)) (at start (step33_complete)) (at start (step34_complete)) (at start (step40_complete)) (at start (step10_complete)) (at start (step24_complete)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_complete)))
  )

  (:durative-action do-step7
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step7)) (at start (step8_complete)) (at start (step16_complete)) (at start (step32_complete)) (at start (step33_complete)) (at start (step15_complete)) (at start (step40_complete)) (at start (step10_complete)) (at start (step24_complete)) (at start (step34_complete)) (at start (step26_complete)) (at start (step37_complete)) (at start (step27_complete)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_complete)))
  )

  (:durative-action do-step8
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step8)) (at start (step16_complete)) (at start (step32_complete)) (at start (step33_complete)) (at start (step15_complete)) (at start (step40_complete)) (at start (step10_complete)) (at start (step24_complete)) (at start (step34_complete)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_complete)))
  )

  (:durative-action do-step9
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step9)) (at start (step33_complete)) (at start (step15_complete)) (at start (step32_complete)) (at start (step40_complete)) (at start (step10_complete)) (at start (step24_complete)) (at start (step34_complete)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_complete)))
  )

  (:durative-action do-step10
    :duration (= ?duration 3600)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_complete)))
  )

  (:durative-action do-step11
    :duration (= ?duration 1800)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_complete)))
  )

  (:durative-action do-step12
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step12)) (at start (step8_complete)) (at start (step16_complete)) (at start (step32_complete)) (at start (step33_complete)) (at start (step15_complete)) (at start (step40_complete)) (at start (step10_complete)) (at start (step24_complete)) (at start (step34_complete)) (at start (step23_complete)) (at start (step21_complete)) (at start (step9_complete)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_complete)))
  )

  (:durative-action do-step13
    :duration (= ?duration 600)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_complete)))
  )

  (:durative-action do-step14
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step14)) (at start (step26_complete)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_complete)))
  )

  (:durative-action do-step15
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step15)) (at start (step10_complete)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_complete)))
  )

  (:durative-action do-step16
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step16)) (at start (step32_complete)) (at start (step33_complete)) (at start (step15_complete)) (at start (step40_complete)) (at start (step10_complete)) (at start (step24_complete)) (at start (step34_complete)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_complete)))
  )

  (:durative-action do-step17
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step17)) (at start (step29_complete)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_complete)))
  )

  (:durative-action do-step18
    :duration (= ?duration 2400)
    :condition (and (at start (step_pending step18)) (at start (step38_complete)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_complete)))
  )

  (:durative-action do-step19
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step19)) (at start (step3_complete)) (at start (step7_complete)) (at start (step8_complete)) (at start (step16_complete)) (at start (step32_complete)) (at start (step33_complete)) (at start (step15_complete)) (at start (step40_complete)) (at start (step10_complete)) (at start (step24_complete)) (at start (step34_complete)) (at start (step20_complete)) (at start (step2_complete)) (at start (step28_complete)) (at start (step30_complete)) (at start (step26_complete)) (at start (step37_complete)) (at start (step27_complete)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_complete)))
  )

  (:durative-action do-step20
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step20)) (at start (step2_complete)) (at start (step10_complete)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_complete)))
  )

  (:durative-action do-step21
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step21)) (at start (step9_complete)) (at start (step33_complete)) (at start (step15_complete)) (at start (step32_complete)) (at start (step40_complete)) (at start (step10_complete)) (at start (step24_complete)) (at start (step34_complete)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_complete)))
  )

  (:durative-action do-step22
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step22)) (at start (step3_complete)) (at start (step11_complete)) (at start (step35_complete)) (at start (step17_complete)) (at start (step29_complete)) (at start (step18_complete)) (at start (step38_complete)) (at start (step20_complete)) (at start (step2_complete)) (at start (step10_complete)) (at start (step4_complete)) (at start (step26_complete)) (at start (step36_complete)) (at start (step30_complete)) (at start (step39_complete)) (at start (step24_complete)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_complete)))
  )

  (:durative-action do-step23
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step23)) (at start (step21_complete)) (at start (step9_complete)) (at start (step33_complete)) (at start (step15_complete)) (at start (step32_complete)) (at start (step40_complete)) (at start (step10_complete)) (at start (step24_complete)) (at start (step34_complete)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_complete)))
  )

  (:durative-action do-step24
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step24)) (at start (step10_complete)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_complete)))
  )

  (:durative-action do-step25
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step25)) (at start (step14_complete)) (at start (step26_complete)) (at start (step35_complete)) (at start (step17_complete)) (at start (step29_complete)) (at start (step18_complete)) (at start (step38_complete)) (at start (step20_complete)) (at start (step2_complete)) (at start (step10_complete)) (at start (step4_complete)) (at start (step36_complete)) (at start (step30_complete)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_complete)))
  )

  (:durative-action do-step26
    :duration (= ?duration 259200)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_complete)))
  )

  (:durative-action do-step27
    :duration (= ?duration 300)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_complete)))
  )

  (:durative-action do-step28
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step28)) (at start (step30_complete)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_complete)))
  )

  (:durative-action do-step29
    :duration (= ?duration 600)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_complete)))
  )

  (:durative-action do-step30
    :duration (= ?duration 600)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_complete)))
  )

  (:durative-action do-step31
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step31)) (at start (step10_complete)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step31_complete)))
  )

  (:durative-action do-step32
    :duration (= ?duration 1200)
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step32_complete)))
  )

  (:durative-action do-step33
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step33)) (at start (step15_complete)) (at start (step32_complete)) (at start (step40_complete)) (at start (step10_complete)) (at start (step24_complete)) (at start (step34_complete)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step33_complete)))
  )

  (:durative-action do-step34
    :duration (= ?duration 300)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step34_complete)))
  )

  (:durative-action do-step35
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step35)) (at start (step4_complete)) (at start (step26_complete)) (at start (step17_complete)) (at start (step29_complete)) (at start (step18_complete)) (at start (step38_complete)) (at start (step20_complete)) (at start (step2_complete)) (at start (step10_complete)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step35_complete)))
  )

  (:durative-action do-step36
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step36)) (at start (step30_complete)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step36_complete)))
  )

  (:durative-action do-step37
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step37)) (at start (step10_complete)) (at start (step27_complete)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step37_complete)))
  )

  (:durative-action do-step38
    :duration (= ?duration 600)
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step38_complete)))
  )

  (:durative-action do-step39
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step39)) (at start (step24_complete)) (at start (step10_complete)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step39_complete)))
  )

  (:durative-action do-step40
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step40)) (at start (step24_complete)) (at start (step10_complete)) (at start (step34_complete)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step40_complete)))
  )
)
