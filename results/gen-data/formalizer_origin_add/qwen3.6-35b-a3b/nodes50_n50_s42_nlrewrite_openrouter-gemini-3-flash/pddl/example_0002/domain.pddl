(define (domain wonton_wrappers)
  (:requirements :typing :durative-actions)
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
    (step41_done) (step42_done) (step43_done) (step44_done) (step45_done)
    (step46_done) (step47_done) (step48_done) (step49_done) (step50_done))
  (:durative-action step1
    :duration 1800
    :condition (and (at start (step_pending step1)) (at start (step_done step14)) (at start (step_done step18)) (at start (step_done step36)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (step1_done))))
  (:durative-action step2
    :duration 120
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (step2_done))))
  (:durative-action step3
    :duration 60
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (step3_done))))
  (:durative-action step4
    :duration 240
    :condition (and (at start (step_pending step4)) (at start (step_done step13)) (at start (step_done step39)) (at start (step_done step50)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (step4_done))))
  (:durative-action step5
    :duration 300
    :condition (and (at start (step_pending step5)) (at start (step_done step6)) (at start (step_done step30)) (at start (step_done step32)) (at start (step_done step39)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (step5_done))))
  (:durative-action step6
    :duration 480
    :condition (and (at start (step_pending step6)) (at start (step_done step33)) (at start (step_done step46)) (at start (step_done step48)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (step6_done))))
  (:durative-action step7
    :duration 60
    :condition (and (at start (step_pending step7)) (at start (step_done step15)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (step7_done))))
  (:durative-action step8
    :duration 300
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (step8_done))))
  (:durative-action step9
    :duration 600
    :condition (and (at start (step_pending step9)) (at start (step_done step10)) (at start (step_done step14)) (at start (step_done step21)) (at start (step_done step42)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (step9_done))))
  (:durative-action step10
    :duration 120
    :condition (and (at start (step_pending step10)) (at start (step_done step8)) (at start (step_done step30)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (step10_done))))
  (:durative-action step11
    :duration 120
    :condition (and (at start (step_pending step11)) (at start (step_done step30)) (at start (step_done step34)) (at start (step_done step50)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (step11_done))))
  (:durative-action step12
    :duration 60
    :condition (and (at start (step_pending step12)) (at start (step_done step28)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (step12_done))))
  (:durative-action step13
    :duration 60
    :condition (and (at start (step_pending step13)) (at start (step_done step18)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (step13_done))))
  (:durative-action step14
    :duration 60
    :condition (and (at start (step_pending step14)) (at start (step_done step2)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (step14_done))))
  (:durative-action step15
    :duration 120
    :condition (and (at start (step_pending step15)) (at start (step_done step13)) (at start (step_done step34)) (at start (step_done step43)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (step15_done))))
  (:durative-action step16
    :duration 180
    :condition (and (at start (step_pending step16)) (at start (step_done step22)) (at start (step_done step36)) (at start (step_done step38)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (step16_done))))
  (:durative-action step17
    :duration 300
    :condition (and (at start (step_pending step17)) (at start (step_done step37)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (step17_done))))
  (:durative-action step18
    :duration 120
    :condition (and (at start (step_pending step18)) (at start (step_done step28)) (at start (step_done step49)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (step18_done))))
  (:durative-action step19
    :duration 180
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (step19_done))))
  (:durative-action step20
    :duration 600
    :condition (and (at start (step_pending step20)) (at start (step_done step1)) (at start (step_done step12)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (step20_done))))
  (:durative-action step21
    :duration 60
    :condition (and (at start (step_pending step21)) (at start (step_done step25)) (at start (step_done step27)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (step21_done))))
  (:durative-action step22
    :duration 120
    :condition (and (at start (step_pending step22)) (at start (step_done step3)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (step22_done))))
  (:durative-action step23
    :duration 30
    :condition (and (at start (step_pending step23)) (at start (step_done step11)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (step23_done))))
  (:durative-action step24
    :duration 120
    :condition (and (at start (step_pending step24)) (at start (step_done step31)) (at start (step_done step39)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (step24_done))))
  (:durative-action step25
    :duration 60
    :condition (and (at start (step_pending step25)) (at start (step_done step7)) (at start (step_done step11)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (step25_done))))
  (:durative-action step26
    :duration 60
    :condition (and (at start (step_pending step26)) (at start (step_done step47)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (step26_done))))
  (:durative-action step27
    :duration 300
    :condition (and (at start (step_pending step27)) (at start (step_done step4)) (at start (step_done step37)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (step27_done))))
  (:durative-action step28
    :duration 60
    :condition (and (at start (step_pending step28)) (at start (step_done step8)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (step28_done))))
  (:durative-action step29
    :duration 180
    :condition (and (at start (step_pending step29)) (at start (step_done step3)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (step29_done))))
  (:durative-action step30
    :duration 300
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (step30_done))))
  (:durative-action step31
    :duration 40
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (step31_done))))
  (:durative-action step32
    :duration 60
    :condition (and (at start (step_pending step32)) (at start (step_done step17)) (at start (step_done step34)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (step32_done))))
  (:durative-action step33
    :duration 120
    :condition (and (at start (step_pending step33)) (at start (step_done step10)) (at start (step_done step19)) (at start (step_done step23)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (step33_done))))
  (:durative-action step34
    :duration 120
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (step34_done))))
  (:durative-action step35
    :duration 30
    :condition (and (at start (step_pending step35)) (at start (step_done step22)) (at start (step_done step34)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (step35_done))))
  (:durative-action step36
    :duration 180
    :condition (and (at start (step_pending step36)) (at start (step_done step49)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (step36_done))))
  (:durative-action step37
    :duration 300
    :condition (and (at start (step_pending step37)) (at start (step_done step34)) (at start (step_done step50)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (step37_done))))
  (:durative-action step38
    :duration 900
    :condition (and (at start (step_pending step38)) (at start (step_done step11)) (at start (step_done step31)) (at start (step_done step45)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (step38_done))))
  (:durative-action step39
    :duration 360
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (step39_done))))
  (:durative-action step40
    :duration 240
    :condition (and (at start (step_pending step40)) (at start (step_done step36)) (at start (step_done step37)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (step40_done))))
  (:durative-action step41
    :duration 120
    :condition (and (at start (step_pending step41)) (at start (step_done step20)) (at start (step_done step50)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (step41_done))))
  (:durative-action step42
    :duration 120
    :condition (at start (step_pending step42))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (step42_done))))
  (:durative-action step43
    :duration 180
    :condition (and (at start (step_pending step43)) (at start (step_done step39)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (step43_done))))
  (:durative-action step44
    :duration 60
    :condition (and (at start (step_pending step44)) (at start (step_done step2)) (at start (step_done step10)) (at start (step_done step13)) (at start (step_done step34)) (at start (step_done step40)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (step44_done))))
  (:durative-action step45
    :duration 120
    :condition (and (at start (step_pending step45)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (step45_done))))
  (:durative-action step46
    :duration 30
    :condition (and (at start (step_pending step46)) (at start (step_done step33)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (step46_done))))
  (:durative-action step47
    :duration 120
    :condition (and (at start (step_pending step47)) (at start (step_done step36)) (at start (step_done step37)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (step47_done))))
  (:durative-action step48
    :duration 60
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (step48_done))))
  (:durative-action step49
    :duration 60
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (step49_done))))
  (:durative-action step50
    :duration 30
    :condition (at start (step_pending step50))
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (step50_done)))))