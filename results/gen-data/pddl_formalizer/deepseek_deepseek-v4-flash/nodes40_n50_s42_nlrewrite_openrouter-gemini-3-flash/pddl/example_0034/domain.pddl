(define (domain sizing_jeans)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
  )
  (:durative-action step_1
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (step_done step16)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)))
  )
  (:durative-action step_2
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step2)) (at start (step_done step18)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)))
  )
  (:durative-action step_3
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step3)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step12)) (at start (step_done step15)) (at start (step_done step25)) (at start (step_done step40)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)))
  )
  (:durative-action step_4
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step4)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)))
  )
  (:durative-action step_5
    :duration (= ?duration 300)
    :condition (at start (step_pending step5))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)))
  )
  (:durative-action step_6
    :duration (= ?duration 60)
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)))
  )
  (:durative-action step_7
    :duration (= ?duration 45)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)))
  )
  (:durative-action step_8
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step8)) (at start (step_done step13)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)))
  )
  (:durative-action step_9
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step7)) (at start (step_done step11)) (at start (step_done step18)) (at start (step_done step20)) (at start (step_done step24)) (at start (step_done step27)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step39)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)))
  )
  (:durative-action step_10
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step10)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step12)) (at start (step_done step15)) (at start (step_done step27)) (at start (step_done step40)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)))
  )
  (:durative-action step_11
    :duration (= ?duration 15)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)))
  )
  (:durative-action step_12
    :duration (= ?duration 20)
    :condition (and (at start (step_pending step12)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step15)) (at start (step_done step40)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)))
  )
  (:durative-action step_13
    :duration (= ?duration 300)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)))
  )
  (:durative-action step_14
    :duration (= ?duration 60)
    :condition (at start (step_pending step14))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)))
  )
  (:durative-action step_15
    :duration (= ?duration 120)
    :condition (at start (step_pending step15))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)))
  )
  (:durative-action step_16
    :duration (= ?duration 180)
    :condition (at start (step_pending step16))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)))
  )
  (:durative-action step_17
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step17)) (at start (step_done step3)) (at start (step_done step5)) (at start (step_done step6)) (at start (step_done step12)) (at start (step_done step15)) (at start (step_done step25)) (at start (step_done step40)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)))
  )
  (:durative-action step_18
    :duration (= ?duration 30)
    :condition (at start (step_pending step18))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)))
  )
  (:durative-action step_19
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step19)) (at start (step_done step33)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)))
  )
  (:durative-action step_20
    :duration (= ?duration 10)
    :condition (at start (step_pending step20))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)))
  )
  (:durative-action step_21
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step21)) (at start (step_done step6)) (at start (step_done step7)) (at start (step_done step13)) (at start (step_done step15)) (at start (step_done step18)) (at start (step_done step22)) (at start (step_done step24)) (at start (step_done step28)) (at start (step_done step33)) (at start (step_done step34)) (at start (step_done step37)) (at start (step_done step38)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)))
  )
  (:durative-action step_22
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step22)) (at start (step_done step6)) (at start (step_done step7)) (at start (step_done step13)) (at start (step_done step15)) (at start (step_done step18)) (at start (step_done step24)) (at start (step_done step33)) (at start (step_done step34)) (at start (step_done step37)) (at start (step_done step38)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)))
  )
  (:durative-action step_23
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step23)) (at start (step_done step7)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)))
  )
  (:durative-action step_24
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step24)) (at start (step_done step7)) (at start (step_done step18)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)))
  )
  (:durative-action step_25
    :duration (= ?duration 15)
    :condition (at start (step_pending step25))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)))
  )
  (:durative-action step_26
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step26)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step7)) (at start (step_done step9)) (at start (step_done step11)) (at start (step_done step18)) (at start (step_done step20)) (at start (step_done step24)) (at start (step_done step27)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step32)) (at start (step_done step34)) (at start (step_done step39)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)))
  )
  (:durative-action step_27
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step27)) (at start (step_done step5)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)))
  )
  (:durative-action step_28
    :duration (= ?duration 45)
    :condition (and (at start (step_pending step28)) (at start (step_done step7)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)))
  )
  (:durative-action step_29
    :duration (= ?duration 120)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)))
  )
  (:durative-action step_30
    :duration (= ?duration 10)
    :condition (and (at start (step_pending step30)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step27)) (at start (step_done step29)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)))
  )
  (:durative-action step_31
    :duration (= ?duration 1200)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)))
  )
  (:durative-action step_32
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step32)) (at start (step_done step4)) (at start (step_done step5)) (at start (step_done step7)) (at start (step_done step9)) (at start (step_done step11)) (at start (step_done step18)) (at start (step_done step20)) (at start (step_done step24)) (at start (step_done step27)) (at start (step_done step28)) (at start (step_done step29)) (at start (step_done step30)) (at start (step_done step34)) (at start (step_done step39)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)))
  )
  (:durative-action step_33
    :duration (= ?duration 120)
    :condition (at start (step_pending step33))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)))
  )
  (:durative-action step_34
    :duration (= ?duration 60)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)))
  )
  (:durative-action step_35
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step35)) (at start (step_done step4)) (at start (step_done step14)) (at start (step_done step29)) (at start (step_done step31)) (at start (step_done step36)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)))
  )
  (:durative-action step_36
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step36)) (at start (step_done step14)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)))
  )
  (:durative-action step_37
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step37)) (at start (step_done step6)) (at start (step_done step7)) (at start (step_done step15)) (at start (step_done step18)) (at start (step_done step24)) (at start (step_done step33)) (at start (step_done step34)) (at start (step_done step38)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)))
  )
  (:durative-action step_38
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step38)) (at start (step_done step34)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)))
  )
  (:durative-action step_39
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step39)) (at start (step_done step18)) (at start (step_done step20)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)))
  )
  (:durative-action step_40
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step40)) (at start (step_done step5)) (at start (step_done step15)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)))
  )
)
