(define (domain over_the_hill_cake)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_done ?s - step)
    (step2_done ?s - step)
    (step3_done ?s - step)
    (step4_done ?s - step)
    (step5_done ?s - step)
    (step6_done ?s - step)
    (step7_done ?s - step)
    (step8_done ?s - step)
    (step9_done ?s - step)
    (step10_done ?s - step)
    (step11_done ?s - step)
    (step12_done ?s - step)
    (step13_done ?s - step)
    (step14_done ?s - step)
    (step15_done ?s - step)
    (step16_done ?s - step)
    (step17_done ?s - step)
    (step18_done ?s - step)
    (step19_done ?s - step)
    (step20_done ?s - step)
    (step21_done ?s - step)
    (step22_done ?s - step)
    (step23_done ?s - step)
    (step24_done ?s - step)
    (step25_done ?s - step)
    (step26_done ?s - step)
    (step27_done ?s - step)
    (step28_done ?s - step)
    (step29_done ?s - step)
    (step30_done ?s - step)
    (step31_done ?s - step)
    (step32_done ?s - step)
    (step33_done ?s - step)
    (step34_done ?s - step)
    (step35_done ?s - step)
    (step36_done ?s - step)
    (step37_done ?s - step)
    (step38_done ?s - step)
    (step39_done ?s - step)
    (step40_done ?s - step)
  )
  (:durative-action do_step1
    :duration 1200
    :condition (and (at start (step_pending step1)) (at start (step13_done step1)) (at start (step20_done step1)) (at start (step31_done step1)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_done step1))))
  (:durative-action do_step2
    :duration 600
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_done step2))))
  (:durative-action do_step3
    :duration 900
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_done step3))))
  (:durative-action do_step4
    :duration 900
    :condition (and (at start (step_pending step4)) (at start (step26_done step4)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_done step4))))
  (:durative-action do_step5
    :duration 300
    :condition (and (at start (step_pending step5)) (at start (step13_done step5)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_done step5))))
  (:durative-action do_step6
    :duration 600
    :condition (and (at start (step_pending step6)) (at start (step9_done step6)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_done step6))))
  (:durative-action do_step7
    :duration 600
    :condition (and (at start (step_pending step7)) (at start (step8_done step7)) (at start (step26_done step7)) (at start (step37_done step7)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_done step7))))
  (:durative-action do_step8
    :duration 2700
    :condition (and (at start (step_pending step8)) (at start (step16_done step8)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_done step8))))
  (:durative-action do_step9
    :duration 900
    :condition (and (at start (step_pending step9)) (at start (step33_done step9)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_done step9))))
  (:durative-action do_step10
    :duration 3600
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_done step10))))
  (:durative-action do_step11
    :duration 1800
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_done step11))))
  (:durative-action do_step12
    :duration 3600
    :condition (and (at start (step_pending step12)) (at start (step8_done step12)) (at start (step23_done step12)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_done step12))))
  (:durative-action do_step13
    :duration 600
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_done step13))))
  (:durative-action do_step14
    :duration 1200
    :condition (and (at start (step_pending step14)) (at start (step26_done step14)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_done step14))))
  (:durative-action do_step15
    :duration 300
    :condition (and (at start (step_pending step15)) (at start (step10_done step15)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_done step15))))
  (:durative-action do_step16
    :duration 1500
    :condition (and (at start (step_pending step16)) (at start (step32_done step16)) (at start (step33_done step16)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_done step16))))
  (:durative-action do_step17
    :duration 1800
    :condition (and (at start (step_pending step17)) (at start (step29_done step17)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_done step17))))
  (:durative-action do_step18
    :duration 2400
    :condition (and (at start (step_pending step18)) (at start (step38_done step18)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_done step18))))
  (:durative-action do_step19
    :duration 7200
    :condition (and (at start (step_pending step19)) (at start (step3_done step19)) (at start (step7_done step19)) (at start (step20_done step19)) (at start (step28_done step19)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_done step19))))
  (:durative-action do_step20
    :duration 900
    :condition (and (at start (step_pending step20)) (at start (step2_done step20)) (at start (step10_done step20)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_done step20))))
  (:durative-action do_step21
    :duration 300
    :condition (and (at start (step_pending step21)) (at start (step9_done step21)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_done step21))))
  (:durative-action do_step22
    :duration 300
    :condition (and (at start (step_pending step22)) (at start (step3_done step22)) (at start (step11_done step22)) (at start (step35_done step22)) (at start (step36_done step22)) (at start (step39_done step22)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_done step22))))
  (:durative-action do_step23
    :duration 120
    :condition (and (at start (step_pending step23)) (at start (step21_done step23)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_done step23))))
  (:durative-action do_step24
    :duration 600
    :condition (and (at start (step_pending step24)) (at start (step10_done step24)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_done step24))))
  (:durative-action do_step25
    :duration 900
    :condition (and (at start (step_pending step25)) (at start (step14_done step25)) (at start (step35_done step25)) (at start (step36_done step25)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_done step25))))
  (:durative-action do_step26
    :duration 259200
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_done step26))))
  (:durative-action do_step27
    :duration 300
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_done step27))))
  (:durative-action do_step28
    :duration 1800
    :condition (and (at start (step_pending step28)) (at start (step30_done step28)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_done step28))))
  (:durative-action do_step29
    :duration 600
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_done step29))))
  (:durative-action do_step30
    :duration 600
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_done step30))))
  (:durative-action do_step31
    :duration 14400
    :condition (and (at start (step_pending step31)) (at start (step10_done step31)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step31_done step31))))
  (:durative-action do_step32
    :duration 1200
    :condition (at start (step_pending step32))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step32_done step32))))
  (:durative-action do_step33
    :duration 3600
    :condition (and (at start (step_pending step33)) (at start (step15_done step33)) (at start (step32_done step33)) (at start (step40_done step33)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step33_done step33))))
  (:durative-action do_step34
    :duration 300
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step34_done step34))))
  (:durative-action do_step35
    :duration 1500
    :condition (and (at start (step_pending step35)) (at start (step4_done step35)) (at start (step17_done step35)) (at start (step18_done step35)) (at start (step20_done step35)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step35_done step35))))
  (:durative-action do_step36
    :duration 1200
    :condition (and (at start (step_pending step36)) (at start (step30_done step36)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step36_done step36))))
  (:durative-action do_step37
    :duration 900
    :condition (and (at start (step_pending step37)) (at start (step10_done step37)) (at start (step27_done step37)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step37_done step37))))
  (:durative-action do_step38
    :duration 600
    :condition (at start (step_pending step38))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step38_done step38))))
  (:durative-action do_step39
    :duration 600
    :condition (and (at start (step_pending step39)) (at start (step24_done step39)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step39_done step39))))
  (:durative-action do_step40
    :duration 900
    :condition (and (at start (step_pending step40)) (at start (step24_done step40)) (at start (step34_done step40)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step40_done step40))))
)