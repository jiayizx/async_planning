(:domain hummus)
(:requirements (:durative-actions :typing))
(:types step)
(:predicates
  (step_pending step)
  (step_done step)
  (step1_semantic) (step2_semantic) (step3_semantic) (step4_semantic) (step5_semantic)
  (step6_semantic) (step7_semantic) (step8_semantic) (step9_semantic) (step10_semantic)
  (step11_semantic) (step12_semantic) (step13_semantic) (step14_semantic) (step15_semantic)
  (step16_semantic) (step17_semantic) (step18_semantic) (step19_semantic) (step20_semantic)
  (step21_semantic) (step22_semantic) (step23_semantic) (step24_semantic) (step25_semantic)
  (step26_semantic) (step27_semantic) (step28_semantic) (step29_semantic) (step30_semantic)
  (step31_semantic) (step32_semantic) (step33_semantic) (step34_semantic) (step35_semantic)
  (step36_semantic) (step37_semantic) (step38_semantic) (step39_semantic) (step40_semantic))

(:durative-action do_step1
  :duration 120
  :condition (and (at start (step_pending step1)) (at start (step9_semantic)) (at start (step22_semantic)))
  :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_semantic))))

(:durative-action do_step2
  :duration 180
  :condition (and (at start (step_pending step2)) (at start (step21_semantic)))
  :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_semantic))))

(:durative-action do_step3
  :duration 600
  :condition (at start (step_pending step3))
  :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_semantic))))

(:durative-action do_step4
  :duration 300
  :condition (and (at start (step_pending step4)) (at start (step29_semantic)))
  :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_semantic))))

(:durative-action do_step5
  :duration 120
  :condition (and (at start (step_pending step5)) (at start (step6_semantic)))
  :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_semantic))))

(:durative-action do_step6
  :duration 60
  :condition (and (at start (step_pending step6)) (at start (step36_semantic)))
  :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_semantic))))

(:durative-action do_step7
  :duration 240
  :condition (and (at start (step_pending step7)) (at start (step24_semantic)))
  :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_semantic))))

(:durative-action do_step8
  :duration 43200
  :condition (and (at start (step_pending step8)) (at start (step3_semantic)) (at start (step32_semantic)))
  :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_semantic))))

(:durative-action do_step9
  :duration 1800
  :condition (and (at start (step_pending step9)) (at start (step40_semantic)))
  :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_semantic))))

(:durative-action do_step10
  :duration 60
  :condition (at start (step_pending step10))
  :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_semantic))))

(:durative-action do_step11
  :duration 120
  :condition (and (at start (step_pending step11)) (at start (step19_semantic)) (at start (step21_semantic)) (at start (step29_semantic)))
  :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_semantic))))

(:durative-action do_step12
  :duration 60
  :condition (at start (step_pending step12))
  :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_semantic))))

(:durative-action do_step13
  :duration 180
  :condition (and (at start (step_pending step13)) (at start (step11_semantic)) (at start (step23_semantic)))
  :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_semantic))))

(:durative-action do_step14
  :duration 120
  :condition (and (at start (step_pending step14)) (at start (step29_semantic)))
  :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_semantic))))

(:durative-action do_step15
  :duration 120
  :condition (and (at start (step_pending step15)) (at start (step10_semantic)) (at start (step12_semantic)) (at start (step39_semantic)))
  :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_semantic))))

(:durative-action do_step16
  :duration 30
  :condition (and (at start (step_pending step16)) (at start (step9_semantic)) (at start (step37_semantic)))
  :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_semantic))))

(:durative-action do_step17
  :duration 60
  :condition (and (at start (step_pending step17)) (at start (step9_semantic)) (at start (step21_semantic)))
  :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_semantic))))

(:durative-action do_step18
  :duration 1200
  :condition (and (at start (step_pending step18)) (at start (step25_semantic)) (at start (step29_semantic)))
  :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_semantic))))

(:durative-action do_step19
  :duration 120
  :condition (at start (step_pending step19))
  :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_semantic))))

(:durative-action do_step20
  :duration 60
  :condition (and (at start (step_pending step20)) (at start (step9_semantic)) (at start (step25_semantic)) (at start (step39_semantic)))
  :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_semantic))))

(:durative-action do_step21
  :duration 120
  :condition (at start (step_pending step21))
  :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_semantic))))

(:durative-action do_step22
  :duration 30
  :condition (and (at start (step_pending step22)) (at start (step20_semantic)))
  :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_semantic))))

(:durative-action do_step23
  :duration 60
  :condition (and (at start (step_pending step23)) (at start (step19_semantic)) (at start (step25_semantic)) (at start (step32_semantic)))
  :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_semantic))))

(:durative-action do_step24
  :duration 180
  :condition (and (at start (step_pending step24)) (at start (step39_semantic)))
  :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_semantic))))

(:durative-action do_step25
  :duration 600
  :condition (and (at start (step_pending step25)) (at start (step26_semantic)))
  :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_semantic))))

(:durative-action do_step26
  :duration 3600
  :condition (at start (step_pending step26))
  :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_semantic))))

(:durative-action do_step27
  :duration 300
  :condition (and (at start (step_pending step27)) (at start (step18_semantic)))
  :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_semantic))))

(:durative-action do_step28
  :duration 60
  :condition (at start (step_pending step28))
  :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_semantic))))

(:durative-action do_step29
  :duration 60
  :condition (and (at start (step_pending step29)) (at start (step28_semantic)))
  :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_semantic))))

(:durative-action do_step30
  :duration 120
  :condition (at start (step_pending step30))
  :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_semantic))))

(:durative-action do_step31
  :duration 3600
  :condition (and (at start (step_pending step31)) (at start (step8_semantic)) (at start (step30_semantic)) (at start (step33_semantic)) (at start (step38_semantic)))
  :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step31_semantic))))

(:durative-action do_step32
  :duration 120
  :condition (and (at start (step_pending step32)) (at start (step9_semantic)) (at start (step39_semantic)))
  :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step32_semantic))))

(:durative-action do_step33
  :duration 180
  :condition (and (at start (step_pending step33)) (at start (step27_semantic)) (at start (step38_semantic)))
  :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step33_semantic))))

(:durative-action do_step34
  :duration 240
  :condition (and (at start (step_pending step34)) (at start (step28_semantic)) (at start (step32_semantic)) (at start (step35_semantic)))
  :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step34_semantic))))

(:durative-action do_step35
  :duration 300
  :condition (at start (step_pending step35))
  :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step35_semantic))))

(:durative-action do_step36
  :duration 2700
  :condition (and (at start (step_pending step36)) (at start (step3_semantic)) (at start (step35_semantic)))
  :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step36_semantic))))

(:durative-action do_step37
  :duration 300
  :condition (and (at start (step_pending step37)) (at start (step18_semantic)))
  :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step37_semantic))))

(:durative-action do_step38
  :duration 60
  :condition (and (at start (step_pending step38)) (at start (step26_semantic)) (at start (step30_semantic)))
  :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step38_semantic))))

(:durative-action do_step39
  :duration 600
  :condition (at start (step_pending step39))
  :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step39_semantic))))

(:durative-action do_step40
  :duration 3000
  :condition (and (at start (step_pending step40)) (at start (step14_semantic)) (at start (step28_semantic)) (at start (step39_semantic)))
  :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step40_semantic))))