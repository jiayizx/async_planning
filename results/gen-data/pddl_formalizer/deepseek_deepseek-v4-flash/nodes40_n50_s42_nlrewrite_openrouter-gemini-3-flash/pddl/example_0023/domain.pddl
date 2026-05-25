(define (domain orchid_care)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done) (step2_done) (step3_done) (step4_done) (step5_done)
    (step6_done) (step7_done) (step8_done) (step9_done) (step10_done)
    (step11_done) (step12_done) (step13_done) (step14_done) (step15_done)
    (step16_done) (step17_done) (step18_done) (step19_done) (step20_done)
    (step21_done) (step22_done) (step23_done) (step24_done) (step25_done)
    (step26_done) (step27_done) (step28_done) (step29_done) (step30_done)
    (step31_done) (step32_done) (step33_done) (step34_done) (step35_done)
    (step36_done) (step37_done) (step38_done) (step39_done) (step40_done)
    (final_step_completed))
  (:durative-action do_step1
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step1)) (at start (step2_done)) (at start (step3_done)) (at start (step4_done)) (at start (step5_done)) (at start (step6_done)) (at start (step11_done)) (at start (step13_done)) (at start (step14_done)) (at start (step17_done)) (at start (step19_done)) (at start (step20_done)) (at start (step23_done)) (at start (step30_done)) (at start (step31_done)) (at start (step32_done)) (at start (step35_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_done))))
  (:durative-action do_step2
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_done))))
  (:durative-action do_step3
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step3)) (at start (step2_done)) (at start (step5_done)) (at start (step6_done)) (at start (step14_done)) (at start (step17_done)) (at start (step19_done)) (at start (step20_done)) (at start (step23_done)) (at start (step30_done)) (at start (step31_done)) (at start (step32_done)) (at start (step35_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_done))))
  (:durative-action do_step4
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step4)) (at start (step13_done)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_done))))
  (:durative-action do_step5
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (step2_done)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_done))))
  (:durative-action do_step6
    :duration (= ?duration 600)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_done))))
  (:durative-action do_step7
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step7)) (at start (step20_done)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_done))))
  (:durative-action do_step8
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step8)) (at start (step14_done)) (at start (step20_done)) (at start (step23_done)) (at start (step30_done)) (at start (step32_done)) (at start (step35_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_done))))
  (:durative-action do_step9
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (step1_done)) (at start (step2_done)) (at start (step3_done)) (at start (step4_done)) (at start (step5_done)) (at start (step6_done)) (at start (step8_done)) (at start (step11_done)) (at start (step13_done)) (at start (step14_done)) (at start (step15_done)) (at start (step16_done)) (at start (step17_done)) (at start (step19_done)) (at start (step20_done)) (at start (step22_done)) (at start (step23_done)) (at start (step24_done)) (at start (step27_done)) (at start (step30_done)) (at start (step31_done)) (at start (step32_done)) (at start (step34_done)) (at start (step35_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_done)) (at end (final_step_completed))))
  (:durative-action do_step10
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step10)) (at start (step13_done)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_done))))
  (:durative-action do_step11
    :duration (= ?duration 30)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_done))))
  (:durative-action do_step12
    :duration (= ?duration 1200)
    :condition (at start (step_pending step12))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_done))))
  (:durative-action do_step13
    :duration (= ?duration 3600)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_done))))
  (:durative-action do_step14
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step14)) (at start (step20_done)) (at start (step23_done)) (at start (step32_done)) (at start (step35_done)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_done))))
  (:durative-action do_step15
    :duration (= ?duration 30)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_done))))
  (:durative-action do_step16
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step16)) (at start (step1_done)) (at start (step2_done)) (at start (step3_done)) (at start (step4_done)) (at start (step5_done)) (at start (step6_done)) (at start (step8_done)) (at start (step11_done)) (at start (step13_done)) (at start (step14_done)) (at start (step15_done)) (at start (step17_done)) (at start (step19_done)) (at start (step20_done)) (at start (step23_done)) (at start (step24_done)) (at start (step27_done)) (at start (step30_done)) (at start (step31_done)) (at start (step32_done)) (at start (step34_done)) (at start (step35_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_done))))
  (:durative-action do_step17
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step17)) (at start (step2_done)) (at start (step5_done)) (at start (step6_done)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_done))))
  (:durative-action do_step18
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step18)) (at start (step2_done)) (at start (step12_done)) (at start (step23_done)) (at start (step25_done)) (at start (step32_done)) (at start (step35_done)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_done))))
  (:durative-action do_step19
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step19)) (at start (step2_done)) (at start (step5_done)) (at start (step6_done)) (at start (step17_done)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_done))))
  (:durative-action do_step20
    :duration (= ?duration 900)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_done))))
  (:durative-action do_step21
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step21)) (at start (step2_done)) (at start (step5_done)) (at start (step6_done)) (at start (step17_done)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_done))))
  (:durative-action do_step22
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step22)) (at start (step1_done)) (at start (step2_done)) (at start (step3_done)) (at start (step4_done)) (at start (step5_done)) (at start (step6_done)) (at start (step11_done)) (at start (step13_done)) (at start (step14_done)) (at start (step17_done)) (at start (step19_done)) (at start (step20_done)) (at start (step23_done)) (at start (step30_done)) (at start (step31_done)) (at start (step32_done)) (at start (step35_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_done))))
  (:durative-action do_step23
    :duration (= ?duration 300)
    :condition (at start (step_pending step23))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_done))))
  (:durative-action do_step24
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step24)) (at start (step8_done)) (at start (step13_done)) (at start (step14_done)) (at start (step20_done)) (at start (step23_done)) (at start (step30_done)) (at start (step32_done)) (at start (step35_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_done))))
  (:durative-action do_step25
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step25)) (at start (step2_done)) (at start (step23_done)) (at start (step32_done)) (at start (step35_done)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_done))))
  (:durative-action do_step26
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step26)) (at start (step2_done)) (at start (step4_done)) (at start (step5_done)) (at start (step6_done)) (at start (step8_done)) (at start (step13_done)) (at start (step14_done)) (at start (step17_done)) (at start (step19_done)) (at start (step20_done)) (at start (step23_done)) (at start (step30_done)) (at start (step31_done)) (at start (step32_done)) (at start (step35_done)) (at start (step36_done)) (at start (step37_done)) (at start (step39_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_done))))
  (:durative-action do_step27
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step27)) (at start (step20_done)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_done))))
  (:durative-action do_step28
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step28)) (at start (step6_done)) (at start (step13_done)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_done))))
  (:durative-action do_step29
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step29)) (at start (step2_done)) (at start (step5_done)) (at start (step6_done)) (at start (step17_done)) (at start (step21_done)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_done))))
  (:durative-action do_step30
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step30)) (at start (step14_done)) (at start (step20_done)) (at start (step23_done)) (at start (step32_done)) (at start (step35_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_done))))
  (:durative-action do_step31
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step31)) (at start (step2_done)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step31_done))))
  (:durative-action do_step32
    :duration (= ?duration 43200)
    :condition (and (at start (step_pending step32)) (at start (step23_done)) (at start (step35_done)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step32_done))))
  (:durative-action do_step33
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step33)) (at start (step1_done)) (at start (step2_done)) (at start (step3_done)) (at start (step4_done)) (at start (step5_done)) (at start (step6_done)) (at start (step8_done)) (at start (step11_done)) (at start (step13_done)) (at start (step14_done)) (at start (step15_done)) (at start (step16_done)) (at start (step17_done)) (at start (step19_done)) (at start (step20_done)) (at start (step22_done)) (at start (step23_done)) (at start (step24_done)) (at start (step27_done)) (at start (step30_done)) (at start (step31_done)) (at start (step32_done)) (at start (step34_done)) (at start (step35_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step33_done))))
  (:durative-action do_step34
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step34)) (at start (step1_done)) (at start (step2_done)) (at start (step3_done)) (at start (step4_done)) (at start (step5_done)) (at start (step6_done)) (at start (step11_done)) (at start (step13_done)) (at start (step14_done)) (at start (step17_done)) (at start (step19_done)) (at start (step20_done)) (at start (step23_done)) (at start (step30_done)) (at start (step31_done)) (at start (step32_done)) (at start (step35_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step34_done))))
  (:durative-action do_step35
    :duration (= ?duration 900)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step35_done))))
  (:durative-action do_step36
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step36)) (at start (step2_done)) (at start (step5_done)) (at start (step6_done)) (at start (step17_done)) (at start (step19_done)) (at start (step31_done)) (at start (step37_done)) (at start (step39_done)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step36_done))))
  (:durative-action do_step37
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step37)) (at start (step2_done)) (at start (step31_done)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step37_done))))
  (:durative-action do_step38
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step38)) (at start (step2_done)) (at start (step5_done)) (at start (step6_done)) (at start (step15_done)) (at start (step17_done)) (at start (step21_done)) (at start (step29_done)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step38_done))))
  (:durative-action do_step39
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step39)) (at start (step2_done)) (at start (step5_done)) (at start (step6_done)) (at start (step17_done)) (at start (step19_done)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step39_done))))
  (:durative-action do_step40
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step40)) (at start (step23_done)) (at start (step32_done)) (at start (step35_done)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step40_done))))
)